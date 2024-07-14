#include "top_level_cal.h"
#include "top_level.h"

/* Storage class 'PageSwitching' */
top_level_cal_type top_level_cal_impl = {
  /* Computed Parameter: Digitalinput_P1_Size
   * Referenced by: '<S1>/Digital input'
   */
  { 1.0, 1.0 },

  /* Expression: id
   * Referenced by: '<S1>/Digital input'
   */
  1.0,

  /* Computed Parameter: Digitalinput_P2_Size
   * Referenced by: '<S1>/Digital input'
   */
  { 1.0, 3.0 },

  /* Expression: chan
   * Referenced by: '<S1>/Digital input'
   */
  { 1.0, 2.0, 3.0 },

  /* Computed Parameter: Digitalinput_P3_Size
   * Referenced by: '<S1>/Digital input'
   */
  { 1.0, 1.0 },

  /* Expression: vectorizeOutput
   * Referenced by: '<S1>/Digital input'
   */
  0.0,

  /* Computed Parameter: Digitalinput_P4_Size
   * Referenced by: '<S1>/Digital input'
   */
  { 1.0, 1.0 },

  /* Expression: ts
   * Referenced by: '<S1>/Digital input'
   */
  0.001,

  /* Expression: 15
   * Referenced by: '<Root>/Constant3'
   */
  15.0,

  /* Computed Parameter: QAE3_P1_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: fpgaFrequency
   * Referenced by: '<S1>/QAE (3)'
   */
  7.5E+7,

  /* Computed Parameter: QAE3_P2_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: id
   * Referenced by: '<S1>/QAE (3)'
   */
  1.0,

  /* Computed Parameter: QAE3_P3_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: chan
   * Referenced by: '<S1>/QAE (3)'
   */
  1.0,

  /* Computed Parameter: QAE3_P4_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sampleTime
   * Referenced by: '<S1>/QAE (3)'
   */
  0.001,

  /* Computed Parameter: QAE3_P5_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: numOfSlots
   * Referenced by: '<S1>/QAE (3)'
   */
  16.0,

  /* Computed Parameter: QAE3_P6_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: initPos
   * Referenced by: '<S1>/QAE (3)'
   */
  0.0,

  /* Computed Parameter: QAE3_P7_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigAswitchOn
   * Referenced by: '<S1>/QAE (3)'
   */
  180.0,

  /* Computed Parameter: QAE3_P8_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigBswitchOff
   * Referenced by: '<S1>/QAE (3)'
   */
  90.0,

  /* Computed Parameter: QAE3_P9_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigBswitchOn
   * Referenced by: '<S1>/QAE (3)'
   */
  270.0,

  /* Computed Parameter: QAE3_P10_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: showOutputPosition
   * Referenced by: '<S1>/QAE (3)'
   */
  1.0,

  /* Computed Parameter: QAE3_P11_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: showOutputSlotAngle
   * Referenced by: '<S1>/QAE (3)'
   */
  1.0,

  /* Computed Parameter: QAE3_P12_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigAdismissEn
   * Referenced by: '<S1>/QAE (3)'
   */
  0.0,

  /* Computed Parameter: QAE3_P13_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigAdismissSingle
   * Referenced by: '<S1>/QAE (3)'
   */
  1.0,

  /* Computed Parameter: QAE3_P14_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigAdismissHigh
   * Referenced by: '<S1>/QAE (3)'
   */
  1.0,

  /* Computed Parameter: QAE3_P15_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigBdismissEn
   * Referenced by: '<S1>/QAE (3)'
   */
  0.0,

  /* Computed Parameter: QAE3_P16_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigBdismissSingle
   * Referenced by: '<S1>/QAE (3)'
   */
  1.0,

  /* Computed Parameter: QAE3_P17_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: sigBdismissHigh
   * Referenced by: '<S1>/QAE (3)'
   */
  1.0,

  /* Computed Parameter: QAE3_P18_Size
   * Referenced by: '<S1>/QAE (3)'
   */
  { 1.0, 1.0 },

  /* Expression: isDmaEnabled
   * Referenced by: '<S1>/QAE (3)'
   */
  0.0
};

top_level_cal_type *top_level_cal = &top_level_cal_impl;
