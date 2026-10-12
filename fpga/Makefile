# FPGA flow (ULX3S-85F): yosys+slang -> nextpnr-ecp5 -> ecppack -> openFPGALoader
#
#   make            build build/fpga_top.bit
#   make prog       program the board (volatile)
#   make flash      program the board's flash
#
# Shared design = every .sv under ../src/design/ (same files the ASIC flow
# and cocotb use).  Include root is ../src.
#
# Variables:
#   BOARD  boards/$(BOARD).lpf and the nextpnr device      (default ulx3s)
#   OSS    path of an oss-cad-suite install               (default below)

BOARD ?= ulx3s
OSS   ?= $(HOME)/Projects/fpga/oss-cad-suite
export PATH := $(OSS)/bin:$(PATH)

# Board table: device flag and package for nextpnr, openFPGALoader board name
ifeq ($(BOARD),ulx3s)
  NEXTPNR_ARGS := --85k --package CABGA381
  LOADER_BOARD := ulx3s
  CLK_MHZ      := 25
else
  $(error unknown BOARD '$(BOARD)': add it to the board table in fpga/Makefile)
endif

HERE   := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
SRC    := $(abspath $(HERE)../src)
TOP    := fpga_top
BUILD  := build
DESIGN := $(shell find $(SRC)/design -name '*.sv' | sort)
LPF    := boards/$(BOARD).lpf

default: $(BUILD)/$(TOP).bit

$(BUILD):
	mkdir -p $@

$(BUILD)/$(TOP).json: fpga_top.sv $(DESIGN) | $(BUILD)
	yosys -q -l $(BUILD)/yosys.log -p \
	  'plugin -i slang; read_slang -DFPGA -I $(SRC) --top $(TOP) $(DESIGN) fpga_top.sv; synth_ecp5 -top $(TOP) -json $@'

$(BUILD)/$(TOP).config: $(BUILD)/$(TOP).json $(LPF)
	nextpnr-ecp5 $(NEXTPNR_ARGS) --json $< --lpf $(LPF) \
	  --textcfg $@ --freq $(CLK_MHZ) -l $(BUILD)/nextpnr.log

$(BUILD)/$(TOP).bit: $(BUILD)/$(TOP).config
	ecppack --compress $< $@

prog: $(BUILD)/$(TOP).bit
	openFPGALoader -b $(LOADER_BOARD) $<

flash: $(BUILD)/$(TOP).bit
	openFPGALoader -b $(LOADER_BOARD) -f $<

clean:
	rm -rf $(BUILD)

.PHONY: default prog flash clean
