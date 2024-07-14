#include "top_level.h"
#include "top_level_private.h"
#include "sg_printf.h"
#include "sg_early_init.h"
#include "simstruc.h" // This is required if there are no S-function blocks in the model

static RTWSfcnInfo sgEarlyInitSfcnInfo;
struct _ssBlkInfo2 sgEarlyInitBlkInfo2 = {.rtwSfcnInfo = &sgEarlyInitSfcnInfo};

void sg_init_sfcns(void)
{
    sg_printf(sg_debug, "Initializing [EARLY INIT] S-functions\n");
    
    rtssSetErrorStatusPtr(&sgEarlyInitSfcnInfo, (&rtmGetErrorStatus(top_level_M)));
    sg_early_init_set_blkInfo2((void*)&sgEarlyInitBlkInfo2);
    
    {
        uint16_t moduleArchitecture;
        int32_t ErrCode;
        uint32_t i;
        uint32_t *bitstream = NULL;
        uint8_t *fpgacode = NULL;
        char *devname;
        sg_fpga_io3xxModuleIdT  moduleId;
        FILE *mcs;
        static char mcsBinFile[200];
        static char msg[500];

        sg_initModelRun();

        // Determine path to bitstream file
        if (sg_getModelBaseDir(mcsBinFile, sizeof(mcsBinFile))) {
            sprintf(msg, "Could not determine location of the model on the target machine.");
            rtmSetErrorStatus(top_level_M, msg);
            return;
        }
        if ((strlen(mcsBinFile) + strlen("/fpga/speedgoat_IO397_HIL.mcs") + 1) > sizeof(mcsBinFile)) {
            sprintf(msg, "Path to the bitstream (model name + bitstream name) is too long.");
            rtmSetErrorStatus(top_level_M, msg);
            return;
        }
        strcat(mcsBinFile, "/fpga/speedgoat_IO397_HIL.mcs");
        SG_PRINTF(DEBUG, "Bitstream: %s\n", mcsBinFile);

            // Read bitstream file
            if ((mcs = fopen(mcsBinFile, "r")) == NULL){
                sprintf(msg, "Bitstream file not found at %s\n", mcsBinFile);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return; 
            }
            bitstream = (uint32_t *) malloc(2192012*sizeof(uint32_t));
            fpgacode = (uint8_t *) malloc(2192012*sizeof(uint8_t));
            for(i = 0; i<2192012; i++){
                fscanf(mcs, "%d\n", &bitstream[i]);
                fpgacode[i] = bitstream[i];
            }
            fclose(mcs);

        // Get module IDs (PIC info)
        SG_PRINTF(INFO,"Getting module information.\n");
        ErrCode = (int32_t)sg_fpga_IO3xxGetModuleId(39750, &moduleId);

        if (ErrCode >= 0)
        {
            devname = moduleId.devname;
            moduleArchitecture = moduleId.moduleArchitecture;
        
            SG_PRINTF(DEBUG, "boardType: %d\n", 39750);
            SG_PRINTF(DEBUG, "ErrCode: %d\n", ErrCode);
            SG_PRINTF(DEBUG, "******************************************\n");
            SG_PRINTF(DEBUG, "moduleId->devname: %s\n", moduleId.devname);
            SG_PRINTF(DEBUG, "moduleId->vendorid: 0x%x\n", moduleId.vendorid);
            SG_PRINTF(DEBUG, "moduleId->subvendorid: 0x%x\n", moduleId.subvendorid);
            SG_PRINTF(DEBUG, "moduleId->deviceid: 0x%x\n", moduleId.deviceid);
            SG_PRINTF(DEBUG, "moduleId->subdeviceid: 0x%x\n", moduleId.subdeviceid);
            SG_PRINTF(DEBUG, "moduleId.moduleArchitecture: %d\n", moduleId.moduleArchitecture);
        }
        else
        {
            sprintf(msg, "Setup block: board type unknown.");
            rtmSetErrorStatus(top_level_M, msg);
            SG_PRINTF(ERROR,msg);
            return;
        }
        // Support for different architectures
        SG_PRINTF(INFO,"Running board specific programming file.\n");
        switch (moduleArchitecture)
        {
            case TEWS_TPMC:
                ErrCode = IO30x_programFPGA(devname, (int16_t)-1, (int16_t)-1,
                    (int32_t)1, (int32_t)1,
                    (int32_t)0, (uint32_t)2192012, bitstream,
                    &moduleId,(uint32_t)1504777593);
                break;

            case TEWS_TXMC:
                if (39750 == 324200 || 39750 == 334325 ||39750 == 336325 || 39750 == 325160)
                {
                    ErrCode = IO324_programmFPGA(devname, (int16_t)-1,
                        (int16_t)-1, (int32_t)1, (int32_t)1,
                        (int32_t)0, (uint32_t)2192012, fpgacode,
                        (uint32_t)1504777593, &moduleId, (uint32_t)85,
                        (uint32_t)0);
                }
                else // IO31x, IO32x
                {
                ErrCode = IO31x_IO32x_programmFPGA(devname, (int16_t)-1,
                    (int16_t)-1, (int32_t)1, (int32_t)1,
                    (int32_t)0, (uint32_t)2192012, fpgacode,
                    &moduleId, (uint32_t)85,(uint32_t)1504777593);
                }
                break;

            case ACROMAG_PMC:
                ErrCode = IO331_programmFPGA(devname, (int16_t)-1, (int16_t)-1,
                    (int32_t)1, (int32_t)1,
                    (uint32_t)2192012, bitstream, &moduleId);
                break;

            case ACROMAG_XMC:
                if (39750 == 332)
                {
                    ErrCode = IO332_programmFPGA(devname, (int16_t)-1,
                        (int16_t)-1, (int32_t)1, (int32_t)1,
                        (uint32_t)2192012, bitstream, (uint32_t)1504777593,
                        &moduleId);
                }
                else // IO333
                {
                    ErrCode = IO333_programmFPGA(devname, (int16_t)-1,
                        (int16_t)-1, (int32_t)1, (int32_t)1,
                        (uint32_t)2192012, bitstream, (uint32_t)1504777593,
                        &moduleId);
                }
                break;

            case TEWS_MPCIE:
                ErrCode = IO39x_programmFPGA(devname, (int16_t)-1, (int16_t)-1,
                    (int32_t)1, (int32_t)1,
                    (uint32_t)2192012, fpgacode, (uint32_t)85, &moduleId);
                break;

            case ENCLUSTRA_SOM:

                ErrCode = IO36x_programmFPGA(devname, (int16_t)-1, (int16_t)-1,
                    (int32_t)1, (int32_t)1,
                    (uint32_t)2192012, fpgacode,
                    (uint32_t)85, (uint32_t)0, &moduleId);
                break;

            case XILINX_MPSOC:
                break;

            default:
                sprintf(msg, "Setup block: module architecture incorrect.");
                rtmSetErrorStatus(top_level_M, msg);
                // Free the bitstream allocation
                SG_PRINTF(ERROR,msg);
                free(bitstream);
                free(fpgacode);
                return;
        }

        // Set board type (by now the board is registered)
        io3xxSetBoardTypeSgLib(1, 39750);

        // Free the bitstream allocation
        free(bitstream);
        free(fpgacode);

        // Handle any error states
        switch (ErrCode)
        {
            case NO_ERR:
                // Nothing to do.
                break;

            case BOARD_NOT_FOUND:
                // reason for this error can be found in the pSgErrorStr (error message from sg-lib (sg_findPciDevice))
                sprintf(msg, "%s", pSgErrorStr);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return;

            case EEPROM_ERROR:
                sprintf(msg, "Setup block %s: Error updating board EEPROM.\n", devname);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return;

            case REPROG_ERROR:
                sprintf(msg, "Setup block %s: Error writing new bitstream to FPGA.\n", devname);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return;

            case FLASH_ERROR:
                sprintf(msg, "Setup block %s: Bitstream flash storage error.\n", devname);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return;

            case BIST_ERROR:
                sprintf(msg, "Setup block %s: Built in self test error.\n", devname);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return;

            case ICAP_RECONF_FAILED:
                sprintf(msg, "Setup block %s: ICAP Reconfiguration was not successful.\n",devname);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return;

            case BOARD_TYPE_UNKNOWN:
                sprintf(msg, "Setup block %s: The board type selected is unknown.\n",devname);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return;

            default:
                sprintf(msg, "Setup block %s: An unknown error occurred.\n",devname);
                rtmSetErrorStatus(top_level_M, msg);
                SG_PRINTF(ERROR,msg);
                return;
        }

        // initialize Rear-IO's
        if (1 == 2){
            IO3xx_21_update(devname, 1, 0, 0, 0);
        }
        else if (1 == 3){
            IO3xx_22_update(devname, 1, 0, 0, 0);
        }
        else if (1 == 4){
            IO3xx_24_update(devname, 1, 0, 0, 0, 0);
        }

        // initial settings on module registry
        
        // Set all DIO's to registry inital values (all input, all output states = 0, all sources = codemodule)
        sg_fpga_io3xx_initDioLines(1, SG_FPGA_IO3XX_BAR2);

        // Set if FPGA DMA Controller is used
        ScatterGatherDmaState *sgDmaSharedState;
        sg_fpga_io3xx_getSharedSgDmaState(1, &sgDmaSharedState);
        sgDmaSharedState->useFpgaDmaController = 0;
    }
    
    {
        // run any code here at end of model-load
//        SG_PRINTF(INFO, "Setup Block: Entering TLC Trailer\n");
//        if(0){
//            io3xx_sgdma_finalizeDmaController(1);
//            io3xx_sgdma_startDmaController(1);
//        }
    }
}

__attribute__((constructor)) void early_init_setup(void)
{
    sg_register_early_init_function(sg_init_sfcns);
}
