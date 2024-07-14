#include "rte_top_level_parameters.h"
#include "top_level.h"
#include "top_level_cal.h"

extern top_level_cal_type top_level_cal_impl;
namespace slrealtime
{
  /* Description of SEGMENTS */
  SegmentVector segmentInfo {
    { (void*)&top_level_cal_impl, (void**)&top_level_cal, sizeof
      (top_level_cal_type), 2 }
  };

  SegmentVector &getSegmentVector(void)
  {
    return segmentInfo;
  }
}                                      // slrealtime
