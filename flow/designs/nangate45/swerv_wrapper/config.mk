export DESIGN_NAME = swerv_wrapper
export PLATFORM    = nangate45

export SYNTH_HIERARCHICAL = 1
export RTLMP_FLOW = True
#
# RTL_MP Settings
export RTLMP_MAX_INST = 30000
export RTLMP_MIN_INST = 5000
export RTLMP_MAX_MACRO = 12
export RTLMP_MIN_MACRO = 4 

export VERILOG_FILES = ./designs/src/swerv/swerv_wrapper.sv2v.v \
                       ./designs/$(PLATFORM)/swerv/macros.v
export SDC_FILE      = ./designs/$(PLATFORM)/swerv/constraint.sdc

export ADDITIONAL_LEFS = $(sort $(wildcard ./designs/$(PLATFORM)/swerv/*.lef))
export ADDITIONAL_LIBS = $(sort $(wildcard ./designs/$(PLATFORM)/swerv/*.lib))

export DIE_AREA    = 0 0 1100 1000
export CORE_AREA   = 10.07 11.2 1090 990 

export HAS_IO_CONSTRAINTS = 1
export PLACE_PINS_ARGS = -exclude left:* -exclude right:* -exclude top:* -exclude bottom:0-200 -exclude bottom:1000-1100

export MACRO_PLACE_HALO = 10 10
export MACRO_PLACE_CHANNEL = 20 20

export PLACE_DENSITY_LB_ADDON = 0.10
export TNS_END_PERCENT        = 100
