# User config
set ::env(DESIGN_NAME) i2s_tx

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

# Fill this
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10.0"

# Design Constraints
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 100 100"
set ::env(PL_TARGET_DENSITY) 0.75

# Standard Cell Library
set ::env(PDK) "sky130A"
set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"
