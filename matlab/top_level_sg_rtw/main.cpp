/* Main generated for Simulink Real-Time model top_level */
#include <ModelInfo.hpp>
#include <utilities.hpp>
#include "rte_top_level_parameters.h"
#include "top_level.h"

/* Task wrapper function definitions */
void top_level_Task1(void)
{ 
    top_level_step();
} 
/* Task descriptors */
slrealtime::TaskInfo task_1( 0u, std::bind(top_level_Task1), slrealtime::TaskInfo::PERIODIC, 0.001, 0, 40);

/* Executable base address for XCP */
#ifdef __linux__
extern char __executable_start;
static uintptr_t const base_address = reinterpret_cast<uintptr_t>(&__executable_start);
#else
/* Set 0 as placeholder, to be parsed later from /proc filesystem */
static uintptr_t const base_address = 0;
#endif

/* Model descriptor */
slrealtime::ModelInfo top_level_Info =
{
    "top_level",
    top_level_initialize,
    top_level_terminate,
    []()->char const*& { return top_level_M->errorStatus; },
    []()->unsigned char& { return top_level_M->Timing.stopRequestedFlag; },
    { task_1 },
    slrealtime::getSegmentVector()
};

int main(int argc, char *argv[]) {
    slrealtime::BaseAddress::set(base_address);
    return slrealtime::runModel(argc, argv, top_level_Info);
}
