/*
 * top_level.cpp
 *
 * Sponsored Third Party Support License -- for use only to support
 * products interfaced to MathWorks software under terms specified in your
 * company's restricted use license agreement.
 *
 * Code generation for model "top_level".
 *
 * Model version              : 1.8
 * Simulink Coder version : 24.1 (R2024a) 19-Nov-2023
 * C++ source code generated on : Sat Jul 13 16:36:33 2024
 *
 * Target selection: speedgoat.tlc
 * Note: GRT includes extra infrastructure and instrumentation for prototyping
 * Embedded hardware selection: Intel->x86-64 (Linux 64)
 * Code generation objectives: Unspecified
 * Validation result: Not run
 */

#include "top_level.h"
#include "top_level_cal.h"
#include "top_level_private.h"
#include <cstring>

extern "C"
{

#include "rt_nonfinite.h"

}

/* Block signals (default storage) */
B_top_level_T top_level_B;

/* Block states (default storage) */
DW_top_level_T top_level_DW;

/* Real-time model */
RT_MODEL_top_level_T top_level_M_ = RT_MODEL_top_level_T();
RT_MODEL_top_level_T *const top_level_M = &top_level_M_;

/* Model step function */
void top_level_step(void)
{
  /* S-Function (sg_fpga_di_sf_a2): '<S1>/Digital input' */

  /* Level2 S-Function Block: '<S1>/Digital input' (sg_fpga_di_sf_a2) */
  {
    SimStruct *rts = top_level_M->childSfunctions[0];
    sfcnOutputs(rts,0);
  }

  /* Constant: '<Root>/Constant3' */
  top_level_B.Constant3 = top_level_cal->Constant3_Value;

  /* S-Function (sg_fpga_qae_sf_3): '<S1>/QAE (3)' */

  /* Level2 S-Function Block: '<S1>/QAE (3)' (sg_fpga_qae_sf_3) */
  {
    SimStruct *rts = top_level_M->childSfunctions[1];
    sfcnOutputs(rts,0);
  }

  /* user code (Output function Trailer) */
  {
    if (0) {
      io3xx_sgdma_feedSequential(1);
    }
  }

  /* Update absolute time for base rate */
  /* The "clockTick0" counts the number of times the code of this task has
   * been executed. The absolute time is the multiplication of "clockTick0"
   * and "Timing.stepSize0". Size of "clockTick0" ensures timer will not
   * overflow during the application lifespan selected.
   * Timer of this task consists of two 32 bit unsigned integers.
   * The two integers represent the low bits Timing.clockTick0 and the high bits
   * Timing.clockTickH0. When the low bit overflows to 0, the high bits increment.
   */
  if (!(++top_level_M->Timing.clockTick0)) {
    ++top_level_M->Timing.clockTickH0;
  }

  top_level_M->Timing.t[0] = top_level_M->Timing.clockTick0 *
    top_level_M->Timing.stepSize0 + top_level_M->Timing.clockTickH0 *
    top_level_M->Timing.stepSize0 * 4294967296.0;
}

/* Model initialize function */
void top_level_initialize(void)
{
  /* Registration code */

  /* initialize non-finites */
  rt_InitInfAndNaN(sizeof(real_T));
  rtsiSetSolverName(&top_level_M->solverInfo,"FixedStepDiscrete");
  top_level_M->solverInfoPtr = (&top_level_M->solverInfo);

  /* Initialize timing info */
  {
    int_T *mdlTsMap = top_level_M->Timing.sampleTimeTaskIDArray;
    mdlTsMap[0] = 0;

    /* polyspace +2 MISRA2012:D4.1 [Justified:Low] "top_level_M points to
       static memory which is guaranteed to be non-NULL" */
    top_level_M->Timing.sampleTimeTaskIDPtr = (&mdlTsMap[0]);
    top_level_M->Timing.sampleTimes = (&top_level_M->Timing.sampleTimesArray[0]);
    top_level_M->Timing.offsetTimes = (&top_level_M->Timing.offsetTimesArray[0]);

    /* task periods */
    top_level_M->Timing.sampleTimes[0] = (0.001);

    /* task offsets */
    top_level_M->Timing.offsetTimes[0] = (0.0);
  }

  rtmSetTPtr(top_level_M, &top_level_M->Timing.tArray[0]);

  {
    int_T *mdlSampleHits = top_level_M->Timing.sampleHitArray;
    mdlSampleHits[0] = 1;
    top_level_M->Timing.sampleHits = (&mdlSampleHits[0]);
  }

  rtmSetTFinal(top_level_M, -1);
  top_level_M->Timing.stepSize0 = 0.001;
  top_level_M->solverInfoPtr = (&top_level_M->solverInfo);
  top_level_M->Timing.stepSize = (0.001);
  rtsiSetFixedStepSize(&top_level_M->solverInfo, 0.001);
  rtsiSetSolverMode(&top_level_M->solverInfo, SOLVER_MODE_SINGLETASKING);

  /* block I/O */
  (void) std::memset((static_cast<void *>(&top_level_B)), 0,
                     sizeof(B_top_level_T));

  /* states (dwork) */
  (void) std::memset(static_cast<void *>(&top_level_DW), 0,
                     sizeof(DW_top_level_T));

  /* child S-Function registration */
  {
    RTWSfcnInfo *sfcnInfo = &top_level_M->NonInlinedSFcns.sfcnInfo;
    top_level_M->sfcnInfo = (sfcnInfo);
    rtssSetErrorStatusPtr(sfcnInfo, (&rtmGetErrorStatus(top_level_M)));
    top_level_M->Sizes.numSampTimes = (1);
    rtssSetNumRootSampTimesPtr(sfcnInfo, &top_level_M->Sizes.numSampTimes);
    top_level_M->NonInlinedSFcns.taskTimePtrs[0] = (&rtmGetTPtr(top_level_M)[0]);
    rtssSetTPtrPtr(sfcnInfo,top_level_M->NonInlinedSFcns.taskTimePtrs);
    rtssSetTStartPtr(sfcnInfo, &rtmGetTStart(top_level_M));
    rtssSetTFinalPtr(sfcnInfo, &rtmGetTFinal(top_level_M));
    rtssSetTimeOfLastOutputPtr(sfcnInfo, &rtmGetTimeOfLastOutput(top_level_M));
    rtssSetStepSizePtr(sfcnInfo, &top_level_M->Timing.stepSize);
    rtssSetStopRequestedPtr(sfcnInfo, &rtmGetStopRequested(top_level_M));
    rtssSetDerivCacheNeedsResetPtr(sfcnInfo, &top_level_M->derivCacheNeedsReset);
    rtssSetZCCacheNeedsResetPtr(sfcnInfo, &top_level_M->zCCacheNeedsReset);
    rtssSetContTimeOutputInconsistentWithStateAtMajorStepPtr(sfcnInfo,
      &top_level_M->CTOutputIncnstWithState);
    rtssSetSampleHitsPtr(sfcnInfo, &top_level_M->Timing.sampleHits);
    rtssSetPerTaskSampleHitsPtr(sfcnInfo, &top_level_M->Timing.perTaskSampleHits);
    rtssSetSimModePtr(sfcnInfo, &top_level_M->simMode);
    rtssSetSolverInfoPtr(sfcnInfo, &top_level_M->solverInfoPtr);
  }

  top_level_M->Sizes.numSFcns = (2);

  /* register each child */
  {
    (void) std::memset(static_cast<void *>
                       (&top_level_M->NonInlinedSFcns.childSFunctions[0]), 0,
                       2*sizeof(SimStruct));
    top_level_M->childSfunctions =
      (&top_level_M->NonInlinedSFcns.childSFunctionPtrs[0]);
    top_level_M->childSfunctions[0] =
      (&top_level_M->NonInlinedSFcns.childSFunctions[0]);
    top_level_M->childSfunctions[1] =
      (&top_level_M->NonInlinedSFcns.childSFunctions[1]);

    /* Level2 S-Function Block: top_level/<S1>/Digital input (sg_fpga_di_sf_a2) */
    {
      SimStruct *rts = top_level_M->childSfunctions[0];

      /* timing info */
      time_T *sfcnPeriod = top_level_M->NonInlinedSFcns.Sfcn0.sfcnPeriod;
      time_T *sfcnOffset = top_level_M->NonInlinedSFcns.Sfcn0.sfcnOffset;
      int_T *sfcnTsMap = top_level_M->NonInlinedSFcns.Sfcn0.sfcnTsMap;
      (void) std::memset(static_cast<void*>(sfcnPeriod), 0,
                         sizeof(time_T)*1);
      (void) std::memset(static_cast<void*>(sfcnOffset), 0,
                         sizeof(time_T)*1);
      ssSetSampleTimePtr(rts, &sfcnPeriod[0]);
      ssSetOffsetTimePtr(rts, &sfcnOffset[0]);
      ssSetSampleTimeTaskIDPtr(rts, sfcnTsMap);

      {
        ssSetBlkInfo2Ptr(rts, &top_level_M->NonInlinedSFcns.blkInfo2[0]);
      }

      _ssSetBlkInfo2PortInfo2Ptr(rts,
        &top_level_M->NonInlinedSFcns.inputOutputPortInfo2[0]);

      /* Set up the mdlInfo pointer */
      ssSetRTWSfcnInfo(rts, top_level_M->sfcnInfo);

      /* Allocate memory of model methods 2 */
      {
        ssSetModelMethods2(rts, &top_level_M->NonInlinedSFcns.methods2[0]);
      }

      /* Allocate memory of model methods 3 */
      {
        ssSetModelMethods3(rts, &top_level_M->NonInlinedSFcns.methods3[0]);
      }

      /* Allocate memory of model methods 4 */
      {
        ssSetModelMethods4(rts, &top_level_M->NonInlinedSFcns.methods4[0]);
      }

      /* Allocate memory for states auxilliary information */
      {
        ssSetStatesInfo2(rts, &top_level_M->NonInlinedSFcns.statesInfo2[0]);
        ssSetPeriodicStatesInfo(rts,
          &top_level_M->NonInlinedSFcns.periodicStatesInfo[0]);
      }

      /* outputs */
      {
        ssSetPortInfoForOutputs(rts,
          &top_level_M->NonInlinedSFcns.Sfcn0.outputPortInfo[0]);
        ssSetPortInfoForOutputs(rts,
          &top_level_M->NonInlinedSFcns.Sfcn0.outputPortInfo[0]);
        _ssSetNumOutputPorts(rts, 3);
        _ssSetPortInfo2ForOutputUnits(rts,
          &top_level_M->NonInlinedSFcns.Sfcn0.outputPortUnits[0]);
        ssSetOutputPortUnit(rts, 0, 0);
        ssSetOutputPortUnit(rts, 1, 0);
        ssSetOutputPortUnit(rts, 2, 0);
        _ssSetPortInfo2ForOutputCoSimAttribute(rts,
          &top_level_M->NonInlinedSFcns.Sfcn0.outputPortCoSimAttribute[0]);
        ssSetOutputPortIsContinuousQuantity(rts, 0, 0);
        ssSetOutputPortIsContinuousQuantity(rts, 1, 0);
        ssSetOutputPortIsContinuousQuantity(rts, 2, 0);

        /* port 0 */
        {
          _ssSetOutputPortNumDimensions(rts, 0, 1);
          ssSetOutputPortWidthAsInt(rts, 0, 1);
          ssSetOutputPortSignal(rts, 0, ((real_T *) &top_level_B.Digitalinput_o1));
        }

        /* port 1 */
        {
          _ssSetOutputPortNumDimensions(rts, 1, 1);
          ssSetOutputPortWidthAsInt(rts, 1, 1);
          ssSetOutputPortSignal(rts, 1, ((real_T *) &top_level_B.Digitalinput_o2));
        }

        /* port 2 */
        {
          _ssSetOutputPortNumDimensions(rts, 2, 1);
          ssSetOutputPortWidthAsInt(rts, 2, 1);
          ssSetOutputPortSignal(rts, 2, ((real_T *) &top_level_B.Digitalinput_o3));
        }
      }

      /* path info */
      ssSetModelName(rts, "Digital input");
      ssSetPath(rts, "top_level/Controller/Digital input");
      ssSetRTModel(rts,top_level_M);
      ssSetParentSS(rts, (NULL));
      ssSetRootSS(rts, rts);
      ssSetVersion(rts, SIMSTRUCT_VERSION_LEVEL2);

      /* parameters */
      {
        mxArray **sfcnParams = (mxArray **)
          &top_level_M->NonInlinedSFcns.Sfcn0.params;
        ssSetSFcnParamsCount(rts, 4);
        ssSetSFcnParamsPtr(rts, &sfcnParams[0]);
        ssSetSFcnParam(rts, 0, (mxArray*)top_level_cal->Digitalinput_P1_Size);
        ssSetSFcnParam(rts, 1, (mxArray*)top_level_cal->Digitalinput_P2_Size);
        ssSetSFcnParam(rts, 2, (mxArray*)top_level_cal->Digitalinput_P3_Size);
        ssSetSFcnParam(rts, 3, (mxArray*)top_level_cal->Digitalinput_P4_Size);
      }

      /* work vectors */
      ssSetPWork(rts, (void **) &top_level_DW.Digitalinput_PWORK[0]);

      {
        struct _ssDWorkRecord *dWorkRecord = (struct _ssDWorkRecord *)
          &top_level_M->NonInlinedSFcns.Sfcn0.dWork;
        struct _ssDWorkAuxRecord *dWorkAuxRecord = (struct _ssDWorkAuxRecord *)
          &top_level_M->NonInlinedSFcns.Sfcn0.dWorkAux;
        ssSetSFcnDWork(rts, dWorkRecord);
        ssSetSFcnDWorkAux(rts, dWorkAuxRecord);
        ssSetNumDWorkAsInt(rts, 1);

        /* PWORK */
        ssSetDWorkWidthAsInt(rts, 0, 2);
        ssSetDWorkDataType(rts, 0,SS_POINTER);
        ssSetDWorkComplexSignal(rts, 0, 0);
        ssSetDWork(rts, 0, &top_level_DW.Digitalinput_PWORK[0]);
      }

      /* registration */
      sg_fpga_di_sf_a2(rts);
      sfcnInitializeSizes(rts);
      sfcnInitializeSampleTimes(rts);

      /* adjust sample time */
      ssSetSampleTime(rts, 0, 0.001);
      ssSetOffsetTime(rts, 0, 0.0);
      sfcnTsMap[0] = 0;

      /* set compiled values of dynamic vector attributes */
      ssSetNumNonsampledZCsAsInt(rts, 0);

      /* Update connectivity flags for each port */
      _ssSetOutputPortConnected(rts, 0, 1);
      _ssSetOutputPortConnected(rts, 1, 1);
      _ssSetOutputPortConnected(rts, 2, 1);
      _ssSetOutputPortBeingMerged(rts, 0, 0);
      _ssSetOutputPortBeingMerged(rts, 1, 0);
      _ssSetOutputPortBeingMerged(rts, 2, 0);

      /* Update the BufferDstPort flags for each input port */
    }

    /* Level2 S-Function Block: top_level/<S1>/QAE (3) (sg_fpga_qae_sf_3) */
    {
      SimStruct *rts = top_level_M->childSfunctions[1];

      /* timing info */
      time_T *sfcnPeriod = top_level_M->NonInlinedSFcns.Sfcn1.sfcnPeriod;
      time_T *sfcnOffset = top_level_M->NonInlinedSFcns.Sfcn1.sfcnOffset;
      int_T *sfcnTsMap = top_level_M->NonInlinedSFcns.Sfcn1.sfcnTsMap;
      (void) std::memset(static_cast<void*>(sfcnPeriod), 0,
                         sizeof(time_T)*1);
      (void) std::memset(static_cast<void*>(sfcnOffset), 0,
                         sizeof(time_T)*1);
      ssSetSampleTimePtr(rts, &sfcnPeriod[0]);
      ssSetOffsetTimePtr(rts, &sfcnOffset[0]);
      ssSetSampleTimeTaskIDPtr(rts, sfcnTsMap);

      {
        ssSetBlkInfo2Ptr(rts, &top_level_M->NonInlinedSFcns.blkInfo2[1]);
      }

      _ssSetBlkInfo2PortInfo2Ptr(rts,
        &top_level_M->NonInlinedSFcns.inputOutputPortInfo2[1]);

      /* Set up the mdlInfo pointer */
      ssSetRTWSfcnInfo(rts, top_level_M->sfcnInfo);

      /* Allocate memory of model methods 2 */
      {
        ssSetModelMethods2(rts, &top_level_M->NonInlinedSFcns.methods2[1]);
      }

      /* Allocate memory of model methods 3 */
      {
        ssSetModelMethods3(rts, &top_level_M->NonInlinedSFcns.methods3[1]);
      }

      /* Allocate memory of model methods 4 */
      {
        ssSetModelMethods4(rts, &top_level_M->NonInlinedSFcns.methods4[1]);
      }

      /* Allocate memory for states auxilliary information */
      {
        ssSetStatesInfo2(rts, &top_level_M->NonInlinedSFcns.statesInfo2[1]);
        ssSetPeriodicStatesInfo(rts,
          &top_level_M->NonInlinedSFcns.periodicStatesInfo[1]);
      }

      /* inputs */
      {
        _ssSetNumInputPorts(rts, 1);
        ssSetPortInfoForInputs(rts,
          &top_level_M->NonInlinedSFcns.Sfcn1.inputPortInfo[0]);
        ssSetPortInfoForInputs(rts,
          &top_level_M->NonInlinedSFcns.Sfcn1.inputPortInfo[0]);
        _ssSetPortInfo2ForInputUnits(rts,
          &top_level_M->NonInlinedSFcns.Sfcn1.inputPortUnits[0]);
        ssSetInputPortUnit(rts, 0, 0);
        _ssSetPortInfo2ForInputCoSimAttribute(rts,
          &top_level_M->NonInlinedSFcns.Sfcn1.inputPortCoSimAttribute[0]);
        ssSetInputPortIsContinuousQuantity(rts, 0, 0);

        /* port 0 */
        {
          ssSetInputPortRequiredContiguous(rts, 0, 1);
          ssSetInputPortSignal(rts, 0, &top_level_B.Constant3);
          _ssSetInputPortNumDimensions(rts, 0, 1);
          ssSetInputPortWidthAsInt(rts, 0, 1);
        }
      }

      /* outputs */
      {
        ssSetPortInfoForOutputs(rts,
          &top_level_M->NonInlinedSFcns.Sfcn1.outputPortInfo[0]);
        ssSetPortInfoForOutputs(rts,
          &top_level_M->NonInlinedSFcns.Sfcn1.outputPortInfo[0]);
        _ssSetNumOutputPorts(rts, 2);
        _ssSetPortInfo2ForOutputUnits(rts,
          &top_level_M->NonInlinedSFcns.Sfcn1.outputPortUnits[0]);
        ssSetOutputPortUnit(rts, 0, 0);
        ssSetOutputPortUnit(rts, 1, 0);
        _ssSetPortInfo2ForOutputCoSimAttribute(rts,
          &top_level_M->NonInlinedSFcns.Sfcn1.outputPortCoSimAttribute[0]);
        ssSetOutputPortIsContinuousQuantity(rts, 0, 0);
        ssSetOutputPortIsContinuousQuantity(rts, 1, 0);

        /* port 0 */
        {
          _ssSetOutputPortNumDimensions(rts, 0, 1);
          ssSetOutputPortWidthAsInt(rts, 0, 1);
          ssSetOutputPortSignal(rts, 0, ((real_T *) &top_level_B.QAE3_o1));
        }

        /* port 1 */
        {
          _ssSetOutputPortNumDimensions(rts, 1, 1);
          ssSetOutputPortWidthAsInt(rts, 1, 1);
          ssSetOutputPortSignal(rts, 1, ((real_T *) &top_level_B.QAE3_o2));
        }
      }

      /* path info */
      ssSetModelName(rts, "QAE (3)");
      ssSetPath(rts, "top_level/Controller/QAE (3)");
      ssSetRTModel(rts,top_level_M);
      ssSetParentSS(rts, (NULL));
      ssSetRootSS(rts, rts);
      ssSetVersion(rts, SIMSTRUCT_VERSION_LEVEL2);

      /* parameters */
      {
        mxArray **sfcnParams = (mxArray **)
          &top_level_M->NonInlinedSFcns.Sfcn1.params;
        ssSetSFcnParamsCount(rts, 18);
        ssSetSFcnParamsPtr(rts, &sfcnParams[0]);
        ssSetSFcnParam(rts, 0, (mxArray*)top_level_cal->QAE3_P1_Size);
        ssSetSFcnParam(rts, 1, (mxArray*)top_level_cal->QAE3_P2_Size);
        ssSetSFcnParam(rts, 2, (mxArray*)top_level_cal->QAE3_P3_Size);
        ssSetSFcnParam(rts, 3, (mxArray*)top_level_cal->QAE3_P4_Size);
        ssSetSFcnParam(rts, 4, (mxArray*)top_level_cal->QAE3_P5_Size);
        ssSetSFcnParam(rts, 5, (mxArray*)top_level_cal->QAE3_P6_Size);
        ssSetSFcnParam(rts, 6, (mxArray*)top_level_cal->QAE3_P7_Size);
        ssSetSFcnParam(rts, 7, (mxArray*)top_level_cal->QAE3_P8_Size);
        ssSetSFcnParam(rts, 8, (mxArray*)top_level_cal->QAE3_P9_Size);
        ssSetSFcnParam(rts, 9, (mxArray*)top_level_cal->QAE3_P10_Size);
        ssSetSFcnParam(rts, 10, (mxArray*)top_level_cal->QAE3_P11_Size);
        ssSetSFcnParam(rts, 11, (mxArray*)top_level_cal->QAE3_P12_Size);
        ssSetSFcnParam(rts, 12, (mxArray*)top_level_cal->QAE3_P13_Size);
        ssSetSFcnParam(rts, 13, (mxArray*)top_level_cal->QAE3_P14_Size);
        ssSetSFcnParam(rts, 14, (mxArray*)top_level_cal->QAE3_P15_Size);
        ssSetSFcnParam(rts, 15, (mxArray*)top_level_cal->QAE3_P16_Size);
        ssSetSFcnParam(rts, 16, (mxArray*)top_level_cal->QAE3_P17_Size);
        ssSetSFcnParam(rts, 17, (mxArray*)top_level_cal->QAE3_P18_Size);
      }

      /* work vectors */
      ssSetRWork(rts, (real_T *) &top_level_DW.QAE3_RWORK);
      ssSetPWork(rts, (void **) &top_level_DW.QAE3_PWORK[0]);

      {
        struct _ssDWorkRecord *dWorkRecord = (struct _ssDWorkRecord *)
          &top_level_M->NonInlinedSFcns.Sfcn1.dWork;
        struct _ssDWorkAuxRecord *dWorkAuxRecord = (struct _ssDWorkAuxRecord *)
          &top_level_M->NonInlinedSFcns.Sfcn1.dWorkAux;
        ssSetSFcnDWork(rts, dWorkRecord);
        ssSetSFcnDWorkAux(rts, dWorkAuxRecord);
        ssSetNumDWorkAsInt(rts, 2);

        /* RWORK */
        ssSetDWorkWidthAsInt(rts, 0, 1);
        ssSetDWorkDataType(rts, 0,SS_DOUBLE);
        ssSetDWorkComplexSignal(rts, 0, 0);
        ssSetDWork(rts, 0, &top_level_DW.QAE3_RWORK);

        /* PWORK */
        ssSetDWorkWidthAsInt(rts, 1, 5);
        ssSetDWorkDataType(rts, 1,SS_POINTER);
        ssSetDWorkComplexSignal(rts, 1, 0);
        ssSetDWork(rts, 1, &top_level_DW.QAE3_PWORK[0]);
      }

      /* registration */
      sg_fpga_qae_sf_3(rts);
      sfcnInitializeSizes(rts);
      sfcnInitializeSampleTimes(rts);

      /* adjust sample time */
      ssSetSampleTime(rts, 0, 0.001);
      ssSetOffsetTime(rts, 0, 0.0);
      sfcnTsMap[0] = 0;

      /* set compiled values of dynamic vector attributes */
      ssSetNumNonsampledZCsAsInt(rts, 0);

      /* Update connectivity flags for each port */
      _ssSetInputPortConnected(rts, 0, 1);
      _ssSetOutputPortConnected(rts, 0, 0);
      _ssSetOutputPortConnected(rts, 1, 0);
      _ssSetOutputPortBeingMerged(rts, 0, 0);
      _ssSetOutputPortBeingMerged(rts, 1, 0);

      /* Update the BufferDstPort flags for each input port */
      ssSetInputPortBufferDstPort(rts, 0, -1);
    }
  }

  /* Start for S-Function (sg_fpga_di_sf_a2): '<S1>/Digital input' */
  /* Level2 S-Function Block: '<S1>/Digital input' (sg_fpga_di_sf_a2) */
  {
    SimStruct *rts = top_level_M->childSfunctions[0];
    sfcnStart(rts);
    if (ssGetErrorStatus(rts) != (NULL))
      return;
  }

  /* Start for Constant: '<Root>/Constant3' */
  top_level_B.Constant3 = top_level_cal->Constant3_Value;

  /* Start for S-Function (sg_fpga_qae_sf_3): '<S1>/QAE (3)' */
  /* Level2 S-Function Block: '<S1>/QAE (3)' (sg_fpga_qae_sf_3) */
  {
    SimStruct *rts = top_level_M->childSfunctions[1];
    sfcnStart(rts);
    if (ssGetErrorStatus(rts) != (NULL))
      return;
  }
}

/* Model terminate function */
void top_level_terminate(void)
{
  /* Terminate for S-Function (sg_fpga_di_sf_a2): '<S1>/Digital input' */
  /* Level2 S-Function Block: '<S1>/Digital input' (sg_fpga_di_sf_a2) */
  {
    SimStruct *rts = top_level_M->childSfunctions[0];
    sfcnTerminate(rts);
  }

  /* Terminate for S-Function (sg_fpga_qae_sf_3): '<S1>/QAE (3)' */
  /* Level2 S-Function Block: '<S1>/QAE (3)' (sg_fpga_qae_sf_3) */
  {
    SimStruct *rts = top_level_M->childSfunctions[1];
    sfcnTerminate(rts);
  }

  /* user code (Terminate function Trailer) */
  {
    uintptr_t bar2Addr;
    volatile io3xx_pull *ptrIO31x_pull;
    volatile io3xx_2x *ptrio3xx_2x;
    uint16_t moduleArchitecture;
    sg_fpga_io3xxModuleIdT moduleId;
    static char msg[500];

    // Get module IDs (PIC info)
    sg_fpga_IO3xxGetModuleId(39750, &moduleId);
    moduleArchitecture = moduleId.moduleArchitecture;
    SG_PRINTF(DEBUG, "moduleArchitecture %d\n",moduleArchitecture);
    if (moduleArchitecture == TEWS_TXMC) {
      // Get pointer to io31x_pull
      bar2Addr = (uintptr_t)io3xxGetAddressSgLib((int32_t)1, SG_FPGA_IO3XX_BAR2);
      if (bar2Addr == 0) {
        sprintf(msg, "%s", pSgErrorStr);
        rtmSetErrorStatus(top_level_M, msg);
        SG_PRINTF(ERROR,msg);
        return;
      }

      ptrIO31x_pull = (io3xx_pull *)((uintptr_t)bar2Addr + IO3xx_PULL_BASE);

      // Disable pull resistors
      ptrIO31x_pull->enable = 0x0;     // disable
    }

    // Pull down and disable DIOs
    if ((1 == 2) || (1 == 3)) {
      bar2Addr = (uintptr_t)io3xxGetAddressSgLib((int32_t)1, SG_FPGA_IO3XX_BAR2);
      if (bar2Addr == 0) {
        sprintf(msg, "%s", pSgErrorStr);
        rtmSetErrorStatus(top_level_M, msg);
        SG_PRINTF(ERROR,msg);
        return;
      }

      ptrio3xx_2x = (io3xx_2x *)((uintptr_t)bar2Addr +IO3xx_2x_BASE);
      ptrio3xx_2x->pull = 0xffffffff;  // pull down
      ptrio3xx_2x->dir = 0x0;          // input
      ptrio3xx_2x->update = 0x1;
      sg_wait_s(SG_FPGA_WAIT_TIME_100us);
      ptrio3xx_2x->update = 0x0;
      sg_wait_s(SG_FPGA_WAIT_TIME_1ms);

#if DEBUGGING

      // For debugging output port register of IO-Expander
      sg_wait_s(SG_FPGA_WAIT_TIME_100ms);
      SG_PRINTF(INFO, "last configuration from mdl start\n");
      SG_PRINTF(INFO, "rxData of Expander1: 0x%X\n",
                ptrio3xx_2x->rxDataExpander1);
      SG_PRINTF(INFO, "rxData of Expander2: 0x%X\n",
                ptrio3xx_2x->rxDataExpander2);
      SG_PRINTF(INFO, "rxData of Expander3: 0x%X\n",
                ptrio3xx_2x->rxDataExpander3);
      SG_PRINTF(INFO, "rxData of Expander4: 0x%X\n",
                ptrio3xx_2x->rxDataExpander4);

#endif

    } else if (1 == 4) {
      IO3xx_24_terminate(1);
    }

    freeFPGAModuleSgLib((uint32_t)1);
  }
}
