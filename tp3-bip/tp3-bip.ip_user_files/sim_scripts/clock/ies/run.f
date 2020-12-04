-makelib ies_lib/xpm -sv \
  "E:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "E:/Xilinx/Vivado/2020.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../tp3-bip.srcs/sources_1/ip/clock/clock_clk_wiz.v" \
  "../../../../tp3-bip.srcs/sources_1/ip/clock/clock.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

