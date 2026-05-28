#!/usr/bin/env python3

# Copyright (c) 2025 Leo Moser <leo.moser@pm.me>
# SPDX-License-Identifier: Apache-2.0

import os
import sys
import yaml
import shutil
import argparse

from typing import List, Type, Tuple

from librelane.common import Path
from librelane.config import Variable
from librelane.state import DesignFormat, State
from librelane.flows.sequential import SequentialFlow
from librelane.steps import (
    KLayout,
    Checker,
    Magic,
    Misc,
    Yosys,
    Verilator,
    OpenROAD,
    Odb,
    Step,
    ViewsUpdate,
    MetricsUpdate,
    StepError,
    StepException,
)
from librelane.steps.klayout import KLayoutStep
from librelane.flows.flow import FlowError


class PadringFlow(SequentialFlow):

    Steps: List[Type[Step]] = [
        Verilator.Lint,
        Checker.LintTimingConstructs,
        Checker.LintErrors,
        Checker.LintWarnings,
        Yosys.JsonHeader,
        Yosys.Synthesis,
        Checker.YosysUnmappedCells,
        Checker.YosysSynthChecks,
        Checker.NetlistAssignStatements,
        OpenROAD.CheckSDCFiles,
        OpenROAD.CheckMacroInstances,
        OpenROAD.STAPrePNR,
        OpenROAD.Floorplan,
        OpenROAD.DumpRCValues,
        Odb.SetPowerConnections,
        OpenROAD.PadRing,
        Odb.CheckMacroAntennaProperties,
        Odb.ManualMacroPlacement,
        KLayout.StreamOut,
        KLayout.SealRing,
    ]


def main(configs, pdk, pdk_root, scl, pad):
    flow_cfg = {}
    for config in configs:
        flow_cfg.update(yaml.safe_load(open(config)))

    print(os.path.dirname(configs[-1]))
    print(os.path.abspath('.'))
    
    print(flow_cfg)
    
    # Run flow
    flow = PadringFlow(
        flow_cfg,
        design_dir=os.path.join(os.path.abspath('.'), "librelane"),
        pdk_root=pdk_root,
        pdk=pdk,
        scl=scl,
        pad=pad,
    )

    try:
        # Start the flow
        flow.start()
    except FlowError as e:
        print(f"Error: \n{e}")
        sys.exit(1)

    print(f"Run successfully completed.")


if __name__ == "__main__":

    parser = argparse.ArgumentParser()
    parser.add_argument("configs", nargs="+", help="LibreLane config")
    parser.add_argument("--pdk", default=None, help="PDK")
    parser.add_argument("--pdk-root", default=None, help="PDK root")
    parser.add_argument("--manual-pdk", action="store_true")
    parser.add_argument("--scl", default=None, help="SCL")
    parser.add_argument("--pad", default=None, help="PAD")

    args = parser.parse_args()
    
    assert (args.manual_pdk), "--manual-pdk must be set"

    main(args.configs, args.pdk, args.pdk_root, args.scl, args.pad)
