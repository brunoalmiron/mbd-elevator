###########################################################################
## Makefile generated for component 'top_level'. 
## 
## Makefile     : top_level.mk
## Generated on : Sat Jul 13 16:36:38 2024
## Final product: $(START_DIR)/top_level_sg_rtw/top_level
## Product type : executable
## 
###########################################################################

###########################################################################
## MACROS
###########################################################################

# Macro Descriptions:
# PRODUCT_NAME            Name of the system to build
# MAKEFILE                Name of this makefile

PRODUCT_NAME              = top_level
MAKEFILE                  = top_level.mk
MATLAB_ROOT               = C:/PROGRA~1/MATLAB/R2024a
MATLAB_BIN                = C:/PROGRA~1/MATLAB/R2024a/bin
MATLAB_ARCH_BIN           = $(MATLAB_BIN)/win64
START_DIR                 = C:/Users/rodri/git/bruno/mbd-elevator/matlab
SOLVER                    = 
SOLVER_OBJ                = 
CLASSIC_INTERFACE         = 0
TGT_FCN_LIB               = ISO_C++
MODEL_HAS_DYNAMICALLY_LOADED_SFCNS = 0
RELATIVE_PATH_TO_ANCHOR   = ../..
C_STANDARD_OPTS           = 
CPP_STANDARD_OPTS         = 

###########################################################################
## TOOLCHAIN SPECIFICATIONS
###########################################################################

# Toolchain Name:          Simulink Real-Time Toolchain
# Supported Version(s):    
# ToolchainInfo Version:   2024a
# Specification Revision:  1.0
# 
#-------------------------------------------
# Macros assumed to be defined elsewhere
#-------------------------------------------

# SLREALTIME_QNX_SP_ROOT
# SLREALTIME_QNX_VERSION

#-----------
# MACROS
#-----------

QCC_TARGET             = gcc_ntox86_64

TOOLCHAIN_SRCS = 
TOOLCHAIN_INCS = 
TOOLCHAIN_LIBS = -L$(MATLAB_ROOT)/toolbox/slrealtime/target/win64/target/lib -ltraceparser -lpps -lslrealtime_kernel -lslrealtime_platform -lslrealtime_rtps -lsocket -lboost_system -lboost_log -lpci -lopenblas -lpcap

#------------------------
# BUILD TOOL COMMANDS
#------------------------

# C Compiler: QNX C Compiler
CC = qcc

# Linker: QCC Linker
LD = q++

# C++ Compiler: QNX C++ Compiler
CPP = q++

# C++ Linker: QCC C++ Linker
CPP_LD = q++

# Archiver: QNX Archiver
AR = ntox86_64-gcc-ar

# Builder: GMAKE Utility
MAKE = make


#-------------------------
# Directives/Utilities
#-------------------------

CDEBUG              = -g -O0 -finstrument-functions
C_OUTPUT_FLAG       = -o
LDDEBUG             = -g
OUTPUT_FLAG         = -o
CPPDEBUG            = -g -O0 -finstrument-functions
CPP_OUTPUT_FLAG     = -o
CPPLDDEBUG          = -g
OUTPUT_FLAG         = -o
ARDEBUG             =
STATICLIB_OUTPUT_FLAG =
RM                  = @del /F
ECHO                = @echo
MV                  = @move
RUN                 =

#--------------------------------------
# "Faster Runs" Build Configuration
#--------------------------------------

ARFLAGS              = ruvs
CFLAGS               = -c -V$(QCC_TARGET) -g \
                       -O2 -fwrapv
CPPFLAGS             = -c -V$(QCC_TARGET) -g -std=gnu++14 -stdlib=libstdc++ \
                       -O2 -fwrapv
CPP_LDFLAGS          = -V$(QCC_TARGET) -g -std=gnu++14 -stdlib=libstdc++
CPP_SHAREDLIB_LDFLAGS  = -V$(QCC_TARGET) -shared -Wl,--no-undefined -g
LDFLAGS              = -V$(QCC_TARGET) -g -std=gnu++14 -stdlib=libstdc++
MAKE_FLAGS           = -f $(MAKEFILE)
SHAREDLIB_LDFLAGS    = -V$(QCC_TARGET) -shared -Wl,--no-undefined -g



###########################################################################
## OUTPUT INFO
###########################################################################

PRODUCT = $(START_DIR)/top_level_sg_rtw/top_level
PRODUCT_TYPE = "executable"
BUILD_TYPE = "Top-Level Standalone Executable"

###########################################################################
## INCLUDE PATHS
###########################################################################

INCLUDES_BUILDINFO = -I$(START_DIR) -I$(START_DIR)/top_level_sg_rtw -I$(MATLAB_ROOT)/toolbox/slrealtime/simulink/blocks/dist/include -I$(MATLAB_ROOT)/toolbox/slrealtime/target/kernel/dist/include -I$(MATLAB_ROOT)/extern/include -I$(MATLAB_ROOT)/simulink/include -I$(MATLAB_ROOT)/rtw/c/src -I$(MATLAB_ROOT)/rtw/c/src/ext_mode/common -IC:/PROGRA~3/SPEEDG~1/SPEEDG~1/R2024a/98F176~1.1/SG_BLO~1/common/libsg -IC:/PROGRA~3/SPEEDG~1/SPEEDG~1/R2024a/98F176~1.1 -IC:/PROGRA~3/SPEEDG~1/SPEEDG~1/R2024a/98F176~1.1/SG_BLO~1/fpga/setup/include -I$(START_DIR)/top_level_sg_rtw/instrumented

INCLUDES = $(INCLUDES_BUILDINFO)

###########################################################################
## DEFINES
###########################################################################

DEFINES_ = -DSIMULINK_REAL_TIME -D_QNX_SOURCE
DEFINES_BUILD_ARGS = -DCLASSIC_INTERFACE=0 -DALLOCATIONFCN=0 -DEXT_MODE=1 -DMAT_FILE=0 -DONESTEPFCN=1 -DTERMFCN=1 -DMULTI_INSTANCE_CODE=0 -DINTEGER_CODE=0 -DMT=0
DEFINES_CUSTOM = 
DEFINES_OPTS = -DTID01EQ=0
DEFINES_STANDARD = -DMODEL=top_level -DNUMST=1 -DNCSTATES=0 -DHAVESTDIO -DRT -DUSE_RTMODEL

DEFINES = $(DEFINES_) $(DEFINES_BUILD_ARGS) $(DEFINES_CUSTOM) $(DEFINES_OPTS) $(DEFINES_STANDARD)

###########################################################################
## SOURCE FILES
###########################################################################

SRCS = $(MATLAB_ROOT)/rtw/c/src/rt_matrx.c $(MATLAB_ROOT)/rtw/c/src/rt_printf.c $(START_DIR)/top_level_sg_rtw/rtGetInf.cpp $(START_DIR)/top_level_sg_rtw/rtGetNaN.cpp $(START_DIR)/top_level_sg_rtw/rt_nonfinite.cpp $(START_DIR)/top_level_sg_rtw/slrealtime_datatype_ground.cpp $(START_DIR)/top_level_sg_rtw/top_level.cpp $(START_DIR)/top_level_sg_rtw/top_level_cal.cpp $(START_DIR)/top_level_sg_rtw/rte_top_level_parameters.cpp $(START_DIR)/top_level_sg_rtw/main.cpp C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/dio/sg_fpga_di_sf_a2.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/quadrature/sg_fpga_qae_sf_3.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io30x_setup_util.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io3xx_scatter_gather_dma.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io39x_setup_util.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io31x_io32x_setup_util.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io33x_setup_util.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_setup_util.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io36x_setup_util.c C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io3xx_util.c $(START_DIR)/top_level_sg_rtw/sg_early_init.cpp host_timer_x86.c slrealtime_code_profiling_utility_functions.cpp

ALL_SRCS = $(SRCS)

###########################################################################
## OBJECTS
###########################################################################

OBJS = rt_matrx.o rt_printf.o rtGetInf.o rtGetNaN.o rt_nonfinite.o slrealtime_datatype_ground.o top_level.o top_level_cal.o rte_top_level_parameters.o main.o sg_fpga_di_sf_a2.o sg_fpga_qae_sf_3.o sg_fpga_io30x_setup_util.o sg_fpga_io3xx_scatter_gather_dma.o sg_fpga_io39x_setup_util.o sg_fpga_io31x_io32x_setup_util.o sg_fpga_io33x_setup_util.o sg_fpga_setup_util.o sg_fpga_io36x_setup_util.o sg_fpga_io3xx_util.o sg_early_init.o host_timer_x86.o slrealtime_code_profiling_utility_functions.o

ALL_OBJS = $(OBJS)

###########################################################################
## PREBUILT OBJECT FILES
###########################################################################

PREBUILT_OBJS = 

###########################################################################
## LIBRARIES
###########################################################################

LIBS = 

###########################################################################
## SYSTEM LIBRARIES
###########################################################################

SYSTEM_LIBS = 

###########################################################################
## ADDITIONAL TOOLCHAIN FLAGS
###########################################################################

#---------------
# C Compiler
#---------------

CFLAGS_BASIC = $(DEFINES) $(INCLUDES)

CFLAGS += $(CFLAGS_BASIC)

#-----------------
# C++ Compiler
#-----------------

CPPFLAGS_BASIC = $(DEFINES) $(INCLUDES)

CPPFLAGS += $(CPPFLAGS_BASIC)

#---------------
# C++ Linker
#---------------

CPP_LDFLAGS_ = -lsg_qnx710_x86_64 -LC:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/common/libsg

CPP_LDFLAGS += $(CPP_LDFLAGS_)

#------------------------------
# C++ Shared Library Linker
#------------------------------

CPP_SHAREDLIB_LDFLAGS_ = -lsg_qnx710_x86_64 -LC:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/common/libsg

CPP_SHAREDLIB_LDFLAGS += $(CPP_SHAREDLIB_LDFLAGS_)

#-----------
# Linker
#-----------

LDFLAGS_ = -lsg_qnx710_x86_64 -LC:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/common/libsg

LDFLAGS += $(LDFLAGS_)

#--------------------------
# Shared Library Linker
#--------------------------

SHAREDLIB_LDFLAGS_ = -lsg_qnx710_x86_64 -LC:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/common/libsg

SHAREDLIB_LDFLAGS += $(SHAREDLIB_LDFLAGS_)

###########################################################################
## INLINED COMMANDS
###########################################################################

###########################################################################
## PHONY TARGETS
###########################################################################

.PHONY : all build buildobj clean info prebuild


all : build
	@echo "### Successfully generated all binary outputs."


build : prebuild $(PRODUCT)


buildobj : prebuild $(OBJS) $(PREBUILT_OBJS)
	@echo "### Successfully generated all binary outputs."


prebuild : 


###########################################################################
## FINAL TARGET
###########################################################################

#-------------------------------------------
# Create a standalone executable            
#-------------------------------------------

$(PRODUCT) : $(OBJS) $(PREBUILT_OBJS)
	@echo "### Creating standalone executable "$(PRODUCT)" ..."
	$(CPP_LD) $(CPP_LDFLAGS) -o $(PRODUCT) $(OBJS) $(SYSTEM_LIBS) $(TOOLCHAIN_LIBS)
	@echo "### Created: $(PRODUCT)"


###########################################################################
## INTERMEDIATE TARGETS
###########################################################################

#---------------------
# SOURCE-TO-OBJECT
#---------------------

%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : $(RELATIVE_PATH_TO_ANCHOR)/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/dio/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/dio/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/quadrature/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/quadrature/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : $(START_DIR)/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : $(START_DIR)/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : $(START_DIR)/top_level_sg_rtw/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : $(START_DIR)/top_level_sg_rtw/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : $(MATLAB_ROOT)/rtw/c/src/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : $(MATLAB_ROOT)/rtw/c/src/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : $(MATLAB_ROOT)/simulink/src/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : $(MATLAB_ROOT)/simulink/src/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : $(MATLAB_ROOT)/toolbox/simulink/blocks/src/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : ../%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : ../%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : $(MATLAB_ROOT)/toolbox/coder/profile/src/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : $(MATLAB_ROOT)/toolbox/coder/profile/src/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


%.o : $(START_DIR)/top_level_sg_rtw/instrumented/%.c
	$(CC) $(CFLAGS) -o $@ $<


%.o : $(START_DIR)/top_level_sg_rtw/instrumented/%.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


rt_matrx.o : $(MATLAB_ROOT)/rtw/c/src/rt_matrx.c
	$(CC) $(CFLAGS) -o $@ $<


rt_printf.o : $(MATLAB_ROOT)/rtw/c/src/rt_printf.c
	$(CC) $(CFLAGS) -o $@ $<


rtGetInf.o : $(START_DIR)/top_level_sg_rtw/rtGetInf.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


rtGetNaN.o : $(START_DIR)/top_level_sg_rtw/rtGetNaN.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


rt_nonfinite.o : $(START_DIR)/top_level_sg_rtw/rt_nonfinite.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


slrealtime_datatype_ground.o : $(START_DIR)/top_level_sg_rtw/slrealtime_datatype_ground.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


top_level.o : $(START_DIR)/top_level_sg_rtw/top_level.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


top_level_cal.o : $(START_DIR)/top_level_sg_rtw/top_level_cal.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


rte_top_level_parameters.o : $(START_DIR)/top_level_sg_rtw/rte_top_level_parameters.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


main.o : $(START_DIR)/top_level_sg_rtw/main.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


sg_fpga_di_sf_a2.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/dio/sg_fpga_di_sf_a2.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_qae_sf_3.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/quadrature/sg_fpga_qae_sf_3.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_io30x_setup_util.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io30x_setup_util.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_io3xx_scatter_gather_dma.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io3xx_scatter_gather_dma.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_io39x_setup_util.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io39x_setup_util.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_io31x_io32x_setup_util.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io31x_io32x_setup_util.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_io33x_setup_util.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io33x_setup_util.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_setup_util.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_setup_util.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_io36x_setup_util.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io36x_setup_util.c
	$(CC) $(CFLAGS) -o $@ $<


sg_fpga_io3xx_util.o : C:/ProgramData/Speedgoat/speedgoatlib/R2024a/9.8.1/sg_blocks/fpga/setup/src/sg_fpga_io3xx_util.c
	$(CC) $(CFLAGS) -o $@ $<


sg_early_init.o : $(START_DIR)/top_level_sg_rtw/sg_early_init.cpp
	$(CPP) $(CPPFLAGS) -o $@ $<


###########################################################################
## DEPENDENCIES
###########################################################################

$(ALL_OBJS) : rtw_proj.tmw $(MAKEFILE)


###########################################################################
## MISCELLANEOUS TARGETS
###########################################################################

info : 
	@echo "### PRODUCT = $(PRODUCT)"
	@echo "### PRODUCT_TYPE = $(PRODUCT_TYPE)"
	@echo "### BUILD_TYPE = $(BUILD_TYPE)"
	@echo "### INCLUDES = $(INCLUDES)"
	@echo "### DEFINES = $(DEFINES)"
	@echo "### ALL_SRCS = $(ALL_SRCS)"
	@echo "### ALL_OBJS = $(ALL_OBJS)"
	@echo "### LIBS = $(LIBS)"
	@echo "### MODELREF_LIBS = $(MODELREF_LIBS)"
	@echo "### SYSTEM_LIBS = $(SYSTEM_LIBS)"
	@echo "### TOOLCHAIN_LIBS = $(TOOLCHAIN_LIBS)"
	@echo "### CFLAGS = $(CFLAGS)"
	@echo "### LDFLAGS = $(LDFLAGS)"
	@echo "### SHAREDLIB_LDFLAGS = $(SHAREDLIB_LDFLAGS)"
	@echo "### CPPFLAGS = $(CPPFLAGS)"
	@echo "### CPP_LDFLAGS = $(CPP_LDFLAGS)"
	@echo "### CPP_SHAREDLIB_LDFLAGS = $(CPP_SHAREDLIB_LDFLAGS)"
	@echo "### ARFLAGS = $(ARFLAGS)"
	@echo "### MAKE_FLAGS = $(MAKE_FLAGS)"


clean : 
	$(ECHO) "### Deleting all derived files ..."
	$(RM) $(subst /,\,$(PRODUCT))
	$(RM) $(subst /,\,$(ALL_OBJS))
	$(ECHO) "### Deleted all derived files."


