/*
 * Sponsored Third Party Support License -- for use only to support
 * products interfaced to MathWorks software under terms specified in your
 * company's restricted use license agreement.
 *
 * File: controller_base.h
 *
 * Code generated for Simulink model 'controller_base'.
 *
 * Model version                  : 1.8
 * Simulink Coder version         : 24.1 (R2024a) 19-Nov-2023
 * C/C++ source code generated on : Sat Jul 13 15:09:24 2024
 *
 * Target selection: ert.tlc
 * Embedded hardware selection: Texas Instruments->C2000
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#ifndef controller_base_h_
#define controller_base_h_
#ifndef controller_base_COMMON_INCLUDES_
#define controller_base_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#include "c2000BoardSupport.h"
#include "F2806x_Device.h"
#include "F2806x_Gpio.h"
#endif                                 /* controller_base_COMMON_INCLUDES_ */

#include <stddef.h>
#include "controller_base_types.h"
#include <string.h>
#include "MW_target_hardware_resources.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

/* Block signals (default storage) */
typedef struct {
  real32_T DigitalInput2[3];           /* '<Root>/Digital Input2' */
  real32_T VectorConcatenate1[3];      /* '<Root>/Vector Concatenate1' */
} B_controller_base_T;

/* Block states (default storage) for system '<Root>' */
typedef struct {
  int32_T DigitalOutput1_FRAC_LEN;     /* '<Root>/Digital Output1' */
} DW_controller_base_T;

/* Real-time Model Data Structure */
struct tag_RTM_controller_base_T {
  const char_T * volatile errorStatus;
};

/* Block signals (default storage) */
extern B_controller_base_T controller_base_B;

/* Block states (default storage) */
extern DW_controller_base_T controller_base_DW;

/* Model entry point functions */
extern void controller_base_initialize(void);
extern void controller_base_step(void);
extern void controller_base_terminate(void);

/* Real-time Model object */
extern RT_MODEL_controller_base_T *const controller_base_M;
extern volatile boolean_T stopRequested;
extern volatile boolean_T runModel;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'controller_base'
 */
#endif                                 /* controller_base_h_ */

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
