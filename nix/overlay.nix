new: old: {

  magic = old.magic.overrideAttrs (finalAttrs: previousAttrs: {
    version = "8.3.554";
  });

  cocotb = old.cocotb.overrideAttrs (finalAttrs: previousAttrs: {
    version = "2.0.0";
  });

}
