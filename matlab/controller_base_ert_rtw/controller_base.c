/*
 * Sponsored Third Party Support License -- for use only to support
 * products interfaced to MathWorks software under terms specified in your
 * company's restricted use license agreement.
 *
 * File: controller_base.c
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

#include "controller_base.h"
#include <string.h>

/* Block signals (default storage) */
B_controller_base_T controller_base_B;

/* Block states (default storage) */
DW_controller_base_T controller_base_DW;

/* Real-time model */
static RT_MODEL_controller_base_T controller_base_M_;
RT_MODEL_controller_base_T *const controller_base_M = &controller_base_M_;

/* Model step function */
void controller_base_step(void)
{
  /* S-Function (c280xgpio_di): '<Root>/Digital Input2' */
  {
    controller_base_B.DigitalInput2[0] = GpioDataRegs.GPADAT.bit.GPIO19;
    controller_base_B.DigitalInput2[1] = GpioDataRegs.GPADAT.bit.GPIO20;
    controller_base_B.DigitalInput2[2] = GpioDataRegs.GPADAT.bit.GPIO21;
  }

  /* SignalConversion generated from: '<Root>/Vector Concatenate1' incorporates:
   *  Concatenate: '<Root>/Vector Concatenate1'
   */
  controller_base_B.VectorConcatenate1[0] = controller_base_B.DigitalInput2[1];

  /* SignalConversion generated from: '<Root>/Vector Concatenate1' incorporates:
   *  Concatenate: '<Root>/Vector Concatenate1'
   */
  controller_base_B.VectorConcatenate1[1] = controller_base_B.DigitalInput2[0];

  /* SignalConversion generated from: '<Root>/Vector Concatenate1' incorporates:
   *  Concatenate: '<Root>/Vector Concatenate1'
   */
  controller_base_B.VectorConcatenate1[2] = controller_base_B.DigitalInput2[2];

  /* S-Function (c280xgpio_do): '<Root>/Digital Output1' */
  {
    if (controller_base_B.VectorConcatenate1[0]) {
      GpioDataRegs.GPASET.bit.GPIO0 = 1U;
    } else {
      GpioDataRegs.GPACLEAR.bit.GPIO0 = 1U;
    }

    if (controller_base_B.VectorConcatenate1[1]) {
      GpioDataRegs.GPASET.bit.GPIO3 = 1U;
    } else {
      GpioDataRegs.GPACLEAR.bit.GPIO3 = 1U;
    }

    if (controller_base_B.VectorConcatenate1[2]) {
      GpioDataRegs.GPASET.bit.GPIO6 = 1U;
    } else {
      GpioDataRegs.GPACLEAR.bit.GPIO6 = 1U;
    }
  }
}

/* Model initialize function */
void controller_base_initialize(void)
{
  /* Registration code */

  /* initialize error status */
  rtmSetErrorStatus(controller_base_M, (NULL));

  /* block I/O */
  (void) memset(((void *) &controller_base_B), 0,
                sizeof(B_controller_base_T));

  /* states (dwork) */
  (void) memset((void *)&controller_base_DW, 0,
                sizeof(DW_controller_base_T));

  /* Start for S-Function (c280xgpio_di): '<Root>/Digital Input2' */
  EALLOW;
  GpioCtrlRegs.GPAMUX2.all &= 0xFFFFF03FU;
  GpioCtrlRegs.GPADIR.all &= 0xFFC7FFFFU;
  EDIS;

  /* Start for S-Function (c280xgpio_do): '<Root>/Digital Output1' */
  EALLOW;
  GpioCtrlRegs.GPAMUX1.all &= 0xFFFFCF3CU;
  GpioCtrlRegs.GPADIR.all |= 0x49U;
  EDIS;
}

/* Model terminate function */
void controller_base_terminate(void)
{
  /* (no terminate code required) */
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
