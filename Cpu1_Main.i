# 1 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c"
# 1 "C:\\SCU\\Project_AU_C//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c"
# 25 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 29 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 1
# 29 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
# 1 "./0_Src/0_AppSw/Config/Common/Ifx_Cfg.h" 1
# 30 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 2
# 58 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
# 1 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h" 1
# 29 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 147 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long int ptrdiff_t;
# 212 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef long unsigned int size_t;
# 324 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef int wchar_t;
# 30 "./0_Src/1_SrvSw/Tricore/Compilers/CompilerGnuc.h" 2
# 59 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h" 2
# 89 "./0_Src/1_SrvSw/Tricore/Compilers/Compilers.h"
void Ifx_C_Init(void);
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h" 1
# 88 "./0_Src/4_McHal/Tricore/Cpu/Std/Platform_Types.h"
typedef signed char sint8;
typedef unsigned char uint8;
typedef signed short sint16;
typedef unsigned short uint16;
typedef signed int sint32;
typedef unsigned int uint32;
typedef float float32;
typedef double float64;

typedef unsigned long uword;
typedef unsigned char ubyte;

typedef unsigned long uint8_least;
typedef unsigned long uint16_least;
typedef unsigned long uint32_least;
typedef signed long sint8_least;
typedef signed long sint16_least;
typedef signed long sint32_least;

typedef unsigned char boolean;
# 31 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2





typedef signed long long sint64;
typedef unsigned long long uint64;

typedef const char *pchar;
typedef void *pvoid;
typedef volatile void *vvoid;

typedef sint64 Ifx_TickTime;
# 56 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
typedef sint16 Ifx_SizeT;



typedef struct
{
    void *base;
    uint16 index;
    uint16 length;
} Ifx_CircularBuffer;

typedef uint16 Ifx_Priority;
typedef unsigned int Ifx_TimerValue;
typedef sint32 Ifx_SignedTimerVal;

typedef pvoid Ifx_AddressValue;

typedef struct
{
    uint16 priority;
    uint16 provider;
} Ifx_IsrSetting;


typedef enum
{
    Ifx_ActiveState_low = 0,
    Ifx_ActiveState_high = 1
} Ifx_ActiveState;

typedef enum
{
    Ifx_ParityMode_even = 0,
    Ifx_ParityMode_odd = 1
} Ifx_ParityMode;



typedef enum
{
    Ifx_RxSel_a,
    Ifx_RxSel_b,
    Ifx_RxSel_c,
    Ifx_RxSel_d,
    Ifx_RxSel_e,
    Ifx_RxSel_f,
    Ifx_RxSel_g,
    Ifx_RxSel_h
} Ifx_RxSel;


typedef struct
{
    volatile void *module;
    sint32 index;
} IfxModule_IndexMap;

typedef struct
{
    Ifx_TickTime timestamp;
    uint8 data;
}Ifx_DataBufferMode_TimeStampSingle;
# 128 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
typedef enum
{
    Ifx_DataBufferMode_normal = 0,
    Ifx_DataBufferMode_timeStampSingle,

}Ifx_DataBufferMode;







typedef enum
{
    Ifx_Pwm_Mode_centerAligned = 0,
    Ifx_Pwm_Mode_centerAlignedInverted = 1,
    Ifx_Pwm_Mode_leftAligned = 2,
    Ifx_Pwm_Mode_rightAligned = 3,
    Ifx_Pwm_Mode_off = 4,
    Ifx_Pwm_Mode_init = 5,
    Ifx_Pwm_Mode_count = 6
} Ifx_Pwm_Mode;
# 159 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 1
# 27 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\cint.h" 1 3
# 24 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\cint.h" 3
extern void _init_vectab (void);
extern void _init_hnd_chain (void);






extern int _install_int_handler (int intno, void (*handler) (int), int arg);







extern void *_install_chained_int_handler (int intno, void (*handler) (int),
        int arg);





extern int _remove_chained_int_handler (int intno, void *ptr);





extern int _install_trap_handler (int trapno, void (*handler) (int));
# 28 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_TypesGnuc.h" 2


typedef long fract;
typedef short sfract;
typedef long long laccum;
typedef long __packb;
typedef unsigned long __upackb;
typedef long __packhw;
typedef unsigned long __upackhw;
# 160 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 2
# 26 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 1
# 54 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/Ifx_TypesReg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h" 2





typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS : 1;
    volatile unsigned int BIV : 31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int BTV : 31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM : 1;
    volatile unsigned int CE : 1;
    volatile unsigned int M1 : 3;
    volatile unsigned int M2 : 3;
    volatile unsigned int M3 : 3;
    volatile unsigned int reserved_11 : 21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int RM : 1;
    volatile unsigned int SP : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MOD_REV : 8;
    volatile unsigned int MOD_32B : 8;
    volatile unsigned int MOD : 16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA : 32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int SBE : 1;
    volatile unsigned int reserved_4 : 5;
    volatile unsigned int CWE : 1;
    volatile unsigned int CFE : 1;
    volatile unsigned int reserved_11 : 3;
    volatile unsigned int SOE : 1;
    volatile unsigned int SME : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE : 1;
    volatile unsigned int HALT : 2;
    volatile unsigned int SIH : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int reserved_5 : 1;
    volatile unsigned int PREVSUSP : 1;
    volatile unsigned int PEVT : 1;
    volatile unsigned int EVTSRC : 5;
    volatile unsigned int reserved_13 : 19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE : 16;
    volatile unsigned int DSCRATCH_SZE : 16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0 : 6;
    volatile unsigned int DCXValue : 26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS : 32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int DMSValue : 31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int LOWBND : 29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0 : 3;
    volatile unsigned int UPPBND : 29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE : 1;
    volatile unsigned int GAE : 1;
    volatile unsigned int LBE : 1;
    volatile unsigned int reserved_3 : 3;
    volatile unsigned int CRE : 1;
    volatile unsigned int reserved_7 : 7;
    volatile unsigned int DTME : 1;
    volatile unsigned int LOE : 1;
    volatile unsigned int SDE : 1;
    volatile unsigned int SCE : 1;
    volatile unsigned int CAC : 1;
    volatile unsigned int MPE : 1;
    volatile unsigned int CLE : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int ALN : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO : 16;
    volatile unsigned int FCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST : 1;
    volatile unsigned int TCL : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int RM : 2;
    volatile unsigned int reserved_10 : 8;
    volatile unsigned int FXE : 1;
    volatile unsigned int FUE : 1;
    volatile unsigned int FZE : 1;
    volatile unsigned int FVE : 1;
    volatile unsigned int FIE : 1;
    volatile unsigned int reserved_23 : 3;
    volatile unsigned int FX : 1;
    volatile unsigned int FU : 1;
    volatile unsigned int FZ : 1;
    volatile unsigned int FV : 1;
    volatile unsigned int FI : 1;
    volatile unsigned int reserved_31 : 1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC : 8;
    volatile unsigned int FMT : 1;
    volatile unsigned int reserved_9 : 7;
    volatile unsigned int DREG : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC : 32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1 : 32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2 : 32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3 : 32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN : 10;
    volatile unsigned int reserved_10 : 5;
    volatile unsigned int IE : 1;
    volatile unsigned int PIPN : 10;
    volatile unsigned int reserved_26 : 6;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP : 32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO : 16;
    volatile unsigned int LCXS : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int CountValue : 31;
    volatile unsigned int SOvf : 1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PC : 31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int PCBYP : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV : 1;
    volatile unsigned int PBINV : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE : 16;
    volatile unsigned int PSCRATCH_SZE : 16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO : 16;
    volatile unsigned int PCXS : 4;
    volatile unsigned int UL : 1;
    volatile unsigned int PIE : 1;
    volatile unsigned int PCPN : 10;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA : 32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED : 1;
    volatile unsigned int IE_T : 1;
    volatile unsigned int IE_C : 1;
    volatile unsigned int IE_S : 1;
    volatile unsigned int IE_BI : 1;
    volatile unsigned int E_INFO : 6;
    volatile unsigned int IE_DUAL : 1;
    volatile unsigned int IE_SP : 1;
    volatile unsigned int IE_BS : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int reserved_0 : 13;
    volatile unsigned int DAC : 3;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int reserved_0 : 14;
    volatile unsigned int CAC : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int FBE : 1;
    volatile unsigned int reserved_3 : 9;
    volatile unsigned int FPE : 1;
    volatile unsigned int reserved_13 : 1;
    volatile unsigned int FME : 1;
    volatile unsigned int reserved_15 : 17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC : 7;
    volatile unsigned int CDE : 1;
    volatile unsigned int GW : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IO : 2;
    volatile unsigned int PRS : 2;
    volatile unsigned int S : 1;
    volatile unsigned int reserved_15 : 12;
    volatile unsigned int SAV : 1;
    volatile unsigned int AV : 1;
    volatile unsigned int SV : 1;
    volatile unsigned int V : 1;
    volatile unsigned int C : 1;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP : 8;
    volatile unsigned int ADTYPE : 2;
    volatile unsigned int reserved_10 : 21;
    volatile unsigned int AE : 1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int PC : 1;
    volatile unsigned int reserved_1 : 1;
    volatile unsigned int PT : 1;
    volatile unsigned int reserved_3 : 5;
    volatile unsigned int DC : 1;
    volatile unsigned int reserved_9 : 1;
    volatile unsigned int DT : 1;
    volatile unsigned int reserved_11 : 13;
    volatile unsigned int IODT : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENA_Bits
{
    unsigned int EN : 32;
} Ifx_CPU_SPROT_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_ACCENB_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_CPU_SPROT_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_LA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_LA_Bits;


typedef struct _Ifx_CPU_SPROT_RGN_UA_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 27;
} Ifx_CPU_SPROT_RGN_UA_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF : 1;
    volatile unsigned int PROTEN : 1;
    volatile unsigned int TPROTEN : 1;
    volatile unsigned int IS : 1;
    volatile unsigned int IT : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0 : 1;
    volatile unsigned int TEXP1 : 1;
    volatile unsigned int TEXP2 : 1;
    volatile unsigned int reserved_3 : 13;
    volatile unsigned int TTRAP : 1;
    volatile unsigned int reserved_17 : 15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int Timer : 32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR : 32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA : 3;
    volatile unsigned int BBM : 1;
    volatile unsigned int BOD : 1;
    volatile unsigned int SUSP : 1;
    volatile unsigned int CNT : 2;
    volatile unsigned int reserved_8 : 4;
    volatile unsigned int TYP : 1;
    volatile unsigned int RNG : 1;
    volatile unsigned int reserved_14 : 1;
    volatile unsigned int ASI_EN : 1;
    volatile unsigned int ASI : 5;
    volatile unsigned int reserved_21 : 6;
    volatile unsigned int AST : 1;
    volatile unsigned int ALD : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_CPU_TR_EVT_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0 : 1;
    volatile unsigned int T1 : 1;
    volatile unsigned int T2 : 1;
    volatile unsigned int T3 : 1;
    volatile unsigned int T4 : 1;
    volatile unsigned int T5 : 1;
    volatile unsigned int T6 : 1;
    volatile unsigned int T7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_CPU_TRIG_ACC_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_ACCENA_Bits B;
} Ifx_CPU_SPROT_ACCENA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_ACCENB_Bits B;
} Ifx_CPU_SPROT_ACCENB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_ACCENA_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_ACCENB_Bits B;
} Ifx_CPU_SPROT_RGN_ACCENB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_LA_Bits B;
} Ifx_CPU_SPROT_RGN_LA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SPROT_RGN_UA_Bits B;
} Ifx_CPU_SPROT_RGN_UA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;
# 1487 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
    Ifx_CPU_CPR_L L;
    Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;


typedef volatile struct _Ifx_CPU_DPR
{
    Ifx_CPU_DPR_L L;
    Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;


typedef volatile struct _Ifx_CPU_SPROT_RGN
{
    Ifx_CPU_SPROT_RGN_LA LA;
    Ifx_CPU_SPROT_RGN_UA UA;
    Ifx_CPU_SPROT_RGN_ACCENA ACCENA;
    Ifx_CPU_SPROT_RGN_ACCENB ACCENB;
} Ifx_CPU_SPROT_RGN;


typedef volatile struct _Ifx_CPU_TPS
{
    Ifx_CPU_TPS_CON CON;
    Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;


typedef volatile struct _Ifx_CPU_TR
{
    Ifx_CPU_TR_EVT EVT;
    Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 1534 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
    unsigned char reserved_0[4144];
    Ifx_CPU_SEGEN SEGEN;
    unsigned char reserved_1034[28624];
    Ifx_CPU_TASK_ASI TASK_ASI;
    unsigned char reserved_8008[248];
    Ifx_CPU_PMA0 PMA0;
    Ifx_CPU_PMA1 PMA1;
    Ifx_CPU_PMA2 PMA2;
    unsigned char reserved_810C[3828];
    Ifx_CPU_DCON2 DCON2;
    unsigned char reserved_9004[8];
    Ifx_CPU_SMACON SMACON;
    Ifx_CPU_DSTR DSTR;
    unsigned char reserved_9014[4];
    Ifx_CPU_DATR DATR;
    Ifx_CPU_DEADD DEADD;
    Ifx_CPU_DIEAR DIEAR;
    Ifx_CPU_DIETR DIETR;
    unsigned char reserved_9028[24];
    Ifx_CPU_DCON0 DCON0;
    unsigned char reserved_9044[444];
    Ifx_CPU_PSTR PSTR;
    Ifx_CPU_PCON1 PCON1;
    Ifx_CPU_PCON2 PCON2;
    Ifx_CPU_PCON0 PCON0;
    Ifx_CPU_PIEAR PIEAR;
    Ifx_CPU_PIETR PIETR;
    unsigned char reserved_9218[488];
    Ifx_CPU_COMPAT COMPAT;
    unsigned char reserved_9404[3068];
    Ifx_CPU_FPU_TRAP_CON FPU_TRAP_CON;
    Ifx_CPU_FPU_TRAP_PC FPU_TRAP_PC;
    Ifx_CPU_FPU_TRAP_OPC FPU_TRAP_OPC;
    unsigned char reserved_A00C[4];
    Ifx_CPU_FPU_TRAP_SRC1 FPU_TRAP_SRC1;
    Ifx_CPU_FPU_TRAP_SRC2 FPU_TRAP_SRC2;
    Ifx_CPU_FPU_TRAP_SRC3 FPU_TRAP_SRC3;
    unsigned char reserved_A01C[8164];
    Ifx_CPU_DPR DPR[16];
    unsigned char reserved_C080[3968];
    Ifx_CPU_CPR CPR[8];
    unsigned char reserved_D040[4032];
    Ifx_CPU_CPXE CPXE[4];
    Ifx_CPU_DPRE DPRE[4];
    Ifx_CPU_DPWE DPWE[4];
    unsigned char reserved_E030[976];
    Ifx_CPU_TPS TPS;
    unsigned char reserved_E410[3056];
    Ifx_CPU_TR TR[8];
    unsigned char reserved_F040[3008];
    Ifx_CPU_CCTRL CCTRL;
    Ifx_CPU_CCNT CCNT;
    Ifx_CPU_ICNT ICNT;
    Ifx_CPU_M1CNT M1CNT;
    Ifx_CPU_M2CNT M2CNT;
    Ifx_CPU_M3CNT M3CNT;
    unsigned char reserved_FC18[232];
    Ifx_CPU_DBGSR DBGSR;
    unsigned char reserved_FD04[4];
    Ifx_CPU_EXEVT EXEVT;
    Ifx_CPU_CREVT CREVT;
    Ifx_CPU_SWEVT SWEVT;
    unsigned char reserved_FD14[28];
    Ifx_CPU_TRIG_ACC TRIG_ACC;
    unsigned char reserved_FD34[12];
    Ifx_CPU_DMS DMS;
    Ifx_CPU_DCX DCX;
    Ifx_CPU_DBGTCR DBGTCR;
    unsigned char reserved_FD4C[180];
    Ifx_CPU_PCXI PCXI;
    Ifx_CPU_PSW PSW;
    Ifx_CPU_PC PC;
    unsigned char reserved_FE0C[8];
    Ifx_CPU_SYSCON SYSCON;
    Ifx_CPU_CPU_ID CPU_ID;
    Ifx_CPU_CORE_ID CORE_ID;
    Ifx_CPU_BIV BIV;
    Ifx_CPU_BTV BTV;
    Ifx_CPU_ISP ISP;
    Ifx_CPU_ICR ICR;
    unsigned char reserved_FE30[8];
    Ifx_CPU_FCX FCX;
    Ifx_CPU_LCX LCX;
    unsigned char reserved_FE40[16];
    Ifx_CPU_CUS_ID CUS_ID;
    unsigned char reserved_FE54[172];
    Ifx_CPU_D D[16];
    unsigned char reserved_FF40[64];
    Ifx_CPU_A A[16];
    unsigned char reserved_FFC0[64];
} Ifx_CPU;


typedef volatile struct _Ifx_CPU_SPROT
{
    unsigned char reserved_0[57344];
    Ifx_CPU_SPROT_RGN RGN[8];
    unsigned char reserved_E080[128];
    Ifx_CPU_SPROT_ACCENA ACCENA;
    Ifx_CPU_SPROT_ACCENB ACCENB;
    unsigned char reserved_E108[7928];
} Ifx_CPU_SPROT;
# 55 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 2
# 27 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 31 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2






# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
# 41 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{

  __asm__ volatile ("restore %0" :: "d" (irqs_on) : "memory");






}
# 42 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 2
# 54 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __jump_and_link(void (*fun)(void))
{
 __asm__ volatile ("jli %0"::"a"(fun));
}
# 94 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __max(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("max %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __maxs(sint16 a, sint16 b)
{
    sint32 res;
    __asm__ volatile ("max.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}


static inline __attribute__ ((always_inline)) uint32 __maxu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("max.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __min(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("min %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __mins(sint16 a, sint16 b)
{
    sint16 res;
    __asm__ volatile ("min.h %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __minu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("min.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 184 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint16 __clssf(sfract a)
{
    sint16 res;
    __asm__ volatile ("cls  %0,%1":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fract_to_float(fract a)
{
    float res;
    __asm__ volatile ("q31tof  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __float_to_fract(float a)
{
    fract res;
    __asm__ volatile ("ftoq31  %0,%1,%2":"=d"(res):"d"(a), "d"(0):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __getfract(laccum a)
{
    fract res;
    __asm__ volatile ("dextr  %0,%H1,%L1,0x11":"=&d" (res):"d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_r_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("maddrs.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __mac_sf(sfract a, sfract b, sfract c)
{
    sfract res;
    __asm__ volatile ("madds.q  %0,%1,%2U,%3U,1":"=d"(res):"d"(a), "d"(b), "d"(c):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractfract(fract a, fract b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) long __mulfractlong(fract a, long b)
{
    long res;
    __asm__ volatile ("mul.q %0,%1,%2,1":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __round16(fract a)
{
    sfract res;
    __asm__ volatile ("mov.u  %0,0x8000        \n                    adds  %0,%1              \n                    insert  %0,%0,0,0,0x10 "


                      :"=&d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __s16_to_sfract(sint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sfract_to_s16(sfract a)
{
    sint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sfract_to_u16(sfract a)
{
    uint16 res;
    __asm__ volatile ("sh  %0,%1,-16":"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) laccum __shaaccum(laccum a, sint32 b)
{
    laccum res;
    __asm__ volatile ("jge   %2,0,0f        \n                    sha   %H0,%H1,%2     \n                    rsub  %2,%2,0        \n                    dextr %L0,%H1,%L1,%2 \n                    j  1f                \n                    0:dextr %H0,%H1,%L1,%2 \n                    sha   %L0,%L1,%2     \n                    1:"







                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) fract __shafracts(fract a, sint32 b)
{
    fract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __shasfracts(sfract a, sint32 b)
{
    sfract res;
    __asm__ volatile ("shas  %0,%1,%2":"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sfract __u16_to_sfract(uint16 a)
{
    sfract res;
    __asm__ volatile ("sh  %0,%1,16":"=d"(res):"d"(a):"memory");
    return res;
}
# 346 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __extr(sint32 a, uint32 p, uint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __extru(uint32 a, uint32 p, uint32 w)
{
    uint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                      : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14", "d15");
    return res;
}
# 384 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __ins(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("ins.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insert(sint32 a, sint32 b, sint32 p, const sint32 w)
{
    sint32 res;
    __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     insert %0,%1,%2,%%e14"


                      :"=d"(res):"d"(a), "d"(b), "d"(p), "d"(w):"d14", "d15");
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __insn(sint32 trg, const sint32 trgbit, sint32 src, const sint32 srcbit)
{
    sint32 res;
    __asm__ volatile ("insn.t %0,%1,%2,%3,%4":"=d"(res):"d"(trg), "i"(trgbit), "d"(src), "i"(srcbit));
    return res;
}
# 436 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __disable_and_save(void)
{
    sint32 res;
    __asm__ volatile("disable %0":"=d"(res));
    return res;
}







static inline __attribute__ ((always_inline)) void __restore(sint32 ie)
{
    __asm__ volatile ("restore %0"::"d"(ie));
}
# 470 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __cacheawi(uint8* p)
{
    __asm__ volatile("cachea.wi [%0]0"::"a"(p));
}


static inline __attribute__ ((always_inline)) void __cacheiwi(uint8* p)
{
    __asm__ volatile("cachei.wi [%0]0"::"a"(p));
}




static inline __attribute__ ((always_inline)) uint8* __cacheawi_bo_post_inc(uint8* p)
{
    __asm__ volatile("cachea.wi  [%0+]0"::"a"(p));
    return p;
}





static inline __attribute__ ((always_inline)) sint32 __mulsc(sint32 a, sint32 b, sint32 offset)
{
    sint32 res;
    __asm__ volatile("mul  %%e12,%1,%2      \n                    dextr  %0,%%d13,%%d12,%3"

                     :"=d"(res):"d"(a), "d"(b), "d"(offset):"d12", "d13");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __rol(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("dextr  %0,%1,%1,%2":"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __ror(uint32 operand, uint32 count)
{
    uint32 res;
    __asm__ volatile("rsub %2,%2,0 \n                    dextr  %0,%1,%1,%2"

                     :"=d"(res):"d"(operand), "d"(count):"memory");
    return res;
}
# 532 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) __packb __absb(__packb a)
{
    __packb res;
    __asm__ volatile ("abs.b %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __absh(__packhw a)
{
    __packhw res;
    __asm__ volatile ("abs.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __abssh(__packhw a)
{
    __packb res;
    __asm__ volatile ("abss.h %0,%1"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte1(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte2(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte3(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __extractbyte4(__packb a)
{
    sint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw1(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __extracthw2(__packhw a)
{
    sint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte1(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,0,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte2(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,8,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte3(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,16,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __extractubyte4(__upackb a)
{
    uint8 res;
    __asm__ volatile ("extr  %0,%1,24,8"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw1(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,0,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __extractuhw2(__upackhw a)
{
    uint16 res;
    __asm__ volatile ("extr  %0,%1,16,16"
                      :"=d"(res):"d"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __getbyte1(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte2(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte3(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint8 __getbyte4(__packb* a)
{
    sint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;

}



static inline __attribute__ ((always_inline)) sint16 __gethw1(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}


static inline __attribute__ ((always_inline)) sint16 __gethw2(__packhw* a)
{
    sint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte1(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte2(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,8,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte3(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __getubyte4(__upackb* a)
{
    uint8 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,24,8"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw1(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,0,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __getuhw2(__upackhw* a)
{
    uint16 res;
    __asm__ volatile ("ld.w  %0,[%1]0 \n                     extr  %0,%0,16,16"

                      :"=d"(res):"a"(a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackb(sint32 a, sint32 b, sint32 c, sint32 d)
{
    __packb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %4,%1,%2,8,8   \n                    insert  %0,%4,%3,16,16 "


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __initpackbl(long a)
{
    return (__packb) a;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhw(sint16 a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __initpackhwl(long a)
{
    return a;
}



static inline __attribute__ ((always_inline)) __upackb __initupackb( uint32 a, uint32 b, uint32 c, uint32 d)
{
    __upackb res;
    __asm__ volatile ("insert  %3,%3,%4,8,8   \n                    insert  %1,%1,%2,8,8   \n                    insert  %0,%1,%3,16,16"


                      :"=d"(res):"d"(a), "d"(b), "d"(c), "d"(d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __initupackhw( uint16 a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte1(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte2(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte3(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __insertbyte4(__packb a, sint8 b)
{
    __packb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte1( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,0,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte2( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,8,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte3( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,16,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __insertubyte4( __upackb a, uint8 b)
{
    __upackb res;
    __asm__ volatile ("insert  %0,%1,%2,24,8"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw1(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __inserthw2(__packhw a, sint16 b)
{
    __packhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw1( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,0,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __insertuhw2( __upackhw a, uint16 b)
{
    __upackhw res;
    __asm__ volatile ("insert  %0,%1,%2,16,16"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packb __minb(__packb a, __packb b)
{
    __packb res;
    __asm__ volatile ("min.b %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackb __minbu( __upackb a, __upackb b)
{
    __upackb res;
    __asm__ volatile ("min.bu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __packhw __minh(__packhw a, __packhw b)
{
    __packhw res;
    __asm__ volatile ("min.h %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) __upackhw __minhu( __upackhw a, __upackhw b)
{
    __upackhw res;
    __asm__ volatile ("min.hu %0,%1,%2"
                      :"=d"(res):"d"(a), "d"(b):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) void __setbyte1(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte2(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte3(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setbyte4(__packb* a, sint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw1(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __sethw2(__packhw* a, sint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte1(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte2(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,8,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte3(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setubyte4(__upackb* a, uint8 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,24,8 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw1(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,0,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}



static inline __attribute__ ((always_inline)) void __setuhw2(__upackhw* a, uint16 b)
{
    __asm__ volatile ("ld.w  %%d15,[%0] \n                    insert  %%d15,%%d15,%1,16,16 \n                    st.w [%0],%%d15"


                      ::"a"(a), "d"(b):"d15", "memory");
}
# 1167 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __absdif(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("absdif %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __abss(sint32 a)
{
    sint32 res;
    __asm__ volatile ("abss %0, %1": "=d" (res) : "d" (a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __clo(sint32 a)
{
    sint32 res;
    __asm__ volatile ("clo %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __cls(sint32 a)
{
    sint32 res;
    __asm__ volatile ("cls %0,%1":"=d"(res):"d"(a));
    return res;
}







static inline __attribute__ ((always_inline)) double __fabs(double d)
{
    double res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (d):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) float __fabsf(float f)
{
    float res;
    __asm__ volatile ("insert  %0,%1,0,31,1": "=d" (res) : "d" (f):"memory");
    return res;
}
# 1238 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __parity(sint32 a)
{
    sint32 res;
    __asm__ volatile ("parity  %0,%1": "=d" (res) : "d" (a):"memory");
    return res;
}



static inline __attribute__ ((always_inline)) sint8 __satb(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.b %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint8 __satbu(sint32 a)
{
    uint8 res;
    __asm__ volatile ("sat.bu %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) sint16 __sath(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.h %0,%1":"=d"(res):"d"(a));
    return res;
}



static inline __attribute__ ((always_inline)) uint16 __sathu(sint32 a)
{
    sint8 res;
    __asm__ volatile ("sat.hu %0,%1":"=d"(res):"d"(a));
    return res;
}
# 1291 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) sint32 __adds(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("adds %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __addsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("adds.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) sint32 __subs(sint32 a, sint32 b)
{
    sint32 res;
    __asm__ volatile ("subs %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}



static inline __attribute__ ((always_inline)) uint32 __subsu(uint32 a, uint32 b)
{
    uint32 res;
    __asm__ volatile ("subs.u %0, %1, %2": "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 1337 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __debug(void)
{
    __asm__ volatile ("debug" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __dsync(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __isync(void)
{
    __asm__ volatile ("isync" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __ldmst(volatile void* address, uint32 mask, uint32 value)
{
    __asm__ volatile("mov %H2,%1 \n                  ldmst [%0]0,%A2"

                     ::"a"(address), "d"(mask), "d"((long long)value));
}



static inline __attribute__ ((always_inline)) void __nop(void)
{
    __asm__ volatile ("nop" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __nops(void* cnt)
{
    __asm__ volatile ("0: nop \n        loop %0,0b"

                      ::"a"(((sint8*)cnt)-1));
}



static inline __attribute__ ((always_inline)) void __rslcx(void)
{
    __asm__ volatile ("rslcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) void __svlcx(void)
{
    __asm__ volatile ("svlcx" : : : "memory");
}



static inline __attribute__ ((always_inline)) uint32 __swap(void* place, uint32 value)
{
    uint32 res;
    __asm__ volatile("swap.w [%1]0,%2":"=d"(res):"a"(place), "0"(value));
    return res;
}
# 1422 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) void __stopPerfCounters(void)
{
    __asm__ volatile("mov %%d0,0\n                  mtcr 0xFC00,%%d0\n                  isync\n"


            : : :"d0");
}







static inline __attribute__ ((always_inline)) unsigned int __cmpAndSwap (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
# 1450 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
  sint32 ie;
  uint32 retval = 1;
  ie = __disable_and_save();
  if (condition == *address)
  {
     __swap((void *)address,value );
 retval = 0;
  }
  __restore(ie);
  return retval;

}
# 1474 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
static inline __attribute__ ((always_inline)) float32 __fixpoint_to_float32(fract value, sint32 shift)
{
    float32 result;

    __asm__ volatile("q31tof %0, %1, %2": "=d" (result) : "d" (value), "d" (shift));
    return result;
}



static inline __attribute__ ((always_inline)) void* __getA11(void)
{
    uint32 *res;
    __asm__ volatile ("mov.aa %0, %%a11": "=a" (res) : :"a11");
    return res;
}

static inline __attribute__ ((always_inline)) void __setStackPointer(void *stackAddr)
{
    __asm__ volatile ("mov.aa %%a10, %0": : "a" (stackAddr) :"a10");
}
# 38 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 2
# 66 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
static inline __attribute__ ((always_inline)) void *__cx_to_addr(uint32 cx)
{
    uint32 seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" (cx),"i" (16),"i" (4) : "memory"); res; });
    return (void *)__insert(seg_nr << 28, cx, 6, 16);
}






static inline __attribute__ ((always_inline)) uint32 __addr_to_cx(void *addr)
{
    uint32 seg_nr, seg_idx;
    seg_nr = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (28),"i" (4) : "memory"); res; }) << 16;
    seg_idx = ({ sint32 res; asm volatile (" extr.u\t %0,%1,%2,%3" : "=d" (res) : "d" ((int)addr),"i" (6),"i" (16) : "memory"); res; });
    return seg_nr | seg_idx;
}



static inline __attribute__ ((always_inline)) void __ldmst_c(volatile void *address, unsigned mask, unsigned value)
{
    *(volatile uint32 *)address = (*(volatile uint32 *)address & ~(mask)) | (mask & value);
}




static inline __attribute__ ((always_inline)) uint32 __ld32(void *addr)
{
    return *(volatile uint32 *)addr;
}




static inline __attribute__ ((always_inline)) void __st32(void *addr, uint32 value)
{
    *(volatile uint32 *)addr = value;
}




static inline __attribute__ ((always_inline)) uint64 __ld64(void *addr)
{
    return *(volatile uint64 *)addr;
}




static inline __attribute__ ((always_inline)) void __st64(void *addr, uint64 value)
{
    *(volatile uint64 *)addr = value;
}




static inline __attribute__ ((always_inline)) void __ld64_lu(void *addr, uint32 *valueLower, uint32 *valueUpper)
{
    register uint64 value;
    value = __ld64(addr);
    *valueLower = (uint32)value;
    *valueUpper = (uint32)(value >> 32);
}




static inline __attribute__ ((always_inline)) void __st64_lu(void *addr, uint32 valueLower, uint32 valueUpper)
{
    register uint64 value = ((uint64)valueUpper << 32) | valueLower;
    __st64(addr, value);
}
# 28 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 1
# 46 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_bf.h" 1
# 37 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_bf.h" 1
# 38 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h" 2
# 1411 "./0_Src/4_McHal/Tricore/_Impl/IfxScu_cfg.h"
typedef enum
{
    IfxScu_CCUCON0_CLKSEL_fBack = 0,
    IfxScu_CCUCON0_CLKSEL_fPll = 1
} IfxScu_CCUCON0_CLKSEL;


typedef enum
{
    IfxScu_CCUCON1_INSEL_fOsc1 = 0,
    IfxScu_CCUCON1_INSEL_fOsc0 = 1
} IfxScu_CCUCON1_INSEL;


typedef enum
{
    IfxScu_WDTCON1_IR_divBy16384 = 0,
    IfxScu_WDTCON1_IR_divBy256 = 1,
    IfxScu_WDTCON1_IR_divBy64 = 2
} IfxScu_WDTCON1_IR;

typedef enum
{
    IfxScu_PMCSR_REQSLP_Run = 0U,
    IfxScu_PMCSR_REQSLP_Idle = 1U,
    IfxScu_PMCSR_REQSLP_Sleep = 2U,
    IfxScu_PMCSR_REQSLP_Stby = 3U
} IfxScu_PMCSR_REQSLP;
# 47 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/Ifx_Types.h" 1
# 48 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_SCU_ACCEN0_Bits;


typedef struct _Ifx_SCU_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_SCU_ACCEN1_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    unsigned int STM0DIS : 1;
    unsigned int STM1DIS : 1;
    unsigned int STM2DIS : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    unsigned int BAUD1DIV : 4;
    unsigned int BAUD2DIV : 4;
    unsigned int SRIDIV : 4;
    unsigned int LPDIV : 4;
    unsigned int SPBDIV : 4;
    unsigned int FSI2DIV : 2;
    unsigned int reserved_22 : 2;
    unsigned int FSIDIV : 2;
    unsigned int ADCCLKSEL : 2;
    unsigned int CLKSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    unsigned int CANDIV : 4;
    unsigned int ERAYDIV : 4;
    unsigned int STMDIV : 4;
    unsigned int GTMDIV : 4;
    unsigned int ETHDIV : 4;
    unsigned int ASCLINFDIV : 4;
    unsigned int ASCLINSDIV : 4;
    unsigned int INSEL : 2;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    unsigned int BBBDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    unsigned int PLLDIV : 6;
    unsigned int PLLSEL : 2;
    unsigned int PLLERAYDIV : 6;
    unsigned int PLLERAYSEL : 2;
    unsigned int SRIDIV : 6;
    unsigned int SRISEL : 2;
    unsigned int reserved_24 : 5;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    unsigned int SPBDIV : 6;
    unsigned int SPBSEL : 2;
    unsigned int GTMDIV : 6;
    unsigned int GTMSEL : 2;
    unsigned int STMDIV : 6;
    unsigned int STMSEL : 2;
    unsigned int reserved_24 : 5;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    unsigned int MAXDIV : 4;
    unsigned int reserved_4 : 26;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    unsigned int CPU0DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CCUCON7_Bits
{
    unsigned int CPU1DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON7_Bits;


typedef struct _Ifx_SCU_CCUCON8_Bits
{
    unsigned int CPU2DIV : 6;
    unsigned int reserved_6 : 26;
} Ifx_SCU_CCUCON8_Bits;


typedef struct _Ifx_SCU_CCUCON9_Bits
{
    unsigned int ADCDIV : 6;
    unsigned int ADCSEL : 2;
    unsigned int reserved_8 : 21;
    unsigned int SLCK : 1;
    unsigned int UP : 1;
    unsigned int LCK : 1;
} Ifx_SCU_CCUCON9_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    unsigned int CHREV : 6;
    unsigned int CHTEC : 2;
    unsigned int CHID : 8;
    unsigned int EEA : 1;
    unsigned int UCODE : 7;
    unsigned int FSIZE : 4;
    unsigned int SP : 2;
    unsigned int SEC : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCON_Bits
{
    unsigned int PWD : 1;
    unsigned int START : 1;
    unsigned int reserved_2 : 2;
    unsigned int CAL : 20;
    unsigned int reserved_24 : 7;
    unsigned int SLCK : 1;
} Ifx_SCU_DTSCON_Bits;


typedef struct _Ifx_SCU_DTSLIM_Bits
{
    unsigned int LOWER : 10;
    unsigned int reserved_10 : 5;
    unsigned int LLU : 1;
    unsigned int UPPER : 10;
    unsigned int reserved_26 : 4;
    unsigned int SLCK : 1;
    unsigned int UOF : 1;
} Ifx_SCU_DTSLIM_Bits;


typedef struct _Ifx_SCU_DTSSTAT_Bits
{
    unsigned int RESULT : 10;
    unsigned int reserved_10 : 4;
    unsigned int RDY : 1;
    unsigned int BUSY : 1;
    unsigned int reserved_16 : 16;
} Ifx_SCU_DTSSTAT_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int EXIS0 : 3;
    unsigned int reserved_7 : 1;
    unsigned int FEN0 : 1;
    unsigned int REN0 : 1;
    unsigned int LDEN0 : 1;
    unsigned int EIEN0 : 1;
    unsigned int INP0 : 3;
    unsigned int reserved_15 : 5;
    unsigned int EXIS1 : 3;
    unsigned int reserved_23 : 1;
    unsigned int FEN1 : 1;
    unsigned int REN1 : 1;
    unsigned int LDEN1 : 1;
    unsigned int EIEN1 : 1;
    unsigned int INP1 : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    unsigned int INTF0 : 1;
    unsigned int INTF1 : 1;
    unsigned int INTF2 : 1;
    unsigned int INTF3 : 1;
    unsigned int INTF4 : 1;
    unsigned int INTF5 : 1;
    unsigned int INTF6 : 1;
    unsigned int INTF7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    unsigned int POL : 1;
    unsigned int MODE : 1;
    unsigned int ENON : 1;
    unsigned int PSEL : 1;
    unsigned int reserved_4 : 12;
    unsigned int EMSF : 1;
    unsigned int SEMSF : 1;
    unsigned int reserved_18 : 6;
    unsigned int EMSFM : 2;
    unsigned int SEMSFM : 2;
    unsigned int reserved_28 : 4;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_ESRCFG_Bits
{
    unsigned int reserved_0 : 7;
    unsigned int EDCON : 2;
    unsigned int reserved_9 : 23;
} Ifx_SCU_ESRCFG_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    unsigned int ARI : 1;
    unsigned int ARC : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EVR13CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR13OFF : 1;
    unsigned int BPEVR13OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR13CON_Bits;


typedef struct _Ifx_SCU_EVR33CON_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int EVR33OFF : 1;
    unsigned int BPEVR33OFF : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVR33CON_Bits;


typedef struct _Ifx_SCU_EVRADCSTAT_Bits
{
    unsigned int ADC13V : 8;
    unsigned int ADC33V : 8;
    unsigned int ADCSWDV : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRADCSTAT_Bits;


typedef struct _Ifx_SCU_EVRDVSTAT_Bits
{
    unsigned int DVS13TRIM : 8;
    unsigned int reserved_8 : 8;
    unsigned int DVS33TRIM : 8;
    unsigned int reserved_24 : 7;
    unsigned int VAL : 1;
} Ifx_SCU_EVRDVSTAT_Bits;


typedef struct _Ifx_SCU_EVRMONCTRL_Bits
{
    unsigned int EVR13OVMOD : 2;
    unsigned int reserved_2 : 2;
    unsigned int EVR13UVMOD : 2;
    unsigned int reserved_6 : 2;
    unsigned int EVR33OVMOD : 2;
    unsigned int reserved_10 : 2;
    unsigned int EVR33UVMOD : 2;
    unsigned int reserved_14 : 2;
    unsigned int SWDOVMOD : 2;
    unsigned int reserved_18 : 2;
    unsigned int SWDUVMOD : 2;
    unsigned int reserved_22 : 8;
    unsigned int SLCK : 1;
    unsigned int reserved_31 : 1;
} Ifx_SCU_EVRMONCTRL_Bits;


typedef struct _Ifx_SCU_EVROSCCTRL_Bits
{
    unsigned int OSCTRIM : 10;
    unsigned int OSCPTAT : 6;
    unsigned int OSCANASEL : 4;
    unsigned int HPBGTRIM : 7;
    unsigned int HPBGCLKEN : 1;
    unsigned int OSC3V3 : 1;
    unsigned int reserved_29 : 2;
    unsigned int LCK : 1;
} Ifx_SCU_EVROSCCTRL_Bits;


typedef struct _Ifx_SCU_EVROVMON_Bits
{
    unsigned int EVR13OVVAL : 8;
    unsigned int EVR33OVVAL : 8;
    unsigned int SWDOVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVROVMON_Bits;


typedef struct _Ifx_SCU_EVRRSTCON_Bits
{
    unsigned int RST13TRIM : 8;
    unsigned int reserved_8 : 16;
    unsigned int RST13OFF : 1;
    unsigned int BPRST13OFF : 1;
    unsigned int RST33OFF : 1;
    unsigned int BPRST33OFF : 1;
    unsigned int RSTSWDOFF : 1;
    unsigned int BPRSTSWDOFF : 1;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRRSTCON_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF1_Bits
{
    unsigned int SD5P : 8;
    unsigned int SD5I : 8;
    unsigned int SD5D : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF1_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF2_Bits
{
    unsigned int SD33P : 8;
    unsigned int SD33I : 8;
    unsigned int SD33D : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF2_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF3_Bits
{
    unsigned int CT5REG0 : 8;
    unsigned int CT5REG1 : 8;
    unsigned int CT5REG2 : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF3_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF4_Bits
{
    unsigned int CT5REG3 : 8;
    unsigned int CT5REG4 : 8;
    unsigned int reserved_16 : 15;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF4_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF5_Bits
{
    unsigned int CT33REG0 : 8;
    unsigned int CT33REG1 : 8;
    unsigned int CT33REG2 : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF5_Bits;


typedef struct _Ifx_SCU_EVRSDCOEFF6_Bits
{
    unsigned int CT33REG3 : 8;
    unsigned int CT33REG4 : 8;
    unsigned int reserved_16 : 15;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCOEFF6_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL1_Bits
{
    unsigned int SDFREQSPRD : 16;
    unsigned int SDFREQ : 8;
    unsigned int SDSTEP : 4;
    unsigned int reserved_28 : 2;
    unsigned int SDSAMPLE : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL1_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL2_Bits
{
    unsigned int DRVP : 8;
    unsigned int SDMINMAXDC : 8;
    unsigned int DRVN : 8;
    unsigned int SDLUT : 6;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL2_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL3_Bits
{
    unsigned int SDPWMPRE : 8;
    unsigned int SDPID : 8;
    unsigned int SDVOKLVL : 8;
    unsigned int reserved_24 : 7;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL3_Bits;


typedef struct _Ifx_SCU_EVRSDCTRL4_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int SYNCDIV : 3;
    unsigned int reserved_11 : 20;
    unsigned int LCK : 1;
} Ifx_SCU_EVRSDCTRL4_Bits;


typedef struct _Ifx_SCU_EVRSTAT_Bits
{
    unsigned int EVR13 : 1;
    unsigned int OV13 : 1;
    unsigned int EVR33 : 1;
    unsigned int OV33 : 1;
    unsigned int OVSWD : 1;
    unsigned int UV13 : 1;
    unsigned int UV33 : 1;
    unsigned int UVSWD : 1;
    unsigned int EXTPASS13 : 1;
    unsigned int EXTPASS33 : 1;
    unsigned int BGPROK : 1;
    unsigned int reserved_11 : 21;
} Ifx_SCU_EVRSTAT_Bits;


typedef struct _Ifx_SCU_EVRTRIM_Bits
{
    unsigned int EVR13TRIM : 8;
    unsigned int SDVOUTSEL : 8;
    unsigned int reserved_16 : 14;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRTRIM_Bits;


typedef struct _Ifx_SCU_EVRUVMON_Bits
{
    unsigned int EVR13UVVAL : 8;
    unsigned int EVR33UVVAL : 8;
    unsigned int SWDUVVAL : 8;
    unsigned int reserved_24 : 6;
    unsigned int SLCK : 1;
    unsigned int LCK : 1;
} Ifx_SCU_EVRUVMON_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    unsigned int EN0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int SEL0 : 4;
    unsigned int reserved_6 : 10;
    unsigned int EN1 : 1;
    unsigned int NSEL : 1;
    unsigned int SEL1 : 4;
    unsigned int reserved_22 : 2;
    unsigned int DIV1 : 8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    unsigned int STEP : 10;
    unsigned int reserved_10 : 4;
    unsigned int DM : 2;
    unsigned int RESULT : 10;
    unsigned int reserved_26 : 5;
    unsigned int DISCLK : 1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    unsigned int FS0 : 1;
    unsigned int FS1 : 1;
    unsigned int FS2 : 1;
    unsigned int FS3 : 1;
    unsigned int FS4 : 1;
    unsigned int FS5 : 1;
    unsigned int FS6 : 1;
    unsigned int FS7 : 1;
    unsigned int reserved_8 : 8;
    unsigned int FC0 : 1;
    unsigned int FC1 : 1;
    unsigned int FC2 : 1;
    unsigned int FC3 : 1;
    unsigned int FC4 : 1;
    unsigned int FC5 : 1;
    unsigned int FC6 : 1;
    unsigned int FC7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    unsigned int IPEN00 : 1;
    unsigned int IPEN01 : 1;
    unsigned int IPEN02 : 1;
    unsigned int IPEN03 : 1;
    unsigned int IPEN04 : 1;
    unsigned int IPEN05 : 1;
    unsigned int IPEN06 : 1;
    unsigned int IPEN07 : 1;
    unsigned int reserved_8 : 5;
    unsigned int GEEN0 : 1;
    unsigned int IGP0 : 2;
    unsigned int IPEN10 : 1;
    unsigned int IPEN11 : 1;
    unsigned int IPEN12 : 1;
    unsigned int IPEN13 : 1;
    unsigned int IPEN14 : 1;
    unsigned int IPEN15 : 1;
    unsigned int IPEN16 : 1;
    unsigned int IPEN17 : 1;
    unsigned int reserved_24 : 5;
    unsigned int GEEN1 : 1;
    unsigned int IGP1 : 2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PC0 : 4;
    unsigned int reserved_8 : 4;
    unsigned int PC1 : 4;
    unsigned int reserved_16 : 16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    unsigned int LBISTREQ : 1;
    unsigned int LBISTREQP : 1;
    unsigned int PATTERNS : 14;
    unsigned int reserved_16 : 16;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    unsigned int SEED : 23;
    unsigned int reserved_23 : 1;
    unsigned int SPLITSH : 3;
    unsigned int BODY : 1;
    unsigned int LBISTFREQU : 4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    unsigned int SIGNATURE : 24;
    unsigned int reserved_24 : 7;
    unsigned int LBISTDONE : 1;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LCLCON_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int LS : 1;
    unsigned int reserved_17 : 14;
    unsigned int LSEN : 1;
} Ifx_SCU_LCLCON_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    unsigned int LCLT0 : 1;
    unsigned int LCLT1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    unsigned int DEPT : 5;
    unsigned int MANUF : 11;
    unsigned int reserved_16 : 16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 14;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int reserved_18 : 14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PLLLV : 1;
    unsigned int OSCRES : 1;
    unsigned int GAINSEL : 2;
    unsigned int MODE : 2;
    unsigned int SHBY : 1;
    unsigned int PLLHV : 1;
    unsigned int reserved_9 : 1;
    unsigned int X1D : 1;
    unsigned int X1DEN : 1;
    unsigned int reserved_12 : 4;
    unsigned int OSCVAL : 5;
    unsigned int reserved_21 : 2;
    unsigned int APREN : 1;
    unsigned int CAP0EN : 1;
    unsigned int CAP1EN : 1;
    unsigned int CAP2EN : 1;
    unsigned int CAP3EN : 1;
    unsigned int reserved_28 : 4;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    unsigned int CSEL0 : 1;
    unsigned int CSEL1 : 1;
    unsigned int CSEL2 : 1;
    unsigned int reserved_3 : 13;
    unsigned int OVSTRT : 1;
    unsigned int OVSTP : 1;
    unsigned int DCINVAL : 1;
    unsigned int reserved_19 : 5;
    unsigned int OVCONF : 1;
    unsigned int POVCONF : 1;
    unsigned int reserved_26 : 6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    unsigned int OVEN0 : 1;
    unsigned int OVEN1 : 1;
    unsigned int OVEN2 : 1;
    unsigned int reserved_3 : 29;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    unsigned int PDR0 : 1;
    unsigned int PDR1 : 1;
    unsigned int PDR2 : 1;
    unsigned int PDR3 : 1;
    unsigned int PDR4 : 1;
    unsigned int PDR5 : 1;
    unsigned int PDR6 : 1;
    unsigned int PDR7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PLLCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int MODEN : 1;
    unsigned int reserved_3 : 1;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 7;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLCON0_Bits;


typedef struct _Ifx_SCU_PLLCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 7;
    unsigned int reserved_15 : 1;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLCON1_Bits;


typedef struct _Ifx_SCU_PLLCON2_Bits
{
    unsigned int MODCFG : 16;
    unsigned int reserved_16 : 16;
} Ifx_SCU_PLLCON2_Bits;


typedef struct _Ifx_SCU_PLLERAYCON0_Bits
{
    unsigned int VCOBYP : 1;
    unsigned int VCOPWD : 1;
    unsigned int reserved_2 : 2;
    unsigned int SETFINDIS : 1;
    unsigned int CLRFINDIS : 1;
    unsigned int OSCDISCDIS : 1;
    unsigned int reserved_7 : 2;
    unsigned int NDIV : 5;
    unsigned int reserved_14 : 2;
    unsigned int PLLPWD : 1;
    unsigned int reserved_17 : 1;
    unsigned int RESLD : 1;
    unsigned int reserved_19 : 5;
    unsigned int PDIV : 4;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PLLERAYCON0_Bits;


typedef struct _Ifx_SCU_PLLERAYCON1_Bits
{
    unsigned int K2DIV : 7;
    unsigned int reserved_7 : 1;
    unsigned int K3DIV : 4;
    unsigned int reserved_12 : 4;
    unsigned int K1DIV : 7;
    unsigned int reserved_23 : 9;
} Ifx_SCU_PLLERAYCON1_Bits;


typedef struct _Ifx_SCU_PLLERAYSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int PWDSTAT : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 26;
} Ifx_SCU_PLLERAYSTAT_Bits;


typedef struct _Ifx_SCU_PLLSTAT_Bits
{
    unsigned int VCOBYST : 1;
    unsigned int reserved_1 : 1;
    unsigned int VCOLOCK : 1;
    unsigned int FINDIS : 1;
    unsigned int K1RDY : 1;
    unsigned int K2RDY : 1;
    unsigned int reserved_6 : 1;
    unsigned int MODRUN : 1;
    unsigned int reserved_8 : 24;
} Ifx_SCU_PLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR_Bits
{
    unsigned int REQSLP : 2;
    unsigned int SMUSLP : 1;
    unsigned int reserved_3 : 5;
    unsigned int PMST : 3;
    unsigned int reserved_11 : 21;
} Ifx_SCU_PMCSR_Bits;


typedef struct _Ifx_SCU_PMSWCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int ESR0DFEN : 1;
    unsigned int ESR0EDCON : 2;
    unsigned int ESR1DFEN : 1;
    unsigned int ESR1EDCON : 2;
    unsigned int PINADFEN : 1;
    unsigned int PINAEDCON : 2;
    unsigned int PINBDFEN : 1;
    unsigned int PINBEDCON : 2;
    unsigned int reserved_16 : 1;
    unsigned int STBYRAMSEL : 2;
    unsigned int reserved_19 : 2;
    unsigned int TRISTEN : 1;
    unsigned int TRISTREQ : 1;
    unsigned int PORSTDF : 1;
    unsigned int PWRWKEN : 1;
    unsigned int DCDCSYNC : 1;
    unsigned int BLNKFIL : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_30 : 1;
    unsigned int LCK : 1;
} Ifx_SCU_PMSWCR0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int CPUIDLSEL : 3;
    unsigned int reserved_11 : 1;
    unsigned int IRADIS : 1;
    unsigned int reserved_13 : 11;
    unsigned int CPUSEL : 3;
    unsigned int STBYEVEN : 1;
    unsigned int STBYEV : 3;
    unsigned int reserved_31 : 1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMSWSTAT_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKP : 1;
    unsigned int ESR1OVRUN : 1;
    unsigned int PINAWKP : 1;
    unsigned int PINAOVRUN : 1;
    unsigned int PINBWKP : 1;
    unsigned int PINBOVRUN : 1;
    unsigned int PWRWKP : 1;
    unsigned int PORSTDF : 1;
    unsigned int HWCFGEVR : 3;
    unsigned int STBYRAM : 2;
    unsigned int TRIST : 1;
    unsigned int reserved_16 : 4;
    unsigned int ESR1WKEN : 1;
    unsigned int PINAWKEN : 1;
    unsigned int PINBWKEN : 1;
    unsigned int PWRWKEN : 1;
    unsigned int BLNKFIL : 3;
    unsigned int ESR0TRIST : 1;
    unsigned int reserved_28 : 4;
} Ifx_SCU_PMSWSTAT_Bits;


typedef struct _Ifx_SCU_PMSWSTATCLR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int ESR1WKPCLR : 1;
    unsigned int ESR1OVRUNCLR : 1;
    unsigned int PINAWKPCLR : 1;
    unsigned int PINAOVRUNCLR : 1;
    unsigned int PINBWKPCLR : 1;
    unsigned int PINBOVRUNCLR : 1;
    unsigned int PWRWKPCLR : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_PMSWSTATCLR_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int CLRC : 1;
    unsigned int reserved_2 : 10;
    unsigned int CSS0 : 1;
    unsigned int CSS1 : 1;
    unsigned int CSS2 : 1;
    unsigned int reserved_15 : 1;
    unsigned int USRINFO : 16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    unsigned int ESR0 : 2;
    unsigned int ESR1 : 2;
    unsigned int reserved_4 : 2;
    unsigned int SMU : 2;
    unsigned int SW : 2;
    unsigned int STM0 : 2;
    unsigned int STM1 : 2;
    unsigned int STM2 : 2;
    unsigned int reserved_16 : 16;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    unsigned int ESR0 : 1;
    unsigned int ESR1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMU : 1;
    unsigned int SW : 1;
    unsigned int STM0 : 1;
    unsigned int STM1 : 1;
    unsigned int STM2 : 1;
    unsigned int reserved_8 : 8;
    unsigned int PORST : 1;
    unsigned int reserved_17 : 1;
    unsigned int CB0 : 1;
    unsigned int CB1 : 1;
    unsigned int CB3 : 1;
    unsigned int reserved_21 : 2;
    unsigned int EVR13 : 1;
    unsigned int EVR33 : 1;
    unsigned int SWD : 1;
    unsigned int reserved_26 : 2;
    unsigned int STBYR : 1;
    unsigned int reserved_29 : 3;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SAFECON_Bits
{
    unsigned int HBT : 1;
    unsigned int reserved_1 : 31;
} Ifx_SCU_SAFECON_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    unsigned int HWCFG : 8;
    unsigned int FTM : 7;
    unsigned int MODE : 1;
    unsigned int FCBAE : 1;
    unsigned int LUDIS : 1;
    unsigned int reserved_18 : 1;
    unsigned int TRSTL : 1;
    unsigned int SPDEN : 1;
    unsigned int reserved_21 : 3;
    unsigned int RAMINT : 1;
    unsigned int reserved_25 : 7;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SWRSTREQ : 1;
    unsigned int reserved_2 : 30;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    unsigned int CCTRIG0 : 1;
    unsigned int reserved_1 : 1;
    unsigned int RAMINTM : 2;
    unsigned int SETLUDIS : 1;
    unsigned int reserved_5 : 3;
    unsigned int DATM : 1;
    unsigned int reserved_9 : 23;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPDIS_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    unsigned int ESR0T : 1;
    unsigned int ESR1T : 1;
    unsigned int reserved_2 : 1;
    unsigned int SMUT : 1;
    unsigned int reserved_4 : 28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    unsigned int ENDINIT : 1;
    unsigned int LCK : 1;
    unsigned int PW : 14;
    unsigned int REL : 16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    unsigned int ENDINIT : 1;
    unsigned int LCK : 1;
    unsigned int PW : 14;
    unsigned int REL : 16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    unsigned int CLRIRF : 1;
    unsigned int reserved_1 : 1;
    unsigned int IR0 : 1;
    unsigned int DR : 1;
    unsigned int reserved_4 : 1;
    unsigned int IR1 : 1;
    unsigned int UR : 1;
    unsigned int PAR : 1;
    unsigned int TCR : 1;
    unsigned int TCTR : 7;
    unsigned int reserved_16 : 16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    unsigned int AE : 1;
    unsigned int OE : 1;
    unsigned int IS0 : 1;
    unsigned int DS : 1;
    unsigned int TO : 1;
    unsigned int IS1 : 1;
    unsigned int US : 1;
    unsigned int PAS : 1;
    unsigned int TCS : 1;
    unsigned int TCT : 7;
    unsigned int TIM : 16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ACCEN0_Bits B;
} Ifx_SCU_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ACCEN1_Bits B;
} Ifx_SCU_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON7_Bits B;
} Ifx_SCU_CCUCON7;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON8_Bits B;
} Ifx_SCU_CCUCON8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CCUCON9_Bits B;
} Ifx_SCU_CCUCON9;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSCON_Bits B;
} Ifx_SCU_DTSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSLIM_Bits B;
} Ifx_SCU_DTSLIM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_DTSSTAT_Bits B;
} Ifx_SCU_DTSSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ESRCFG_Bits B;
} Ifx_SCU_ESRCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVR13CON_Bits B;
} Ifx_SCU_EVR13CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVR33CON_Bits B;
} Ifx_SCU_EVR33CON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRADCSTAT_Bits B;
} Ifx_SCU_EVRADCSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRDVSTAT_Bits B;
} Ifx_SCU_EVRDVSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRMONCTRL_Bits B;
} Ifx_SCU_EVRMONCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVROSCCTRL_Bits B;
} Ifx_SCU_EVROSCCTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVROVMON_Bits B;
} Ifx_SCU_EVROVMON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRRSTCON_Bits B;
} Ifx_SCU_EVRRSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF1_Bits B;
} Ifx_SCU_EVRSDCOEFF1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF2_Bits B;
} Ifx_SCU_EVRSDCOEFF2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF3_Bits B;
} Ifx_SCU_EVRSDCOEFF3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF4_Bits B;
} Ifx_SCU_EVRSDCOEFF4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF5_Bits B;
} Ifx_SCU_EVRSDCOEFF5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCOEFF6_Bits B;
} Ifx_SCU_EVRSDCOEFF6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL1_Bits B;
} Ifx_SCU_EVRSDCTRL1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL2_Bits B;
} Ifx_SCU_EVRSDCTRL2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL3_Bits B;
} Ifx_SCU_EVRSDCTRL3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSDCTRL4_Bits B;
} Ifx_SCU_EVRSDCTRL4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRSTAT_Bits B;
} Ifx_SCU_EVRSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRTRIM_Bits B;
} Ifx_SCU_EVRTRIM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EVRUVMON_Bits B;
} Ifx_SCU_EVRUVMON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LCLCON_Bits B;
} Ifx_SCU_LCLCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON0_Bits B;
} Ifx_SCU_PLLCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON1_Bits B;
} Ifx_SCU_PLLCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLCON2_Bits B;
} Ifx_SCU_PLLCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYCON0_Bits B;
} Ifx_SCU_PLLERAYCON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYCON1_Bits B;
} Ifx_SCU_PLLERAYCON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLERAYSTAT_Bits B;
} Ifx_SCU_PLLERAYSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PLLSTAT_Bits B;
} Ifx_SCU_PLLSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMCSR_Bits B;
} Ifx_SCU_PMCSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWCR0_Bits B;
} Ifx_SCU_PMSWCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWSTAT_Bits B;
} Ifx_SCU_PMSWSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_PMSWSTATCLR_Bits B;
} Ifx_SCU_PMSWSTATCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SAFECON_Bits B;
} Ifx_SCU_SAFECON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPDIS_Bits B;
} Ifx_SCU_TRAPDIS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 2252 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
    Ifx_SCU_WDTCPU_CON0 CON0;
    Ifx_SCU_WDTCPU_CON1 CON1;
    Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;


typedef volatile struct _Ifx_SCU_WDTS
{
    Ifx_SCU_WDTS_CON0 CON0;
    Ifx_SCU_WDTS_CON1 CON1;
    Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 2278 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
    unsigned char reserved_0[8];
    Ifx_SCU_ID ID;
    unsigned char reserved_C[4];
    Ifx_SCU_OSCCON OSCCON;
    Ifx_SCU_PLLSTAT PLLSTAT;
    Ifx_SCU_PLLCON0 PLLCON0;
    Ifx_SCU_PLLCON1 PLLCON1;
    Ifx_SCU_PLLCON2 PLLCON2;
    Ifx_SCU_PLLERAYSTAT PLLERAYSTAT;
    Ifx_SCU_PLLERAYCON0 PLLERAYCON0;
    Ifx_SCU_PLLERAYCON1 PLLERAYCON1;
    Ifx_SCU_CCUCON0 CCUCON0;
    Ifx_SCU_CCUCON1 CCUCON1;
    Ifx_SCU_FDR FDR;
    Ifx_SCU_EXTCON EXTCON;
    Ifx_SCU_CCUCON2 CCUCON2;
    Ifx_SCU_CCUCON3 CCUCON3;
    Ifx_SCU_CCUCON4 CCUCON4;
    Ifx_SCU_CCUCON5 CCUCON5;
    Ifx_SCU_RSTSTAT RSTSTAT;
    unsigned char reserved_54[4];
    Ifx_SCU_RSTCON RSTCON;
    Ifx_SCU_ARSTDIS ARSTDIS;
    Ifx_SCU_SWRSTCON SWRSTCON;
    Ifx_SCU_RSTCON2 RSTCON2;
    unsigned char reserved_68[4];
    Ifx_SCU_EVRRSTCON EVRRSTCON;
    Ifx_SCU_ESRCFG ESRCFG[2];
    Ifx_SCU_ESROCFG ESROCFG;
    Ifx_SCU_SYSCON SYSCON;
    Ifx_SCU_CCUCON6 CCUCON6;
    Ifx_SCU_CCUCON7 CCUCON7;
    Ifx_SCU_CCUCON8 CCUCON8;
    Ifx_SCU_CCUCON9 CCUCON9;
    unsigned char reserved_90[12];
    Ifx_SCU_PDR PDR;
    Ifx_SCU_IOCR IOCR;
    Ifx_SCU_OUT OUT;
    Ifx_SCU_OMR OMR;
    Ifx_SCU_IN IN;
    Ifx_SCU_EVRSTAT EVRSTAT;
    Ifx_SCU_EVRDVSTAT EVRDVSTAT;
    Ifx_SCU_EVR13CON EVR13CON;
    Ifx_SCU_EVR33CON EVR33CON;
    Ifx_SCU_STSTAT STSTAT;
    unsigned char reserved_C4[4];
    Ifx_SCU_PMSWCR0 PMSWCR0;
    Ifx_SCU_PMSWSTAT PMSWSTAT;
    Ifx_SCU_PMSWSTATCLR PMSWSTATCLR;
    Ifx_SCU_PMCSR PMCSR[3];
    Ifx_SCU_DTSSTAT DTSSTAT;
    Ifx_SCU_DTSCON DTSCON;
    Ifx_SCU_PMSWCR1 PMSWCR1;
    unsigned char reserved_EC[4];
    Ifx_SCU_WDTS WDTS;
    Ifx_SCU_EMSR EMSR;
    Ifx_SCU_WDTCPU WDTCPU[3];
    Ifx_SCU_TRAPSTAT TRAPSTAT;
    Ifx_SCU_TRAPSET TRAPSET;
    Ifx_SCU_TRAPCLR TRAPCLR;
    Ifx_SCU_TRAPDIS TRAPDIS;
    Ifx_SCU_LCLCON LCLCON0;
    Ifx_SCU_LCLCON LCLCON1;
    Ifx_SCU_LCLTEST LCLTEST;
    Ifx_SCU_CHIPID CHIPID;
    Ifx_SCU_MANID MANID;
    unsigned char reserved_148[8];
    Ifx_SCU_SAFECON SAFECON;
    unsigned char reserved_154[16];
    Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
    Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
    Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
    unsigned char reserved_170[28];
    Ifx_SCU_PDISC PDISC;
    unsigned char reserved_190[8];
    Ifx_SCU_EVRTRIM EVRTRIM;
    Ifx_SCU_EVRADCSTAT EVRADCSTAT;
    Ifx_SCU_EVRUVMON EVRUVMON;
    Ifx_SCU_EVROVMON EVROVMON;
    Ifx_SCU_EVRMONCTRL EVRMONCTRL;
    unsigned char reserved_1AC[4];
    Ifx_SCU_EVRSDCTRL1 EVRSDCTRL1;
    Ifx_SCU_EVRSDCTRL2 EVRSDCTRL2;
    Ifx_SCU_EVRSDCTRL3 EVRSDCTRL3;
    Ifx_SCU_EVRSDCTRL4 EVRSDCTRL4;
    Ifx_SCU_EVRSDCOEFF1 EVRSDCOEFF1;
    Ifx_SCU_EVRSDCOEFF2 EVRSDCOEFF2;
    Ifx_SCU_EVRSDCOEFF3 EVRSDCOEFF3;
    Ifx_SCU_EVRSDCOEFF4 EVRSDCOEFF4;
    Ifx_SCU_EVRSDCOEFF5 EVRSDCOEFF5;
    Ifx_SCU_EVRSDCOEFF6 EVRSDCOEFF6;
    Ifx_SCU_EVROSCCTRL EVROSCCTRL;
    unsigned char reserved_1DC[4];
    Ifx_SCU_OVCENABLE OVCENABLE;
    Ifx_SCU_OVCCON OVCCON;
    unsigned char reserved_1E8[40];
    Ifx_SCU_EICR EICR[4];
    Ifx_SCU_EIFR EIFR;
    Ifx_SCU_FMR FMR;
    Ifx_SCU_PDRR PDRR;
    Ifx_SCU_IGCR IGCR[4];
    unsigned char reserved_23C[4];
    Ifx_SCU_DTSLIM DTSLIM;
    unsigned char reserved_244[436];
    Ifx_SCU_ACCEN1 ACCEN1;
    Ifx_SCU_ACCEN0 ACCEN0;
} Ifx_SCU;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 2
# 49 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.asm.h" 1
# 45 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.asm.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password);






static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_calculateLfsr(uint16 password)
{

    uint32 temp = password;
    uint16 res;
    __asm("xor.t  %0,%1,0,%1,2   \n           xor.t  %0,%0,0,%1,12  \n           xor.t  %0,%0,0,%1,13  \n           xor.t  %0,%0,0,%1,14  \n           sh     %1,-1 \n           ins.t  %0,%1,14,%0,0   \n"




                                      : "=&d" (res) : "d" (temp));
    return res;

}
# 50 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 2
# 59 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
typedef struct
{
    uint16 password;
    uint16 reload;
    IfxScu_WDTCON1_IR inputFrequency;
    boolean disableWatchdog;
    boolean enableSmuRestriction;
    boolean enableAutomaticPasswordChange;
    boolean enableTimerCheck;
    boolean enableTimerCheckTolerance;
    boolean clrInternalResetFlag;
} IfxScuWdt_Config;
# 86 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initConfig(IfxScuWdt_Config *config);
# 99 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initCpuWatchdog(Ifx_SCU_WDTCPU *wdt, IfxScuWdt_Config *config);
# 112 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_initSafetyWatchdog(Ifx_SCU_WDTS *wdt, IfxScuWdt_Config *config);
# 135 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 148 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password);
# 160 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password);
# 171 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password);
# 187 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearCpuEndinit(uint16 password);
# 199 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_clearSafetyEndinit(uint16 password);
# 209 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setCpuEndinit(uint16 password);
# 219 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_setSafetyEndinit(uint16 password);
# 239 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog);




static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void);
# 254 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void);
# 268 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogPassword(uint16 password, uint16 newPassword);
# 279 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeCpuWatchdogReload(uint16 password, uint16 reload);
# 289 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogPassword(uint16 password, uint16 newPassword);
# 300 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_changeSafetyWatchdogReload(uint16 password, uint16 reload);
# 310 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableCpuWatchdog(uint16 password);
# 320 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_disableSafetyWatchdog(uint16 password);
# 330 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableCpuWatchdog(uint16 password);
# 340 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_enableSafetyWatchdog(uint16 password);
# 349 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getCpuWatchdogPassword(void);
# 358 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern uint16 IfxScuWdt_getSafetyWatchdogPassword(void);
# 368 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceCpuWatchdog(uint16 password);
# 378 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
extern void IfxScuWdt_serviceSafetyWatchdog(uint16 password);







static inline __attribute__ ((always_inline)) void IfxScuWdt_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_clearSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;

    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 0;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 1)
    {}
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    uint16 password;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) boolean IfxScuWdt_getSafetyWatchdogEndInit(void)
{
    return (boolean)((*(Ifx_SCU *)0xF0036000u)).WDTS.CON0.B.ENDINIT;
}


static inline __attribute__ ((always_inline)) uint16 IfxScuWdt_getSafetyWatchdogPasswordInline(void)
{
    uint16 password;
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;




    password = watchdog->CON0.B.PW;
    password ^= 0x003F;

    return password;
}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, uint16 password)
{

    Ifx_SCU_WDTCPU_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}


}


static inline __attribute__ ((always_inline)) void IfxScuWdt_setSafetyEndinitInline(uint16 password)
{
    Ifx_SCU_WDTS *watchdog = &((*(Ifx_SCU *)0xF0036000u)).WDTS;


    Ifx_SCU_WDTS_CON0 wdt_con0;
    wdt_con0.U = watchdog->CON0.U;

    if (wdt_con0.B.LCK)
    {

        wdt_con0.B.ENDINIT = 1;
        wdt_con0.B.LCK = 0;
        wdt_con0.B.PW = password;


        watchdog->CON0.U = wdt_con0.U;
    }


    wdt_con0.B.ENDINIT = 1;
    wdt_con0.B.LCK = 1;
    watchdog->CON0.U = wdt_con0.U;


    while (watchdog->CON0.B.ENDINIT == 0)
    {}
}
# 29 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/4_McHal/Tricore/Port/Io/IfxPort_Io.h" 1
# 151 "./0_Src/4_McHal/Tricore/Port/Io/IfxPort_Io.h"
# 1 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 1
# 43 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h" 1
# 84 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int EN16 : 1;
    unsigned int EN17 : 1;
    unsigned int EN18 : 1;
    unsigned int EN19 : 1;
    unsigned int EN20 : 1;
    unsigned int EN21 : 1;
    unsigned int EN22 : 1;
    unsigned int EN23 : 1;
    unsigned int EN24 : 1;
    unsigned int EN25 : 1;
    unsigned int EN26 : 1;
    unsigned int EN27 : 1;
    unsigned int EN28 : 1;
    unsigned int EN29 : 1;
    unsigned int EN30 : 1;
    unsigned int EN31 : 1;
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
{
    unsigned int EN0 : 1;
    unsigned int EN1 : 1;
    unsigned int EN2 : 1;
    unsigned int EN3 : 1;
    unsigned int EN4 : 1;
    unsigned int EN5 : 1;
    unsigned int EN6 : 1;
    unsigned int EN7 : 1;
    unsigned int EN8 : 1;
    unsigned int EN9 : 1;
    unsigned int EN10 : 1;
    unsigned int EN11 : 1;
    unsigned int EN12 : 1;
    unsigned int EN13 : 1;
    unsigned int EN14 : 1;
    unsigned int EN15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC0 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC1 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC2 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC3 : 5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC12 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC13 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC14 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC15 : 5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC4 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC5 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC6 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC7 : 5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int PC8 : 5;
    unsigned int reserved_8 : 3;
    unsigned int PC9 : 5;
    unsigned int reserved_16 : 3;
    unsigned int PC10 : 5;
    unsigned int reserved_24 : 3;
    unsigned int PC11 : 5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_LPCR0_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_P_LPCR0_Bits;


typedef struct _Ifx_P_LPCR1_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int PS1 : 1;
    unsigned int reserved_2 : 30;
} Ifx_P_LPCR1_Bits;


typedef struct _Ifx_P_LPCR1_P21_Bits
{
    unsigned int RDIS_CTRL : 1;
    unsigned int RX_DIS : 1;
    unsigned int TERM : 1;
    unsigned int LRXTERM : 5;
    unsigned int reserved_8 : 24;
} Ifx_P_LPCR1_P21_Bits;


typedef struct _Ifx_P_LPCR2_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int LVDSR : 1;
    unsigned int LVDSRL : 1;
    unsigned int reserved_10 : 2;
    unsigned int TDIS_CTRL : 1;
    unsigned int TX_DIS : 1;
    unsigned int TX_PD : 1;
    unsigned int TX_PWDPD : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_LPCR2_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int reserved_20 : 12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    unsigned int reserved_0 : 28;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    unsigned int reserved_0 : 20;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int reserved_24 : 8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int reserved_28 : 4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int PCL0 : 1;
    unsigned int PCL1 : 1;
    unsigned int PCL2 : 1;
    unsigned int PCL3 : 1;
    unsigned int PCL4 : 1;
    unsigned int PCL5 : 1;
    unsigned int PCL6 : 1;
    unsigned int PCL7 : 1;
    unsigned int PCL8 : 1;
    unsigned int PCL9 : 1;
    unsigned int PCL10 : 1;
    unsigned int PCL11 : 1;
    unsigned int PCL12 : 1;
    unsigned int PCL13 : 1;
    unsigned int PCL14 : 1;
    unsigned int PCL15 : 1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int reserved_4 : 28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    unsigned int reserved_0 : 12;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    unsigned int reserved_0 : 4;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int reserved_8 : 24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    unsigned int reserved_0 : 8;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int reserved_12 : 20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    unsigned int PS0 : 1;
    unsigned int PS1 : 1;
    unsigned int PS2 : 1;
    unsigned int PS3 : 1;
    unsigned int PS4 : 1;
    unsigned int PS5 : 1;
    unsigned int PS6 : 1;
    unsigned int PS7 : 1;
    unsigned int PS8 : 1;
    unsigned int PS9 : 1;
    unsigned int PS10 : 1;
    unsigned int PS11 : 1;
    unsigned int PS12 : 1;
    unsigned int PS13 : 1;
    unsigned int PS14 : 1;
    unsigned int PS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    unsigned int P0 : 1;
    unsigned int P1 : 1;
    unsigned int P2 : 1;
    unsigned int P3 : 1;
    unsigned int P4 : 1;
    unsigned int P5 : 1;
    unsigned int P6 : 1;
    unsigned int P7 : 1;
    unsigned int P8 : 1;
    unsigned int P9 : 1;
    unsigned int P10 : 1;
    unsigned int P11 : 1;
    unsigned int P12 : 1;
    unsigned int P13 : 1;
    unsigned int P14 : 1;
    unsigned int P15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    unsigned int SEL0 : 1;
    unsigned int SEL1 : 1;
    unsigned int SEL2 : 1;
    unsigned int SEL3 : 1;
    unsigned int SEL4 : 1;
    unsigned int SEL5 : 1;
    unsigned int SEL6 : 1;
    unsigned int reserved_7 : 3;
    unsigned int SEL10 : 1;
    unsigned int SEL11 : 1;
    unsigned int reserved_12 : 19;
    unsigned int LCK : 1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    unsigned int PDIS0 : 1;
    unsigned int PDIS1 : 1;
    unsigned int PDIS2 : 1;
    unsigned int PDIS3 : 1;
    unsigned int PDIS4 : 1;
    unsigned int PDIS5 : 1;
    unsigned int PDIS6 : 1;
    unsigned int PDIS7 : 1;
    unsigned int PDIS8 : 1;
    unsigned int PDIS9 : 1;
    unsigned int PDIS10 : 1;
    unsigned int PDIS11 : 1;
    unsigned int PDIS12 : 1;
    unsigned int PDIS13 : 1;
    unsigned int PDIS14 : 1;
    unsigned int PDIS15 : 1;
    unsigned int reserved_16 : 16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    unsigned int PD0 : 3;
    unsigned int PL0 : 1;
    unsigned int PD1 : 3;
    unsigned int PL1 : 1;
    unsigned int PD2 : 3;
    unsigned int PL2 : 1;
    unsigned int PD3 : 3;
    unsigned int PL3 : 1;
    unsigned int PD4 : 3;
    unsigned int PL4 : 1;
    unsigned int PD5 : 3;
    unsigned int PL5 : 1;
    unsigned int PD6 : 3;
    unsigned int PL6 : 1;
    unsigned int PD7 : 3;
    unsigned int PL7 : 1;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    unsigned int PD8 : 3;
    unsigned int PL8 : 1;
    unsigned int PD9 : 3;
    unsigned int PL9 : 1;
    unsigned int PD10 : 3;
    unsigned int PL10 : 1;
    unsigned int PD11 : 3;
    unsigned int PL11 : 1;
    unsigned int PD12 : 3;
    unsigned int PL12 : 1;
    unsigned int PD13 : 3;
    unsigned int PL13 : 1;
    unsigned int PD14 : 3;
    unsigned int PL14 : 1;
    unsigned int PD15 : 3;
    unsigned int PL15 : 1;
} Ifx_P_PDR1_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR0_Bits B;
} Ifx_P_LPCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR1_Bits B;

    Ifx_P_LPCR1_P21_Bits B_P21;
} Ifx_P_LPCR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_LPCR2_Bits B;
} Ifx_P_LPCR2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 825 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
    Ifx_P_OUT OUT;
    Ifx_P_OMR OMR;
    Ifx_P_ID ID;
    unsigned char reserved_C[4];
    Ifx_P_IOCR0 IOCR0;
    Ifx_P_IOCR4 IOCR4;
    Ifx_P_IOCR8 IOCR8;
    Ifx_P_IOCR12 IOCR12;
    unsigned char reserved_20[4];
    Ifx_P_IN IN;
    unsigned char reserved_28[24];
    Ifx_P_PDR0 PDR0;
    Ifx_P_PDR1 PDR1;
    unsigned char reserved_48[8];
    Ifx_P_ESR ESR;
    unsigned char reserved_54[12];
    Ifx_P_PDISC PDISC;
    Ifx_P_PCSR PCSR;
    unsigned char reserved_68[8];
    Ifx_P_OMSR0 OMSR0;
    Ifx_P_OMSR4 OMSR4;
    Ifx_P_OMSR8 OMSR8;
    Ifx_P_OMSR12 OMSR12;
    Ifx_P_OMCR0 OMCR0;
    Ifx_P_OMCR4 OMCR4;
    Ifx_P_OMCR8 OMCR8;
    Ifx_P_OMCR12 OMCR12;
    Ifx_P_OMSR OMSR;
    Ifx_P_OMCR OMCR;
    unsigned char reserved_98[8];
    Ifx_P_LPCR0 LPCR0;
    Ifx_P_LPCR1 LPCR1;
    Ifx_P_LPCR2 LPCR2;
    unsigned char reserved_A4[76];
    Ifx_P_ACCEN1 ACCEN1;
    Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 85 "./0_Src/4_McHal/Tricore/_Reg/IfxPort_reg.h" 2
# 42 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 2
# 59 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
typedef struct
{
    Ifx_P *port;
    uint16 masks;
} IfxPort_Esr_Masks;





extern const IfxPort_Esr_Masks IfxPort_cfg_esrMasks[(16)];

extern const IfxModule_IndexMap IfxPort_cfg_indexMap[(16)];
# 44 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 1
# 45 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 2
# 55 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
typedef enum
{
    IfxPort_ControlledBy_port = 0,
    IfxPort_ControlledBy_hsct = 1
} IfxPort_ControlledBy;



typedef enum
{
    IfxPort_InputMode_undefined = -1,
    IfxPort_InputMode_noPullDevice = 0 << 3,
        IfxPort_InputMode_pullDown = 1U << 3,
        IfxPort_InputMode_pullUp = 2U << 3
} IfxPort_InputMode;





typedef enum
{
    IfxPort_Mode_inputNoPullDevice = 0,
    IfxPort_Mode_inputPullDown = 8U,
    IfxPort_Mode_inputPullUp = 0x10U,
    IfxPort_Mode_outputPushPullGeneral = 0x80U,
    IfxPort_Mode_outputPushPullAlt1 = 0x88U,
    IfxPort_Mode_outputPushPullAlt2 = 0x90U,
    IfxPort_Mode_outputPushPullAlt3 = 0x98U,
    IfxPort_Mode_outputPushPullAlt4 = 0xA0U,
    IfxPort_Mode_outputPushPullAlt5 = 0xA8U,
    IfxPort_Mode_outputPushPullAlt6 = 0xB0U,
    IfxPort_Mode_outputPushPullAlt7 = 0xB8U,
    IfxPort_Mode_outputOpenDrainGeneral = 0xC0U,
    IfxPort_Mode_outputOpenDrainAlt1 = 0xC8U,
    IfxPort_Mode_outputOpenDrainAlt2 = 0xD0U,
    IfxPort_Mode_outputOpenDrainAlt3 = 0xD8U,
    IfxPort_Mode_outputOpenDrainAlt4 = 0xE0U,
    IfxPort_Mode_outputOpenDrainAlt5 = 0xE8U,
    IfxPort_Mode_outputOpenDrainAlt6 = 0xF0U,
    IfxPort_Mode_outputOpenDrainAlt7 = 0xF8U
} IfxPort_Mode;



typedef enum
{
    IfxPort_OutputIdx_general = 0x10U << 3,
        IfxPort_OutputIdx_alt1 = 0x11U << 3,
        IfxPort_OutputIdx_alt2 = 0x12U << 3,
        IfxPort_OutputIdx_alt3 = 0x13U << 3,
        IfxPort_OutputIdx_alt4 = 0x14U << 3,
        IfxPort_OutputIdx_alt5 = 0x15U << 3,
        IfxPort_OutputIdx_alt6 = 0x16U << 3,
        IfxPort_OutputIdx_alt7 = 0x17U << 3
} IfxPort_OutputIdx;



typedef enum
{
    IfxPort_OutputMode_pushPull = 0x10U << 3,
        IfxPort_OutputMode_openDrain = 0x18U << 3
} IfxPort_OutputMode;





typedef enum
{
    IfxPort_PadDriver_cmosAutomotiveSpeed1 = 0,
    IfxPort_PadDriver_cmosAutomotiveSpeed2 = 1,
    IfxPort_PadDriver_cmosAutomotiveSpeed3 = 2,
    IfxPort_PadDriver_cmosAutomotiveSpeed4 = 3,
    IfxPort_PadDriver_lvdsSpeed1 = 4,
    IfxPort_PadDriver_lvdsSpeed2 = 5,
    IfxPort_PadDriver_lvdsSpeed3 = 6,
    IfxPort_PadDriver_lvdsSpeed4 = 7,
    IfxPort_PadDriver_ttlSpeed1 = 8,
    IfxPort_PadDriver_ttlSpeed2 = 9,
    IfxPort_PadDriver_ttlSpeed3 = 10,
    IfxPort_PadDriver_ttlSpeed4 = 11
} IfxPort_PadDriver;



typedef enum
{
    IfxPort_PadSupply_5v = 0,
    IfxPort_PadSupply_3v = 1
} IfxPort_PadSupply;





typedef enum
{
    IfxPort_State_notChanged = (0 << 16) | (0 << 0),
    IfxPort_State_high = (0 << 16) | (1U << 0),
    IfxPort_State_low = (1U << 16) | (0 << 0),
    IfxPort_State_toggled = (1U << 16) | (1U << 0)
} IfxPort_State;
# 170 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
} IfxPort_Pin;



typedef struct
{
    Ifx_P *port;
    uint8 pinIndex;
    IfxPort_OutputIdx mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Pin_Config;
# 208 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex);
# 223 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex);
# 238 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex);
# 252 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode);
# 267 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 283 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action);
# 298 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex);
# 321 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_disableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 339 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern boolean IfxPort_enableEmergencyStop(Ifx_P *port, uint8 pinIndex);
# 355 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinMode(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode);
# 370 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinPadDriver(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver padDriver);
# 394 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask);
# 413 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data);
# 423 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern sint32 IfxPort_getIndex(Ifx_P *port);
# 439 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeInput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_InputMode mode);
# 456 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupModeOutput(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_OutputMode mode, IfxPort_OutputIdx index);
# 472 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setGroupPadDriver(Ifx_P *port, uint8 pinIndex, uint16 mask, IfxPort_PadDriver padDriver);
# 481 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsMedium(Ifx_P *port, uint8 pinIndex, IfxPort_PadDriver lvdsPadDriver, IfxPort_PadSupply padSupply);
# 490 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setPinModeLvdsHigh(Ifx_P *port, uint8 pinIndex, IfxPort_Mode mode, IfxPort_ControlledBy enablePortControlled);
# 507 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_resetESR(Ifx_P *port, uint8 pinIndex);
# 518 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
extern void IfxPort_setESR(Ifx_P *port, uint8 pinIndex);





static inline __attribute__ ((always_inline)) uint32 IfxPort_getGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask)
{
    return (uint32)((port->IN.U) >> (pinIndex)) & mask;
}


static inline __attribute__ ((always_inline)) boolean IfxPort_getPinState(Ifx_P *port, uint8 pinIndex)
{
    return (((*(&port->IN.U) & (1U << (pinIndex))) != 0) != 0) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxPort_setGroupState(Ifx_P *port, uint8 pinIndex, uint16 mask, uint16 data)
{
    port->OUT.U = (port->OUT.U & ~((uint32)(mask)) << pinIndex) | (data << pinIndex);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinHigh(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_high);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinLow(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_low);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeInput(Ifx_P *port, uint8 pinIndex, IfxPort_InputMode mode)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)mode);
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinModeOutput(Ifx_P *port, uint8 pinIndex, IfxPort_OutputMode mode, IfxPort_OutputIdx index)
{
    IfxPort_setPinMode(port, pinIndex, (IfxPort_Mode)(index | mode));
}


static inline __attribute__ ((always_inline)) void IfxPort_setPinState(Ifx_P *port, uint8 pinIndex, IfxPort_State action)
{
    port->OMR.U = action << pinIndex;
}


static inline __attribute__ ((always_inline)) void IfxPort_togglePin(Ifx_P *port, uint8 pinIndex)
{
    IfxPort_setPinState(port, pinIndex, IfxPort_State_toggled);
}
# 152 "./0_Src/4_McHal/Tricore/Port/Io/IfxPort_Io.h" 2







typedef struct
{
    const IfxPort_Pin *pin;
    IfxPort_Mode mode;
    IfxPort_PadDriver padDriver;
} IfxPort_Io_ConfigPin;





typedef struct
{
    uint32 size;
    IfxPort_Io_ConfigPin *pinTable;
} IfxPort_Io_Config;
# 188 "./0_Src/4_McHal/Tricore/Port/Io/IfxPort_Io.h"
extern void IfxPort_Io_initModule(const IfxPort_Io_Config *config);
# 30 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/0_AppSw/Tricore/OTCP/protomod.h" 1
# 1 "./0_Src/0_AppSw/Tricore/OTCP/datatypes.h" 1
# 2 "./0_Src/0_AppSw/Tricore/OTCP/protomod.h" 2
# 16 "./0_Src/0_AppSw/Tricore/OTCP/protomod.h"
extern unsigned short MODBUS_NODE_ID;
# 52 "./0_Src/0_AppSw/Tricore/OTCP/protomod.h"
typedef struct
{
   unsigned short address ;
   void* data_;
   unsigned char data_type;
} MAP_DESC_TYP;

extern MAP_DESC_TYP holding_map[15];
extern MAP_DESC_TYP register_map[1];

typedef struct
{
   unsigned char *buf ;
   unsigned char length ;
} RESPONSE_TYP ;

typedef struct
{
   unsigned char function ;
   unsigned char node_id ;
   unsigned short address;
   unsigned short length;
   void *data_;
   unsigned short checksum;
   unsigned char data_type;

} IN_BUF_TYP ;
# 90 "./0_Src/0_AppSw/Tricore/OTCP/protomod.h"
void modbus_init ( void ) ;
void Modbus_process( void );




unsigned char modbusRespond (MAP_DESC_TYP *temp_md );
void UARTIntInit ( unsigned char iport) ;
unsigned char modbusParseMessage( void );
MAP_DESC_TYP *modbusFetchData( void );
MAP_DESC_TYP *modbusStoreData( void );
extern unsigned short InitHolding_MapArray[15];
char get_ini_file_byte(void);
void reset_in_ini_file_idx(void);
# 31 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/0_AppSw/Tricore/OTCP/timers.h" 1
# 67 "./0_Src/0_AppSw/Tricore/OTCP/timers.h"
# 1 "./0_Src/0_AppSw/Tricore/OTCP/datatypes.h" 1
# 68 "./0_Src/0_AppSw/Tricore/OTCP/timers.h" 2
# 89 "./0_Src/0_AppSw/Tricore/OTCP/timers.h"
unsigned char get_timer(void);
void free_timer(unsigned char);
void init_timer(unsigned char,unsigned int);
void timer_pool_init(void);
unsigned int check_timer(unsigned char);
void decrement_timers(void);
void ethernet_timers_polling(void);
# 32 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h" 1
# 49 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h"
typedef struct _Ifx_GTM_ACCEN0_Bits
{
    volatile unsigned int EN0 : 1;
    volatile unsigned int EN1 : 1;
    volatile unsigned int EN2 : 1;
    volatile unsigned int EN3 : 1;
    volatile unsigned int EN4 : 1;
    volatile unsigned int EN5 : 1;
    volatile unsigned int EN6 : 1;
    volatile unsigned int EN7 : 1;
    volatile unsigned int EN8 : 1;
    volatile unsigned int EN9 : 1;
    volatile unsigned int EN10 : 1;
    volatile unsigned int EN11 : 1;
    volatile unsigned int EN12 : 1;
    volatile unsigned int EN13 : 1;
    volatile unsigned int EN14 : 1;
    volatile unsigned int EN15 : 1;
    volatile unsigned int EN16 : 1;
    volatile unsigned int EN17 : 1;
    volatile unsigned int EN18 : 1;
    volatile unsigned int EN19 : 1;
    volatile unsigned int EN20 : 1;
    volatile unsigned int EN21 : 1;
    volatile unsigned int EN22 : 1;
    volatile unsigned int EN23 : 1;
    volatile unsigned int EN24 : 1;
    volatile unsigned int EN25 : 1;
    volatile unsigned int EN26 : 1;
    volatile unsigned int EN27 : 1;
    volatile unsigned int EN28 : 1;
    volatile unsigned int EN29 : 1;
    volatile unsigned int EN30 : 1;
    volatile unsigned int EN31 : 1;
} Ifx_GTM_ACCEN0_Bits;


typedef struct _Ifx_GTM_ACCEN1_Bits
{
    volatile unsigned int reserved_0 : 32;
} Ifx_GTM_ACCEN1_Bits;


typedef struct _Ifx_GTM_ADCTRIG0OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int SEL4 : 4;
    volatile unsigned int SEL5 : 4;
    volatile unsigned int SEL6 : 4;
    volatile unsigned int SEL7 : 4;
} Ifx_GTM_ADCTRIG0OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG0OUT1_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_ADCTRIG0OUT1_Bits;


typedef struct _Ifx_GTM_ADCTRIG1OUT0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int SEL4 : 4;
    volatile unsigned int SEL5 : 4;
    volatile unsigned int SEL6 : 4;
    volatile unsigned int SEL7 : 4;
} Ifx_GTM_ADCTRIG1OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG1OUT1_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_ADCTRIG1OUT1_Bits;


typedef struct _Ifx_GTM_AEI_ADDR_XPT_Bits
{
    volatile unsigned int TO_ADDR : 20;
    volatile unsigned int TO_W1R0 : 1;
    volatile unsigned int reserved_21 : 11;
} Ifx_GTM_AEI_ADDR_XPT_Bits;


typedef struct _Ifx_GTM_AFD_CH_BUF_ACC_Bits
{
    volatile unsigned int DATA : 29;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_AFD_CH_BUF_ACC_Bits;


typedef struct _Ifx_GTM_ARU_ARU_ACCESS_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int RREQ : 1;
    volatile unsigned int WREQ : 1;
    volatile unsigned int reserved_14 : 18;
} Ifx_GTM_ARU_ARU_ACCESS_Bits;


typedef struct _Ifx_GTM_ARU_DATA_H_Bits
{
    volatile unsigned int DATA : 29;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_ARU_DATA_H_Bits;


typedef struct _Ifx_GTM_ARU_DATA_L_Bits
{
    volatile unsigned int DATA : 29;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_ARU_DATA_L_Bits;


typedef struct _Ifx_GTM_ARU_DBG_ACCESS0_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_ARU_DBG_ACCESS0_Bits;


typedef struct _Ifx_GTM_ARU_DBG_ACCESS1_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_ARU_DBG_ACCESS1_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA0_H_Bits
{
    volatile unsigned int DATA : 29;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_ARU_DBG_DATA0_H_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA0_L_Bits
{
    volatile unsigned int DATA : 29;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_ARU_DBG_DATA0_L_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA1_H_Bits
{
    volatile unsigned int DATA : 29;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_ARU_DBG_DATA1_H_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA1_L_Bits
{
    volatile unsigned int DATA : 29;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_ARU_DBG_DATA1_L_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_EN_Bits
{
    volatile unsigned int NEW_DATA0_IRQ_EN : 1;
    volatile unsigned int NEW_DATA1_IRQ_EN : 1;
    volatile unsigned int ACC_ACK_IRQ_EN : 1;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_ARU_IRQ_EN_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEW_DATA0 : 1;
    volatile unsigned int TRG_NEW_DATA : 1;
    volatile unsigned int TRG_ACC_ACK : 1;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_ARU_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ARU_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEW_DATA0 : 1;
    volatile unsigned int NEW_DATA1 : 1;
    volatile unsigned int ACC_ACK : 1;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_ARU_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_ATOM_AGC_ACT_TB_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ATOM_AGC_INT_TRIG_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CM0_Bits
{
    volatile unsigned int CM0 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_ATOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CM1_Bits
{
    volatile unsigned int CM1 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_ATOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CN0_Bits
{
    volatile unsigned int CN0 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_ATOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CTRL_Bits
{
    volatile unsigned int MODE : 2;
    volatile unsigned int TB12_SEL : 1;
    volatile unsigned int ARU_EN : 1;
    volatile unsigned int ACB : 5;
    volatile unsigned int CMP_CTRL : 1;
    volatile unsigned int reserved_10 : 1;
    volatile unsigned int SL : 1;
    volatile unsigned int CLK_SRC : 3;
    volatile unsigned int reserved_15 : 1;
    volatile unsigned int WR_REQ : 1;
    volatile unsigned int reserved_17 : 3;
    volatile unsigned int RST_CCU0 : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int TRIGOUT : 1;
    volatile unsigned int SLA : 1;
    volatile unsigned int OSM : 1;
    volatile unsigned int ABM : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_ATOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN : 1;
    volatile unsigned int CCU1TC_IRQ_EN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ATOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC : 1;
    volatile unsigned int TRG_CCU1TC : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ATOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC : 1;
    volatile unsigned int CCU1TC : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_ATOM_CH_RDADDR_Bits
{
    volatile unsigned int RDADDR0 : 9;
    volatile unsigned int reserved_9 : 7;
    volatile unsigned int RDADDR1 : 9;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_ATOM_CH_RDADDR_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMC_Bits
{
    volatile unsigned int MODE : 2;
    volatile unsigned int TB12_SEL : 1;
    volatile unsigned int ARU_EN : 1;
    volatile unsigned int ACB10 : 2;
    volatile unsigned int ACB42 : 3;
    volatile unsigned int CMP_CTRL : 1;
    volatile unsigned int reserved_10 : 1;
    volatile unsigned int SL : 1;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int WR_REQ : 1;
    volatile unsigned int reserved_17 : 7;
    volatile unsigned int TRIGOUT : 1;
    volatile unsigned int SLA : 1;
    volatile unsigned int reserved_26 : 1;
    volatile unsigned int ABM : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_ATOM_CH_SOMC_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMI_Bits
{
    volatile unsigned int MODE : 2;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int ARU_EN : 1;
    volatile unsigned int ACB0 : 1;
    volatile unsigned int reserved_5 : 6;
    volatile unsigned int SL : 1;
    volatile unsigned int reserved_12 : 20;
} Ifx_GTM_ATOM_CH_SOMI_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMP_Bits
{
    volatile unsigned int MODE : 2;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int ARU_EN : 1;
    volatile unsigned int ADL : 2;
    volatile unsigned int reserved_6 : 5;
    volatile unsigned int SL : 1;
    volatile unsigned int CLK_SRC_SR : 3;
    volatile unsigned int reserved_15 : 5;
    volatile unsigned int RST_CCU0 : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int TRIGOUT : 1;
    volatile unsigned int reserved_25 : 1;
    volatile unsigned int OSM : 1;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_ATOM_CH_SOMP_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMS_Bits
{
    volatile unsigned int MODE : 2;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int ARU_EN : 1;
    volatile unsigned int ACB0 : 1;
    volatile unsigned int reserved_5 : 6;
    volatile unsigned int SL : 1;
    volatile unsigned int CLK_SRC : 3;
    volatile unsigned int reserved_15 : 11;
    volatile unsigned int OSM : 1;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_ATOM_CH_SOMS_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SR0_Bits
{
    volatile unsigned int SR0 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_ATOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SR1_Bits
{
    volatile unsigned int SR1 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_ATOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_ATOM_CH_STAT_Bits
{
    volatile unsigned int OL : 1;
    volatile unsigned int reserved_1 : 15;
    volatile unsigned int ACBI : 5;
    volatile unsigned int DV : 1;
    volatile unsigned int WRF : 1;
    volatile unsigned int reserved_23 : 1;
    volatile unsigned int ACBO : 5;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_ATOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_BRC_EIRQ_EN_Bits
{
    volatile unsigned int DEST_ERR_EN : 1;
    volatile unsigned int DID_EN0 : 1;
    volatile unsigned int DID_EN1 : 1;
    volatile unsigned int DID_EN2 : 1;
    volatile unsigned int DID_EN3 : 1;
    volatile unsigned int DID_EN4 : 1;
    volatile unsigned int DID_EN5 : 1;
    volatile unsigned int DID_EN6 : 1;
    volatile unsigned int DID_EN7 : 1;
    volatile unsigned int DID_EN8 : 1;
    volatile unsigned int DID_EN9 : 1;
    volatile unsigned int DID_EN10 : 1;
    volatile unsigned int DID_EN11 : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_EN_Bits
{
    volatile unsigned int DEST_ERR_EN : 1;
    volatile unsigned int DID_EN0 : 1;
    volatile unsigned int DID_EN1 : 1;
    volatile unsigned int DID_EN2 : 1;
    volatile unsigned int DID_EN3 : 1;
    volatile unsigned int DID_EN4 : 1;
    volatile unsigned int DID_EN5 : 1;
    volatile unsigned int DID_EN6 : 1;
    volatile unsigned int DID_EN7 : 1;
    volatile unsigned int DID_EN8 : 1;
    volatile unsigned int DID_EN9 : 1;
    volatile unsigned int DID_EN10 : 1;
    volatile unsigned int DID_EN11 : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_IRQ_EN_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_DEST_ERR : 1;
    volatile unsigned int TRG_DID0 : 1;
    volatile unsigned int TRG_DID1 : 1;
    volatile unsigned int TRG_DID2 : 1;
    volatile unsigned int TRG_DID3 : 1;
    volatile unsigned int TRG_DID4 : 1;
    volatile unsigned int TRG_DID5 : 1;
    volatile unsigned int TRG_DID6 : 1;
    volatile unsigned int TRG_DID7 : 1;
    volatile unsigned int TRG_DID8 : 1;
    volatile unsigned int TRG_DID9 : 1;
    volatile unsigned int TRG_DID10 : 1;
    volatile unsigned int TRG_DID11 : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_BRC_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_NOTIFY_Bits
{
    volatile unsigned int DEST_ERR : 1;
    volatile unsigned int DID0 : 1;
    volatile unsigned int DID1 : 1;
    volatile unsigned int DID2 : 1;
    volatile unsigned int DID3 : 1;
    volatile unsigned int DID4 : 1;
    volatile unsigned int DID5 : 1;
    volatile unsigned int DID6 : 1;
    volatile unsigned int DID7 : 1;
    volatile unsigned int DID8 : 1;
    volatile unsigned int DID9 : 1;
    volatile unsigned int DID10 : 1;
    volatile unsigned int DID11 : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_BRC_RST_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_BRC_RST_Bits;


typedef struct _Ifx_GTM_BRC_SRC0_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC0_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC0_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC0_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC10_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC10_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC10_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC10_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC11_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC11_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC11_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC11_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC1_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC1_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC1_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC1_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC2_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC2_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC2_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC2_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC3_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC3_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC3_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC3_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC4_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC4_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC4_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC4_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC5_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC5_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC5_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC5_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC6_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC6_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC6_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC6_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC7_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC7_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC7_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC7_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC8_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC8_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC8_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC8_DEST_Bits;


typedef struct _Ifx_GTM_BRC_SRC9_ADDR_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 3;
    volatile unsigned int BRC_MODE : 1;
    volatile unsigned int reserved_13 : 19;
} Ifx_GTM_BRC_SRC9_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC9_DEST_Bits
{
    volatile unsigned int EN_DEST0 : 1;
    volatile unsigned int EN_DEST1 : 1;
    volatile unsigned int EN_DEST2 : 1;
    volatile unsigned int EN_DEST3 : 1;
    volatile unsigned int EN_DEST4 : 1;
    volatile unsigned int EN_DEST5 : 1;
    volatile unsigned int EN_DEST6 : 1;
    volatile unsigned int EN_DEST7 : 1;
    volatile unsigned int EN_DEST8 : 1;
    volatile unsigned int EN_DEST9 : 1;
    volatile unsigned int EN_DEST10 : 1;
    volatile unsigned int EN_DEST11 : 1;
    volatile unsigned int EN_DEST12 : 1;
    volatile unsigned int EN_DEST13 : 1;
    volatile unsigned int EN_DEST14 : 1;
    volatile unsigned int EN_DEST15 : 1;
    volatile unsigned int EN_DEST16 : 1;
    volatile unsigned int EN_DEST17 : 1;
    volatile unsigned int EN_DEST18 : 1;
    volatile unsigned int EN_DEST19 : 1;
    volatile unsigned int EN_DEST20 : 1;
    volatile unsigned int EN_DEST21 : 1;
    volatile unsigned int EN_TRASHBIN : 1;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_BRC_SRC9_DEST_Bits;


typedef struct _Ifx_GTM_BRIDGE_MODE_Bits
{
    volatile unsigned int BRG_MODE : 1;
    volatile unsigned int MSK_WR_RSP : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int MODE_UP_PGR : 1;
    volatile unsigned int BUFF_OVL : 1;
    volatile unsigned int reserved_10 : 2;
    volatile unsigned int SYNC_INPUT_REG : 1;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int BRG_RST : 1;
    volatile unsigned int reserved_17 : 7;
    volatile unsigned int BUFF_DPT : 8;
} Ifx_GTM_BRIDGE_MODE_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR1_Bits
{
    volatile unsigned int NEW_TRAN_PTR : 5;
    volatile unsigned int FIRST_RSP_PTR : 5;
    volatile unsigned int TRAN_IN_PGR : 5;
    volatile unsigned int ABT_TRAN_PGR : 5;
    volatile unsigned int FBC : 6;
    volatile unsigned int RSP_TRAN_RDY : 6;
} Ifx_GTM_BRIDGE_PTR1_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR2_Bits
{
    volatile unsigned int TRAN_IN_PGR2 : 5;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_BRIDGE_PTR2_Bits;


typedef struct _Ifx_GTM_CLC_Bits
{
    volatile unsigned int DISR : 1;
    volatile unsigned int DISS : 1;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int EDIS : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CLC_Bits;


typedef struct _Ifx_GTM_CMP_EIRQ_EN_Bits
{
    volatile unsigned int ABWC0_EN_EIRQ : 1;
    volatile unsigned int ABWC1_EN_EIRQ : 1;
    volatile unsigned int ABWC2_EN_EIRQ : 1;
    volatile unsigned int ABWC3_EN_EIRQ : 1;
    volatile unsigned int ABWC4_EN_EIRQ : 1;
    volatile unsigned int ABWC5_EN_EIRQ : 1;
    volatile unsigned int ABWC6_EN_EIRQ : 1;
    volatile unsigned int ABWC7_EN_EIRQ : 1;
    volatile unsigned int ABWC8_EN_EIRQ : 1;
    volatile unsigned int ABWC9_EN_EIRQ : 1;
    volatile unsigned int ABWC10_EN_EIRQ : 1;
    volatile unsigned int ABWC11_EN_EIRQ : 1;
    volatile unsigned int TBWC0_EN_EIRQ : 1;
    volatile unsigned int TBWC1_EN_EIRQ : 1;
    volatile unsigned int TBWC2_EN_EIRQ : 1;
    volatile unsigned int TBWC3_EN_EIRQ : 1;
    volatile unsigned int TBWC4_EN_EIRQ : 1;
    volatile unsigned int TBWC5_EN_EIRQ : 1;
    volatile unsigned int TBWC6_EN_EIRQ : 1;
    volatile unsigned int TBWC7_EN_EIRQ : 1;
    volatile unsigned int TBWC8_EN_EIRQ : 1;
    volatile unsigned int TBWC9_EN_EIRQ : 1;
    volatile unsigned int TBWC10_EN_EIRQ : 1;
    volatile unsigned int TBWC11_EN_EIRQ : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMP_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_CMP_EN_Bits
{
    volatile unsigned int ABWC0_EN : 1;
    volatile unsigned int ABWC1_EN : 1;
    volatile unsigned int ABWC2_EN : 1;
    volatile unsigned int ABWC3_EN : 1;
    volatile unsigned int ABWC4_EN : 1;
    volatile unsigned int ABWC5_EN : 1;
    volatile unsigned int ABWC6_EN : 1;
    volatile unsigned int ABWC7_EN : 1;
    volatile unsigned int ABWC8_EN : 1;
    volatile unsigned int ABWC9_EN : 1;
    volatile unsigned int ABWC10_EN : 1;
    volatile unsigned int ABWC11_EN : 1;
    volatile unsigned int TBWC0_EN : 1;
    volatile unsigned int TBWC1_EN : 1;
    volatile unsigned int TBWC2_EN : 1;
    volatile unsigned int TBWC3_EN : 1;
    volatile unsigned int TBWC4_EN : 1;
    volatile unsigned int TBWC5_EN : 1;
    volatile unsigned int TBWC6_EN : 1;
    volatile unsigned int TBWC7_EN : 1;
    volatile unsigned int TBWC8_EN : 1;
    volatile unsigned int TBWC9_EN : 1;
    volatile unsigned int TBWC10_EN : 1;
    volatile unsigned int TBWC11_EN : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMP_EN_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_EN_Bits
{
    volatile unsigned int ABWC0_EN_IRQ : 1;
    volatile unsigned int ABWC1_EN_IRQ : 1;
    volatile unsigned int ABWC2_EN_IRQ : 1;
    volatile unsigned int ABWC3_EN_IRQ : 1;
    volatile unsigned int ABWC4_EN_IRQ : 1;
    volatile unsigned int ABWC5_EN_IRQ : 1;
    volatile unsigned int ABWC6_EN_IRQ : 1;
    volatile unsigned int ABWC7_EN_IRQ : 1;
    volatile unsigned int ABWC8_EN_IRQ : 1;
    volatile unsigned int ABWC9_EN_IRQ : 1;
    volatile unsigned int ABWC10_EN_IRQ : 1;
    volatile unsigned int ABWC11_EN_IRQ : 1;
    volatile unsigned int TBWC0_EN_IRQ : 1;
    volatile unsigned int TBWC1_EN_IRQ : 1;
    volatile unsigned int TBWC2_EN_IRQ : 1;
    volatile unsigned int TBWC3_EN_IRQ : 1;
    volatile unsigned int TBWC4_EN_IRQ : 1;
    volatile unsigned int TBWC5_EN_IRQ : 1;
    volatile unsigned int TBWC6_EN_IRQ : 1;
    volatile unsigned int TBWC7_EN_IRQ : 1;
    volatile unsigned int TBWC8_EN_IRQ : 1;
    volatile unsigned int TBWC9_EN_IRQ : 1;
    volatile unsigned int TBWC10_EN_IRQ : 1;
    volatile unsigned int TBWC11_EN_IRQ : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMP_IRQ_EN_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_ABWC0 : 1;
    volatile unsigned int TRG_ABWC1 : 1;
    volatile unsigned int TRG_ABWC2 : 1;
    volatile unsigned int TRG_ABWC3 : 1;
    volatile unsigned int TRG_ABWC4 : 1;
    volatile unsigned int TRG_ABWC5 : 1;
    volatile unsigned int TRG_ABWC6 : 1;
    volatile unsigned int TRG_ABWC7 : 1;
    volatile unsigned int TRG_ABWC8 : 1;
    volatile unsigned int TRG_ABWC9 : 1;
    volatile unsigned int TRG_ABWC10 : 1;
    volatile unsigned int TRG_ABWC11 : 1;
    volatile unsigned int TRG_TBWC0 : 1;
    volatile unsigned int TRG_TBWC1 : 1;
    volatile unsigned int TRG_TBWC2 : 1;
    volatile unsigned int TRG_TBWC3 : 1;
    volatile unsigned int TRG_TBWC4 : 1;
    volatile unsigned int TRG_TBWC5 : 1;
    volatile unsigned int TRG_TBWC6 : 1;
    volatile unsigned int TRG_TBWC7 : 1;
    volatile unsigned int TRG_TBWC8 : 1;
    volatile unsigned int TRG_TBWC9 : 1;
    volatile unsigned int TRG_TBWC10 : 1;
    volatile unsigned int TRG_TBWC11 : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMP_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_CMP_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_NOTIFY_Bits
{
    volatile unsigned int ABWC0 : 1;
    volatile unsigned int ABWC1 : 1;
    volatile unsigned int ABWC2 : 1;
    volatile unsigned int ABWC3 : 1;
    volatile unsigned int ABWC4 : 1;
    volatile unsigned int ABWC5 : 1;
    volatile unsigned int ABWC6 : 1;
    volatile unsigned int ABWC7 : 1;
    volatile unsigned int ABWC8 : 1;
    volatile unsigned int ABWC9 : 1;
    volatile unsigned int ABWC10 : 1;
    volatile unsigned int ABWC11 : 1;
    volatile unsigned int TBWC0 : 1;
    volatile unsigned int TBWC1 : 1;
    volatile unsigned int TBWC2 : 1;
    volatile unsigned int TBWC3 : 1;
    volatile unsigned int TBWC4 : 1;
    volatile unsigned int TBWC5 : 1;
    volatile unsigned int TBWC6 : 1;
    volatile unsigned int TBWC7 : 1;
    volatile unsigned int TBWC8 : 1;
    volatile unsigned int TBWC9 : 1;
    volatile unsigned int TBWC10 : 1;
    volatile unsigned int TBWC11 : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMP_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_CMU_CLK0_5_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK0_5_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_6_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK6_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_6_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_7_CTRL_Bits
{
    volatile unsigned int CLK_CNT : 24;
    volatile unsigned int CLK7_SEL : 1;
    volatile unsigned int reserved_25 : 7;
} Ifx_GTM_CMU_CLK_7_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_EN_Bits
{
    volatile unsigned int EN_CLK0 : 2;
    volatile unsigned int EN_CLK1 : 2;
    volatile unsigned int EN_CLK2 : 2;
    volatile unsigned int EN_CLK3 : 2;
    volatile unsigned int EN_CLK4 : 2;
    volatile unsigned int EN_CLK5 : 2;
    volatile unsigned int EN_CLK6 : 2;
    volatile unsigned int EN_CLK7 : 2;
    volatile unsigned int EN_ECLK0 : 2;
    volatile unsigned int EN_ECLK1 : 2;
    volatile unsigned int EN_ECLK2 : 2;
    volatile unsigned int EN_FXCLK : 2;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_CLK_EN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_DEN_Bits
{
    volatile unsigned int ECLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_NUM_Bits
{
    volatile unsigned int ECLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_ECLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_FXCLK_CTRL_Bits
{
    volatile unsigned int FXCLK_SEL : 4;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_CMU_FXCLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_DEN_Bits
{
    volatile unsigned int GCLK_DEN : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_NUM_Bits
{
    volatile unsigned int GCLK_NUM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_CMU_GCLK_NUM_Bits;


typedef struct _Ifx_GTM_CTRL_Bits
{
    volatile unsigned int RF_PROT : 1;
    volatile unsigned int TO_MODE : 1;
    volatile unsigned int reserved_2 : 2;
    volatile unsigned int TO_VAL : 5;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_CTRL_Bits;


typedef struct _Ifx_GTM_DATAIN_Bits
{
    volatile unsigned int DATA : 32;
} Ifx_GTM_DATAIN_Bits;


typedef struct _Ifx_GTM_DPLL_ACB_Bits
{
    volatile unsigned int ACB_0 : 5;
    volatile unsigned int reserved_5 : 3;
    volatile unsigned int ACB_1 : 5;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int ACB_2 : 5;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int ACB_3 : 5;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_DPLL_ACB_Bits;


typedef struct _Ifx_GTM_DPLL_ACT_STA_Bits
{
    volatile unsigned int ACT_Ni : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_ACT_STA_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_CAL1_Bits
{
    volatile unsigned int ADD_IN_CAL_1 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_ADD_IN_CAL1_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_CAL2_Bits
{
    volatile unsigned int ADD_IN_CAL_2 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_ADD_IN_CAL2_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_LD1_Bits
{
    volatile unsigned int ADD_IN_LD_1 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_ADD_IN_LD1_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_LD2_Bits
{
    volatile unsigned int ADD_IN_LD_2 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_ADD_IN_LD2_Bits;


typedef struct _Ifx_GTM_DPLL_ADT_S_Bits
{
    volatile unsigned int PD_S : 16;
    volatile unsigned int NS : 6;
    volatile unsigned int reserved_22 : 10;
} Ifx_GTM_DPLL_ADT_S_Bits;


typedef struct _Ifx_GTM_DPLL_AOSV_2_Bits
{
    volatile unsigned int AOSV_2A : 8;
    volatile unsigned int AOSV_2B : 8;
    volatile unsigned int AOSV_2C : 8;
    volatile unsigned int AOSV_2D : 8;
} Ifx_GTM_DPLL_AOSV_2_Bits;


typedef struct _Ifx_GTM_DPLL_APS_1C3_Bits
{
    volatile unsigned int reserved_0 : 2;
    volatile unsigned int APS_1C3 : 6;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_DPLL_APS_1C3_Bits;


typedef struct _Ifx_GTM_DPLL_APS_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int WAPS : 1;
    volatile unsigned int APS : 6;
    volatile unsigned int reserved_8 : 5;
    volatile unsigned int WAPS_1C2 : 1;
    volatile unsigned int APS_1C2 : 6;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_DPLL_APS_Bits;


typedef struct _Ifx_GTM_DPLL_APS_SYNC_Bits
{
    volatile unsigned int APS_1C2_EXT : 6;
    volatile unsigned int APS_1C2_STATUS : 1;
    volatile unsigned int reserved_7 : 7;
    volatile unsigned int APS_1C2_OLD : 6;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_DPLL_APS_SYNC_Bits;


typedef struct _Ifx_GTM_DPLL_APT_2C_Bits
{
    volatile unsigned int reserved_0 : 2;
    volatile unsigned int APT_2C : 10;
    volatile unsigned int reserved_12 : 20;
} Ifx_GTM_DPLL_APT_2C_Bits;


typedef struct _Ifx_GTM_DPLL_APT_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int WAPT : 1;
    volatile unsigned int APT : 10;
    volatile unsigned int reserved_12 : 1;
    volatile unsigned int WAPT_2B : 1;
    volatile unsigned int APT_2B : 10;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_APT_Bits;


typedef struct _Ifx_GTM_DPLL_APT_SYNC_Bits
{
    volatile unsigned int APT_2B_EXT : 6;
    volatile unsigned int APT_2B_STATUS : 1;
    volatile unsigned int reserved_7 : 7;
    volatile unsigned int APT_2B_OLD : 10;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_APT_SYNC_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_SX_Bits
{
    volatile unsigned int CDT_SX : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CDT_SX_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_SX_NOM_Bits
{
    volatile unsigned int CDT_SX_NOM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CDT_SX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_TX_Bits
{
    volatile unsigned int CDT_TX : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CDT_TX_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_TX_NOM_Bits
{
    volatile unsigned int CDT_TX_NOM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CDT_TX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_CNT_NUM1_Bits
{
    volatile unsigned int CNT_NUM_1 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CNT_NUM1_Bits;


typedef struct _Ifx_GTM_DPLL_CNT_NUM2_Bits
{
    volatile unsigned int CNT_NUM_2 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CNT_NUM2_Bits;


typedef struct _Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE_Bits
{
    volatile unsigned int DMO : 1;
    volatile unsigned int reserved_1 : 2;
    volatile unsigned int COA : 1;
    volatile unsigned int PIT : 1;
    volatile unsigned int SGE1 : 1;
    volatile unsigned int DLM1 : 1;
    volatile unsigned int PCM1 : 1;
    volatile unsigned int SGE2 : 1;
    volatile unsigned int DLM2 : 1;
    volatile unsigned int PCM2 : 1;
    volatile unsigned int SYN_NS : 21;
} Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_Bits
{
    volatile unsigned int MLT : 10;
    volatile unsigned int IFP : 1;
    volatile unsigned int SNU : 5;
    volatile unsigned int TNU : 9;
    volatile unsigned int AMS : 1;
    volatile unsigned int AMT : 1;
    volatile unsigned int IDS : 1;
    volatile unsigned int IDT : 1;
    volatile unsigned int SEN : 1;
    volatile unsigned int TEN : 1;
    volatile unsigned int RMO : 1;
} Ifx_GTM_DPLL_CTRL_0_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits
{
    volatile unsigned int reserved_0 : 10;
    volatile unsigned int IFP : 1;
    volatile unsigned int reserved_11 : 14;
    volatile unsigned int AMS : 1;
    volatile unsigned int reserved_26 : 1;
    volatile unsigned int IDS : 1;
    volatile unsigned int reserved_28 : 3;
    volatile unsigned int RMO : 1;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits
{
    volatile unsigned int MLT : 10;
    volatile unsigned int IFP : 1;
    volatile unsigned int reserved_11 : 15;
    volatile unsigned int AMT : 1;
    volatile unsigned int IDS : 1;
    volatile unsigned int IDT : 1;
    volatile unsigned int reserved_29 : 2;
    volatile unsigned int RMO : 1;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_Bits
{
    volatile unsigned int DMO : 1;
    volatile unsigned int DEN : 1;
    volatile unsigned int IDDS : 1;
    volatile unsigned int COA : 1;
    volatile unsigned int PIT : 1;
    volatile unsigned int SGE1 : 1;
    volatile unsigned int DLM1 : 1;
    volatile unsigned int PCM1 : 1;
    volatile unsigned int SGE2 : 1;
    volatile unsigned int DLM2 : 1;
    volatile unsigned int PCM2 : 1;
    volatile unsigned int SYN_NS : 5;
    volatile unsigned int SYN_NT : 5;
    volatile unsigned int reserved_21 : 1;
    volatile unsigned int LCD : 1;
    volatile unsigned int SWR : 1;
    volatile unsigned int SYSF : 1;
    volatile unsigned int TS0_HRS : 1;
    volatile unsigned int TS0_HRT : 1;
    volatile unsigned int SMC : 1;
    volatile unsigned int SSL : 2;
    volatile unsigned int TSL : 2;
} Ifx_GTM_DPLL_CTRL_1_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits
{
    volatile unsigned int DMO : 1;
    volatile unsigned int reserved_1 : 2;
    volatile unsigned int COA : 1;
    volatile unsigned int PIT : 1;
    volatile unsigned int SGE1 : 1;
    volatile unsigned int DLM1 : 1;
    volatile unsigned int PCM1 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_2_Bits
{
    volatile unsigned int reserved_0 : 8;
    volatile unsigned int AEN0 : 1;
    volatile unsigned int AEN1 : 1;
    volatile unsigned int AEN2 : 1;
    volatile unsigned int AEN3 : 1;
    volatile unsigned int AEN4 : 1;
    volatile unsigned int AEN5 : 1;
    volatile unsigned int AEN6 : 1;
    volatile unsigned int AEN7 : 1;
    volatile unsigned int WAD0 : 1;
    volatile unsigned int WAD1 : 1;
    volatile unsigned int WAD2 : 1;
    volatile unsigned int WAD3 : 1;
    volatile unsigned int WAD4 : 1;
    volatile unsigned int WAD5 : 1;
    volatile unsigned int WAD6 : 1;
    volatile unsigned int WAD7 : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CTRL_2_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_3_Bits
{
    volatile unsigned int reserved_0 : 8;
    volatile unsigned int AEN8 : 1;
    volatile unsigned int AEN9 : 1;
    volatile unsigned int AEN10 : 1;
    volatile unsigned int AEN11 : 1;
    volatile unsigned int AEN12 : 1;
    volatile unsigned int AEN13 : 1;
    volatile unsigned int AEN14 : 1;
    volatile unsigned int AEN15 : 1;
    volatile unsigned int WAD8 : 1;
    volatile unsigned int WAD9 : 1;
    volatile unsigned int WAD10 : 1;
    volatile unsigned int WAD11 : 1;
    volatile unsigned int WAD12 : 1;
    volatile unsigned int WAD13 : 1;
    volatile unsigned int WAD14 : 1;
    volatile unsigned int WAD15 : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CTRL_3_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_4_Bits
{
    volatile unsigned int reserved_0 : 8;
    volatile unsigned int AEN16 : 1;
    volatile unsigned int AEN17 : 1;
    volatile unsigned int AEN18 : 1;
    volatile unsigned int AEN19 : 1;
    volatile unsigned int AEN20 : 1;
    volatile unsigned int AEN21 : 1;
    volatile unsigned int AEN22 : 1;
    volatile unsigned int AEN23 : 1;
    volatile unsigned int WAD16 : 1;
    volatile unsigned int WAD17 : 1;
    volatile unsigned int WAD18 : 1;
    volatile unsigned int WAD19 : 1;
    volatile unsigned int WAD20 : 1;
    volatile unsigned int WAD21 : 1;
    volatile unsigned int WAD22 : 1;
    volatile unsigned int WAD23 : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_CTRL_4_Bits;


typedef struct _Ifx_GTM_DPLL_DLA_Bits
{
    volatile unsigned int DLA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_DLA_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_ACT_Bits
{
    volatile unsigned int DT_S_ACT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_DT_S_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_Bits
{
    volatile unsigned int DT_S : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_DT_S_Bits;


typedef struct _Ifx_GTM_DPLL_DT_T_ACT_Bits
{
    volatile unsigned int DT_T_ACT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_DT_T_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_DTA_Bits
{
    volatile unsigned int DTA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_DTA_Bits;



typedef struct _Ifx_GTM_DPLL_EDT_S_Bits
{
    volatile unsigned int EDT_S : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_EDT_S_Bits;



typedef struct _Ifx_GTM_DPLL_EDT_T_Bits
{
    volatile unsigned int EDT_T : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_EDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_EIRQ_EN_Bits
{
    volatile unsigned int PDI_EIRQ_EN : 1;
    volatile unsigned int PEI_EIRQ_EN : 1;
    volatile unsigned int TINI_EIRQ_EN : 1;
    volatile unsigned int TAXI_EIRQ_EN : 1;
    volatile unsigned int SISI_EIRQ_EN : 1;
    volatile unsigned int TISI_EIRQ_EN : 1;
    volatile unsigned int MSI_EIRQ_EN : 1;
    volatile unsigned int MTI_EIRQ_EN : 1;
    volatile unsigned int SASI_EIRQ_EN : 1;
    volatile unsigned int TASI_EIRQ_EN : 1;
    volatile unsigned int PWI_EIRQ_EN : 1;
    volatile unsigned int W2I_EIRQ_EN : 1;
    volatile unsigned int W1I_EIRQ_EN : 1;
    volatile unsigned int GL1I_EIRQ_EN : 1;
    volatile unsigned int LL1I_EIRQ_EN : 1;
    volatile unsigned int EI_EIRQ_EN : 1;
    volatile unsigned int GL2I_EIRQ_EN : 1;
    volatile unsigned int LL2I_EIRQ_EN : 1;
    volatile unsigned int TE0I_EIRQ_EN : 1;
    volatile unsigned int TE1I_EIRQ_EN : 1;
    volatile unsigned int TE2I_EIRQ_EN : 1;
    volatile unsigned int TE3I_EIRQ_EN : 1;
    volatile unsigned int TE4I_EIRQ_EN : 1;
    volatile unsigned int CDTI_EIRQ_EN : 1;
    volatile unsigned int CDSI_EIRQ_EN : 1;
    volatile unsigned int TORI : 1;
    volatile unsigned int SORI : 1;
    volatile unsigned int DCGI : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_DPLL_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_DPLL_FTV_S_Bits
{
    volatile unsigned int STATE_FT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_FTV_S_Bits;


typedef struct _Ifx_GTM_DPLL_FTV_T_Bits
{
    volatile unsigned int TRIGGER_FT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_FTV_T_Bits;


typedef struct _Ifx_GTM_DPLL_ID_PMTR_Bits
{
    volatile unsigned int ID_PMTR_x : 9;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_DPLL_ID_PMTR_Bits;



typedef struct _Ifx_GTM_DPLL_INC_CNT1_Bits
{
    volatile unsigned int INC_CNT1 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_INC_CNT1_Bits;



typedef struct _Ifx_GTM_DPLL_INC_CNT2_Bits
{
    volatile unsigned int INC_CNT2 : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_INC_CNT2_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_EN_Bits
{
    volatile unsigned int PDI_IRQ_EN : 1;
    volatile unsigned int PEI_IRQ_EN : 1;
    volatile unsigned int TINI_IRQ_EN : 1;
    volatile unsigned int TAXI_IRQ_EN : 1;
    volatile unsigned int SISI_IRQ_EN : 1;
    volatile unsigned int TISI_IRQ_EN : 1;
    volatile unsigned int MSI_IRQ_EN : 1;
    volatile unsigned int MTI_IRQ_EN : 1;
    volatile unsigned int SASI_IRQ_EN : 1;
    volatile unsigned int TASI_IRQ_EN : 1;
    volatile unsigned int PWI_IRQ_EN : 1;
    volatile unsigned int W2I_IRQ_EN : 1;
    volatile unsigned int W1I_IRQ_EN : 1;
    volatile unsigned int GL1I_IRQ_EN : 1;
    volatile unsigned int LL1I_IRQ_EN : 1;
    volatile unsigned int EI_IRQ_EN : 1;
    volatile unsigned int GL2I_IRQ_EN : 1;
    volatile unsigned int LL2I_IRQ_EN : 1;
    volatile unsigned int TE0I_IRQ_EN : 1;
    volatile unsigned int TE1I_IRQ_EN : 1;
    volatile unsigned int TE2I_IRQ_EN : 1;
    volatile unsigned int TE3I_IRQ_EN : 1;
    volatile unsigned int TE4I_IRQ_EN : 1;
    volatile unsigned int CDTI_IRQ_EN : 1;
    volatile unsigned int CDSI_IRQ_EN : 1;
    volatile unsigned int TORI : 1;
    volatile unsigned int SORI : 1;
    volatile unsigned int DCGI : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_DPLL_IRQ_EN_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_PDI : 1;
    volatile unsigned int TRG_PEI : 1;
    volatile unsigned int TRG_TINI : 1;
    volatile unsigned int TRG_TAXI : 1;
    volatile unsigned int TRG_SISI : 1;
    volatile unsigned int TRG_TISI : 1;
    volatile unsigned int TRG_MSI : 1;
    volatile unsigned int TRG_MTI : 1;
    volatile unsigned int TRG_SASI : 1;
    volatile unsigned int TRG_TASI : 1;
    volatile unsigned int TRG_PWI : 1;
    volatile unsigned int TRG_W2I : 1;
    volatile unsigned int TRG_W1I : 1;
    volatile unsigned int TRG_GL1I : 1;
    volatile unsigned int TRG_LL1I : 1;
    volatile unsigned int TRG_EI : 1;
    volatile unsigned int TRG_GL2I : 1;
    volatile unsigned int TRG_LL2I : 1;
    volatile unsigned int TRG_TE0I : 1;
    volatile unsigned int TRG_TE1I : 1;
    volatile unsigned int TRG_TE2I : 1;
    volatile unsigned int TRG_TE3I : 1;
    volatile unsigned int TRG_TE4I : 1;
    volatile unsigned int TRG_CDTI : 1;
    volatile unsigned int TRG_CDSI : 1;
    volatile unsigned int TRG_TORI : 1;
    volatile unsigned int TRG_SORI : 1;
    volatile unsigned int TRG_DCGI : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_DPLL_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_DPLL_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_NOTIFY_Bits
{
    volatile unsigned int PDI : 1;
    volatile unsigned int PEI : 1;
    volatile unsigned int TINI : 1;
    volatile unsigned int TAXI : 1;
    volatile unsigned int SISI : 1;
    volatile unsigned int TISI : 1;
    volatile unsigned int MSI : 1;
    volatile unsigned int MTI : 1;
    volatile unsigned int SASI : 1;
    volatile unsigned int TASI : 1;
    volatile unsigned int PWI : 1;
    volatile unsigned int W2I : 1;
    volatile unsigned int W1I : 1;
    volatile unsigned int GL1I : 1;
    volatile unsigned int LL1I : 1;
    volatile unsigned int EI : 1;
    volatile unsigned int GL2I : 1;
    volatile unsigned int LL2I : 1;
    volatile unsigned int TE0I : 1;
    volatile unsigned int TE1I : 1;
    volatile unsigned int TE2I : 1;
    volatile unsigned int TE3I : 1;
    volatile unsigned int TE4I : 1;
    volatile unsigned int CDTI : 1;
    volatile unsigned int CDSI : 1;
    volatile unsigned int TORI : 1;
    volatile unsigned int SORI : 1;
    volatile unsigned int DCGI : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_DPLL_IRQ_NOTIFY_Bits;



typedef struct _Ifx_GTM_DPLL_MEDT_S_Bits
{
    volatile unsigned int MEDT_S : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_MEDT_S_Bits;



typedef struct _Ifx_GTM_DPLL_MEDT_T_Bits
{
    volatile unsigned int MEDT_T : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_MEDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_MLS1_Bits
{
    volatile unsigned int MLS1 : 18;
    volatile unsigned int reserved_18 : 14;
} Ifx_GTM_DPLL_MLS1_Bits;


typedef struct _Ifx_GTM_DPLL_MLS2_Bits
{
    volatile unsigned int MLS2 : 18;
    volatile unsigned int reserved_18 : 14;
} Ifx_GTM_DPLL_MLS2_Bits;



typedef struct _Ifx_GTM_DPLL_MPVAL1_Bits
{
    volatile unsigned int MPVAL1 : 16;
    volatile unsigned int SIX1 : 8;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_MPVAL1_Bits;



typedef struct _Ifx_GTM_DPLL_MPVAL2_Bits
{
    volatile unsigned int MPVAL2 : 16;
    volatile unsigned int SIX2 : 8;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_MPVAL2_Bits;


typedef struct _Ifx_GTM_DPLL_NA_Bits
{
    volatile unsigned int DB : 10;
    volatile unsigned int DW : 10;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_DPLL_NA_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_Bits
{
    volatile unsigned int NMB_S : 20;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_DPLL_NMB_S_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_TAR_Bits
{
    volatile unsigned int NMB_S_TAR : 20;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_DPLL_NMB_S_TAR_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits
{
    volatile unsigned int NMB_S_TAR_OLD : 20;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_Bits
{
    volatile unsigned int NMB_T : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_DPLL_NMB_T_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_TAR_Bits
{
    volatile unsigned int NMB_T_TAR : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_DPLL_NMB_T_TAR_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits
{
    volatile unsigned int NMB_T_TAR_OLD : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_NTI_CNT_Bits
{
    volatile unsigned int NTI_CNT : 10;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_DPLL_NTI_CNT_Bits;


typedef struct _Ifx_GTM_DPLL_NUSC_Bits
{
    volatile unsigned int NUSE : 6;
    volatile unsigned int FSS : 1;
    volatile unsigned int SYN_S : 6;
    volatile unsigned int SYN_S_OLD : 6;
    volatile unsigned int VSN : 6;
    volatile unsigned int reserved_25 : 4;
    volatile unsigned int WNUS : 1;
    volatile unsigned int WSYN : 1;
    volatile unsigned int WVSN : 1;
} Ifx_GTM_DPLL_NUSC_Bits;


typedef struct _Ifx_GTM_DPLL_NUTC_Bits
{
    volatile unsigned int NUTE : 10;
    volatile unsigned int FST : 1;
    volatile unsigned int reserved_11 : 2;
    volatile unsigned int SYN_T : 3;
    volatile unsigned int SYN_T_OLD : 3;
    volatile unsigned int VTN : 6;
    volatile unsigned int reserved_25 : 4;
    volatile unsigned int WNUT : 1;
    volatile unsigned int WSYN : 1;
    volatile unsigned int WVTN : 1;
} Ifx_GTM_DPLL_NUTC_Bits;


typedef struct _Ifx_GTM_DPLL_OSW_Bits
{
    volatile unsigned int SWON_S : 1;
    volatile unsigned int SWON_T : 1;
    volatile unsigned int reserved_2 : 6;
    volatile unsigned int OSS : 2;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_DPLL_OSW_Bits;


typedef struct _Ifx_GTM_DPLL_PDT_T_Bits
{
    volatile unsigned int DB : 14;
    volatile unsigned int DW : 10;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_PSA_Bits
{
    volatile unsigned int PSA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PSA_Bits;


typedef struct _Ifx_GTM_DPLL_PSAC_Bits
{
    volatile unsigned int PSAC : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PSAC_Bits;


typedef struct _Ifx_GTM_DPLL_PSSC_Bits
{
    volatile unsigned int PSSC : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PSSC_Bits;


typedef struct _Ifx_GTM_DPLL_PSSM_0_Bits
{
    volatile unsigned int PSSM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PSSM_0_Bits;


typedef struct _Ifx_GTM_DPLL_PSSM_1_Bits
{
    volatile unsigned int PSSM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PSSM_1_Bits;


typedef struct _Ifx_GTM_DPLL_PSTC_Bits
{
    volatile unsigned int PSTC : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PSTC_Bits;


typedef struct _Ifx_GTM_DPLL_PSTM_0_Bits
{
    volatile unsigned int PSTM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PSTM_0_Bits;


typedef struct _Ifx_GTM_DPLL_PSTM_1_Bits
{
    volatile unsigned int PSTM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PSTM_1_Bits;


typedef struct _Ifx_GTM_DPLL_PVT_Bits
{
    volatile unsigned int PVT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_PVT_Bits;


typedef struct _Ifx_GTM_DPLL_RAM_INI_Bits
{
    volatile unsigned int INIT_1A : 1;
    volatile unsigned int INIT_1B : 1;
    volatile unsigned int INIT_2 : 1;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int INIT_RAM : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_DPLL_RAM_INI_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_SX_Bits
{
    volatile unsigned int RCDT_SX : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_RCDT_SX_Bits;



typedef struct _Ifx_GTM_DPLL_RCDT_SX_NOM_Bits
{
    volatile unsigned int RCDT_SX_NOM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_RCDT_SX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_TX_Bits
{
    volatile unsigned int RCDT_TX : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_RCDT_TX_Bits;



typedef struct _Ifx_GTM_DPLL_RCDT_TX_NOM_Bits
{
    volatile unsigned int RCDT_TX_NOM : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_RCDT_TX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_S_ACT_Bits
{
    volatile unsigned int RDT_S_ACT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_RDT_S_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_S_Bits
{
    volatile unsigned int RDT_S : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_RDT_S_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_T_ACT_Bits
{
    volatile unsigned int RDT_T_ACT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_RDT_T_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_SLR_Bits
{
    volatile unsigned int SLR : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_DPLL_SLR_Bits;


typedef struct _Ifx_GTM_DPLL_STATUS_Bits
{
    volatile unsigned int reserved_0 : 1;
    volatile unsigned int CSO : 1;
    volatile unsigned int reserved_2 : 1;
    volatile unsigned int CTO : 1;
    volatile unsigned int CRO : 1;
    volatile unsigned int RCS : 1;
    volatile unsigned int RCT : 1;
    volatile unsigned int PSE : 1;
    volatile unsigned int SOR : 1;
    volatile unsigned int MS : 1;
    volatile unsigned int TOR : 1;
    volatile unsigned int MT : 1;
    volatile unsigned int RAM2_ERR : 1;
    volatile unsigned int reserved_13 : 2;
    volatile unsigned int LOW_RES : 1;
    volatile unsigned int CSVS : 1;
    volatile unsigned int CSVT : 1;
    volatile unsigned int CAIP2 : 1;
    volatile unsigned int CAIP1 : 1;
    volatile unsigned int ISN : 1;
    volatile unsigned int ITN : 1;
    volatile unsigned int BWD2 : 1;
    volatile unsigned int BWD1 : 1;
    volatile unsigned int reserved_24 : 1;
    volatile unsigned int LOCK2 : 1;
    volatile unsigned int SYS : 1;
    volatile unsigned int SYT : 1;
    volatile unsigned int FSD : 1;
    volatile unsigned int FTD : 1;
    volatile unsigned int LOCK1 : 1;
    volatile unsigned int ERR : 1;
} Ifx_GTM_DPLL_STATUS_Bits;


typedef struct _Ifx_GTM_DPLL_TBU_TS0_S_Bits
{
    volatile unsigned int TBU_TS0_S : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_TBU_TS0_S_Bits;


typedef struct _Ifx_GTM_DPLL_TBU_TS0_T_Bits
{
    volatile unsigned int TBU_TS0_T : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_TBU_TS0_T_Bits;


typedef struct _Ifx_GTM_DPLL_THMA_Bits
{
    volatile unsigned int THMA : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_DPLL_THMA_Bits;


typedef struct _Ifx_GTM_DPLL_THMI_Bits
{
    volatile unsigned int THMI : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_DPLL_THMI_Bits;


typedef struct _Ifx_GTM_DPLL_THVAL_Bits
{
    volatile unsigned int THVAL : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_DPLL_THVAL_Bits;


typedef struct _Ifx_GTM_DPLL_TLR_Bits
{
    volatile unsigned int TLR : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_DPLL_TLR_Bits;


typedef struct _Ifx_GTM_DPLL_TOV_Bits
{
    volatile unsigned int DB : 10;
    volatile unsigned int DW : 6;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_DPLL_TOV_Bits;


typedef struct _Ifx_GTM_DPLL_TOV_S_Bits
{
    volatile unsigned int DB : 10;
    volatile unsigned int DW : 6;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_DPLL_TOV_S_Bits;


typedef struct _Ifx_GTM_DPLL_TS_S_0_Bits
{
    volatile unsigned int STATE_TS : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_TS_S_0_Bits;


typedef struct _Ifx_GTM_DPLL_TS_S_1_Bits
{
    volatile unsigned int STATE_TS : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_TS_S_1_Bits;


typedef struct _Ifx_GTM_DPLL_TS_T_0_Bits
{
    volatile unsigned int TRIGGER_TS : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_TS_T_0_Bits;


typedef struct _Ifx_GTM_DPLL_TS_T_1_Bits
{
    volatile unsigned int TRIGGER_TS : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_TS_T_1_Bits;


typedef struct _Ifx_GTM_DPLL_TSAC_Bits
{
    volatile unsigned int TSAC : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_TSAC_Bits;


typedef struct _Ifx_GTM_DPLL_TSF_S_Bits
{
    volatile unsigned int TSF_S : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_DPLL_TSF_S_Bits;


typedef struct _Ifx_GTM_DXINCON_Bits
{
    volatile unsigned int IN00 : 1;
    volatile unsigned int IN01 : 1;
    volatile unsigned int IN02 : 1;
    volatile unsigned int IN03 : 1;
    volatile unsigned int reserved_4 : 4;
    volatile unsigned int IN10 : 1;
    volatile unsigned int IN11 : 1;
    volatile unsigned int IN12 : 1;
    volatile unsigned int IN13 : 1;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int DSS00 : 1;
    volatile unsigned int DSS01 : 1;
    volatile unsigned int DSS02 : 1;
    volatile unsigned int DSS03 : 1;
    volatile unsigned int reserved_20 : 4;
    volatile unsigned int DSS10 : 1;
    volatile unsigned int DSS11 : 1;
    volatile unsigned int DSS12 : 1;
    volatile unsigned int DSS13 : 1;
    volatile unsigned int reserved_28 : 4;
} Ifx_GTM_DXINCON_Bits;


typedef struct _Ifx_GTM_DXOUTCON_Bits
{
    volatile unsigned int OUT00 : 1;
    volatile unsigned int OUT01 : 1;
    volatile unsigned int OUT02 : 1;
    volatile unsigned int OUT03 : 1;
    volatile unsigned int reserved_4 : 4;
    volatile unsigned int OUT10 : 1;
    volatile unsigned int OUT11 : 1;
    volatile unsigned int OUT12 : 1;
    volatile unsigned int OUT13 : 1;
    volatile unsigned int reserved_12 : 20;
} Ifx_GTM_DXOUTCON_Bits;


typedef struct _Ifx_GTM_EIRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_EIRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_EIRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_F2A_ENABLE_Bits
{
    volatile unsigned int STR0_EN : 2;
    volatile unsigned int STR1_EN : 2;
    volatile unsigned int STR2_EN : 2;
    volatile unsigned int STR3_EN : 2;
    volatile unsigned int STR4_EN : 2;
    volatile unsigned int STR5_EN : 2;
    volatile unsigned int STR6_EN : 2;
    volatile unsigned int STR7_EN : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_F2A_ENABLE_Bits;


typedef struct _Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO_Bits
{
    volatile unsigned int ADDR : 9;
    volatile unsigned int reserved_9 : 23;
} Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO_Bits;


typedef struct _Ifx_GTM_F2A_STR_CH_STR_CFG_Bits
{
    volatile unsigned int reserved_0 : 16;
    volatile unsigned int TMODE : 2;
    volatile unsigned int DIR : 1;
    volatile unsigned int reserved_19 : 13;
} Ifx_GTM_F2A_STR_CH_STR_CFG_Bits;


typedef struct _Ifx_GTM_FIFO_CH_CTRL_Bits
{
    volatile unsigned int RBM : 1;
    volatile unsigned int RAP : 1;
    volatile unsigned int FLUSH : 1;
    volatile unsigned int WULOCK : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_FIFO_CH_CTRL_Bits;


typedef struct _Ifx_GTM_FIFO_CH_EIRQ_EN_Bits
{
    volatile unsigned int FIFO_EMPTY_EIRQ_EN : 1;
    volatile unsigned int FIFO_FULL_EIRQ_EN : 1;
    volatile unsigned int FIFO_LWM_EIRQ_EN : 1;
    volatile unsigned int FIFO_UWM_EIRQ_EN : 1;
    volatile unsigned int Reserved : 28;
} Ifx_GTM_FIFO_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_FIFO_CH_END_ADDR_Bits
{
    volatile unsigned int ADDR : 10;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_FIFO_CH_END_ADDR_Bits;


typedef struct _Ifx_GTM_FIFO_CH_FILL_LEVEL_Bits
{
    volatile unsigned int LEVEL : 11;
    volatile unsigned int reserved_11 : 21;
} Ifx_GTM_FIFO_CH_FILL_LEVEL_Bits;


typedef struct _Ifx_GTM_FIFO_CH_IRQ_EN_Bits
{
    volatile unsigned int FIFO_EMPTY_IRQ_EN : 1;
    volatile unsigned int FIFO_FULL_IRQ_EN : 1;
    volatile unsigned int FIFO_LWM_IRQ_EN : 1;
    volatile unsigned int FIFO_UWM_IRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_FIFO_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_FIFO_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_FIFO_EMPTY : 1;
    volatile unsigned int TRG_FIFO_FULL : 1;
    volatile unsigned int TRG_FIFO_LWM : 1;
    volatile unsigned int TRG_FIFO_UWM : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_FIFO_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_FIFO_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int DMA_HYSTERESIS : 1;
    volatile unsigned int DMA_HYST_DIR : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_FIFO_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_FIFO_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int FIFO_EMPTY : 1;
    volatile unsigned int FIFO_FULL : 1;
    volatile unsigned int FIFO_LWM : 1;
    volatile unsigned int FIFO_UWM : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_FIFO_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_FIFO_CH_LOWER_WM_Bits
{
    volatile unsigned int ADDR : 10;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_FIFO_CH_LOWER_WM_Bits;


typedef struct _Ifx_GTM_FIFO_CH_RD_PTR_Bits
{
    volatile unsigned int ADDR : 10;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_FIFO_CH_RD_PTR_Bits;


typedef struct _Ifx_GTM_FIFO_CH_START_ADDR_Bits
{
    volatile unsigned int ADDR : 10;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_FIFO_CH_START_ADDR_Bits;


typedef struct _Ifx_GTM_FIFO_CH_STATUS_Bits
{
    volatile unsigned int EMPTY : 1;
    volatile unsigned int FULL : 1;
    volatile unsigned int LOW_WM : 1;
    volatile unsigned int UP_WM : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_FIFO_CH_STATUS_Bits;


typedef struct _Ifx_GTM_FIFO_CH_UPPER_WM_Bits
{
    volatile unsigned int ADDR : 10;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_FIFO_CH_UPPER_WM_Bits;


typedef struct _Ifx_GTM_FIFO_CH_WR_PTR_Bits
{
    volatile unsigned int ADDR : 10;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_FIFO_CH_WR_PTR_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_0_Bits
{
    volatile unsigned int ARU_NEW_DATA0_IRQ : 1;
    volatile unsigned int ARU_NEW_DATA1_IRQ : 1;
    volatile unsigned int ARU_ACC_ACK_IRQ : 1;
    volatile unsigned int BRC_IRQ : 1;
    volatile unsigned int AEI_IRQ : 1;
    volatile unsigned int CMP_IRQ : 1;
    volatile unsigned int SPE0_IRQ : 1;
    volatile unsigned int SPE1_IRQ : 1;
    volatile unsigned int reserved_8 : 8;
    volatile unsigned int PSM0_CH0_IRQ : 1;
    volatile unsigned int PSM0_CH1_IRQ : 1;
    volatile unsigned int PSM0_CH2_IRQ : 1;
    volatile unsigned int PSM0_CH3_IRQ : 1;
    volatile unsigned int PSM0_CH4_IRQ : 1;
    volatile unsigned int PSM0_CH5_IRQ : 1;
    volatile unsigned int PSM0_CH6_IRQ : 1;
    volatile unsigned int PSM0_CH7_IRQ : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_ICM_IRQG_0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_10_Bits
{
    volatile unsigned int ATOM4_CH0_IRQ : 1;
    volatile unsigned int ATOM4_CH1_IRQ : 1;
    volatile unsigned int ATOM4_CH2_IRQ : 1;
    volatile unsigned int ATOM4_CH3_IRQ : 1;
    volatile unsigned int ATOM4_CH4_IRQ : 1;
    volatile unsigned int ATOM4_CH5_IRQ : 1;
    volatile unsigned int ATOM4_CH6_IRQ : 1;
    volatile unsigned int ATOM4_CH7_IRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_10_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_1_Bits
{
    volatile unsigned int DPLL_DCG_IRQ : 1;
    volatile unsigned int DPLL_EDI_IRQ : 1;
    volatile unsigned int DPLL_TIN_IRQ : 1;
    volatile unsigned int DPLL_TAX_IRQ : 1;
    volatile unsigned int DPLL_SIS_IRQ : 1;
    volatile unsigned int DPLL_TIS_IRQ : 1;
    volatile unsigned int DPLL_MSI_IRQ : 1;
    volatile unsigned int DPLL_MTI_IRQ : 1;
    volatile unsigned int DPLL_SAS_IRQ : 1;
    volatile unsigned int DPLL_TAS_IRQ : 1;
    volatile unsigned int DPLL_PWI_IRQ : 1;
    volatile unsigned int DPLL_W2I_IRQ : 1;
    volatile unsigned int DPLL_W1I_IRQ : 1;
    volatile unsigned int DPLL_GLI_IRQ : 1;
    volatile unsigned int DPLL_LLI_IRQ : 1;
    volatile unsigned int DPLL_EI_IRQ : 1;
    volatile unsigned int DPLL_GL2I_IRQ : 1;
    volatile unsigned int DPLL_LL2I_IRQ : 1;
    volatile unsigned int DPLL_TE0_IRQ : 1;
    volatile unsigned int DPLL_TE1_IRQ : 1;
    volatile unsigned int DPLL_TE2_IRQ : 1;
    volatile unsigned int DPLL_TE3_IRQ : 1;
    volatile unsigned int DPLL_TE4_IRQ : 1;
    volatile unsigned int DPLL_CDIT_IRQ : 1;
    volatile unsigned int DPLL_CDIS_IRQ : 1;
    volatile unsigned int DPLL_TORI_IRQ : 1;
    volatile unsigned int DPLL_SORI_IRQ : 1;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_ICM_IRQG_1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_2_Bits
{
    volatile unsigned int TIM0_CH0_IRQ : 1;
    volatile unsigned int TIM0_CH1_IRQ : 1;
    volatile unsigned int TIM0_CH2_IRQ : 1;
    volatile unsigned int TIM0_CH3_IRQ : 1;
    volatile unsigned int TIM0_CH4_IRQ : 1;
    volatile unsigned int TIM0_CH5_IRQ : 1;
    volatile unsigned int TIM0_CH6_IRQ : 1;
    volatile unsigned int TIM0_CH7_IRQ : 1;
    volatile unsigned int TIM1_CH0_IRQ : 1;
    volatile unsigned int TIM1_CH1_IRQ : 1;
    volatile unsigned int TIM1_CH2_IRQ : 1;
    volatile unsigned int TIM1_CH3_IRQ : 1;
    volatile unsigned int TIM1_CH4_IRQ : 1;
    volatile unsigned int TIM1_CH5_IRQ : 1;
    volatile unsigned int TIM1_CH6_IRQ : 1;
    volatile unsigned int TIM1_CH7_IRQ : 1;
    volatile unsigned int TIM2_CH0_IRQ : 1;
    volatile unsigned int TIM2_CH1_IRQ : 1;
    volatile unsigned int TIM2_CH2_IRQ : 1;
    volatile unsigned int TIM2_CH3_IRQ : 1;
    volatile unsigned int TIM2_CH4_IRQ : 1;
    volatile unsigned int TIM2_CH5_IRQ : 1;
    volatile unsigned int TIM2_CH6_IRQ : 1;
    volatile unsigned int TIM2_CH7_IRQ : 1;
    volatile unsigned int TIM3_CH0_IRQ : 1;
    volatile unsigned int TIM3_CH1_IRQ : 1;
    volatile unsigned int TIM3_CH2_IRQ : 1;
    volatile unsigned int TIM3_CH3_IRQ : 1;
    volatile unsigned int TIM3_CH4_IRQ : 1;
    volatile unsigned int TIM3_CH5_IRQ : 1;
    volatile unsigned int TIM3_CH6_IRQ : 1;
    volatile unsigned int TIM3_CH7_IRQ : 1;
} Ifx_GTM_ICM_IRQG_2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_4_Bits
{
    volatile unsigned int MCS0_CH0_IRQ : 1;
    volatile unsigned int MCS0_CH1_IRQ : 1;
    volatile unsigned int MCS0_CH2_IRQ : 1;
    volatile unsigned int MCS0_CH3_IRQ : 1;
    volatile unsigned int MCS0_CH4_IRQ : 1;
    volatile unsigned int MCS0_CH5_IRQ : 1;
    volatile unsigned int MCS0_CH6_IRQ : 1;
    volatile unsigned int MCS0_CH7_IRQ : 1;
    volatile unsigned int MCS1_CH0_IRQ : 1;
    volatile unsigned int MCS1_CH1_IRQ : 1;
    volatile unsigned int MCS1_CH2_IRQ : 1;
    volatile unsigned int MCS1_CH3_IRQ : 1;
    volatile unsigned int MCS1_CH4_IRQ : 1;
    volatile unsigned int MCS1_CH5_IRQ : 1;
    volatile unsigned int MCS1_CH6_IRQ : 1;
    volatile unsigned int MCS1_CH7_IRQ : 1;
    volatile unsigned int MCS2_CH0_IRQ : 1;
    volatile unsigned int MCS2_CH1_IRQ : 1;
    volatile unsigned int MCS2_CH2_IRQ : 1;
    volatile unsigned int MCS2_CH3_IRQ : 1;
    volatile unsigned int MCS2_CH4_IRQ : 1;
    volatile unsigned int MCS2_CH5_IRQ : 1;
    volatile unsigned int MCS2_CH6_IRQ : 1;
    volatile unsigned int MCS2_CH7_IRQ : 1;
    volatile unsigned int MCS3_CH0_IRQ : 1;
    volatile unsigned int MCS3_CH1_IRQ : 1;
    volatile unsigned int MCS3_CH2_IRQ : 1;
    volatile unsigned int MCS3_CH3_IRQ : 1;
    volatile unsigned int MCS3_CH4_IRQ : 1;
    volatile unsigned int MCS3_CH5_IRQ : 1;
    volatile unsigned int MCS3_CH6_IRQ : 1;
    volatile unsigned int MCS3_CH7_IRQ : 1;
} Ifx_GTM_ICM_IRQG_4_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_6_Bits
{
    volatile unsigned int TOM0_CH0_IRQ : 1;
    volatile unsigned int TOM0_CH1_IRQ : 1;
    volatile unsigned int TOM0_CH2_IRQ : 1;
    volatile unsigned int TOM0_CH3_IRQ : 1;
    volatile unsigned int TOM0_CH4_IRQ : 1;
    volatile unsigned int TOM0_CH5_IRQ : 1;
    volatile unsigned int TOM0_CH6_IRQ : 1;
    volatile unsigned int TOM0_CH7_IRQ : 1;
    volatile unsigned int TOM0_CH8_IRQ : 1;
    volatile unsigned int TOM0_CH9_IRQ : 1;
    volatile unsigned int TOM0_CH10_IRQ : 1;
    volatile unsigned int TOM0_CH11_IRQ : 1;
    volatile unsigned int TOM0_CH12_IRQ : 1;
    volatile unsigned int TOM0_CH13_IRQ : 1;
    volatile unsigned int TOM0_CH14_IRQ : 1;
    volatile unsigned int TOM0_CH15_IRQ : 1;
    volatile unsigned int TOM1_CH0_IRQ : 1;
    volatile unsigned int TOM1_CH1_IRQ : 1;
    volatile unsigned int TOM1_CH2_IRQ : 1;
    volatile unsigned int TOM1_CH3_IRQ : 1;
    volatile unsigned int TOM1_CH4_IRQ : 1;
    volatile unsigned int TOM1_CH5_IRQ : 1;
    volatile unsigned int TOM1_CH6_IRQ : 1;
    volatile unsigned int TOM1_CH7_IRQ : 1;
    volatile unsigned int TOM1_CH8_IRQ : 1;
    volatile unsigned int TOM1_CH9_IRQ : 1;
    volatile unsigned int TOM1_CH10_IRQ : 1;
    volatile unsigned int TOM1_CH11_IRQ : 1;
    volatile unsigned int TOM1_CH12_IRQ : 1;
    volatile unsigned int TOM1_CH13_IRQ : 1;
    volatile unsigned int TOM1_CH14_IRQ : 1;
    volatile unsigned int TOM1_CH15_IRQ : 1;
} Ifx_GTM_ICM_IRQG_6_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_7_Bits
{
    volatile unsigned int TOM2_CH0_IRQ : 1;
    volatile unsigned int TOM2_CH1_IRQ : 1;
    volatile unsigned int TOM2_CH2_IRQ : 1;
    volatile unsigned int TOM2_CH3_IRQ : 1;
    volatile unsigned int TOM2_CH4_IRQ : 1;
    volatile unsigned int TOM2_CH5_IRQ : 1;
    volatile unsigned int TOM2_CH6_IRQ : 1;
    volatile unsigned int TOM2_CH7_IRQ : 1;
    volatile unsigned int TOM2_CH8_IRQ : 1;
    volatile unsigned int TOM2_CH9_IRQ : 1;
    volatile unsigned int TOM2_CH10_IRQ : 1;
    volatile unsigned int TOM2_CH11_IRQ : 1;
    volatile unsigned int TOM2_CH12_IRQ : 1;
    volatile unsigned int TOM2_CH13_IRQ : 1;
    volatile unsigned int TOM2_CH14_IRQ : 1;
    volatile unsigned int TOM2_CH15_IRQ : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_ICM_IRQG_7_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_9_Bits
{
    volatile unsigned int ATOM0_CH0_IRQ : 1;
    volatile unsigned int ATOM0_CH1_IRQ : 1;
    volatile unsigned int ATOM0_CH2_IRQ : 1;
    volatile unsigned int ATOM0_CH3_IRQ : 1;
    volatile unsigned int ATOM0_CH4_IRQ : 1;
    volatile unsigned int ATOM0_CH5_IRQ : 1;
    volatile unsigned int ATOM0_CH6_IRQ : 1;
    volatile unsigned int ATOM0_CH7_IRQ : 1;
    volatile unsigned int ATOM1_CH0_IRQ : 1;
    volatile unsigned int ATOM1_CH1_IRQ : 1;
    volatile unsigned int ATOM1_CH2_IRQ : 1;
    volatile unsigned int ATOM1_CH3_IRQ : 1;
    volatile unsigned int ATOM1_CH4_IRQ : 1;
    volatile unsigned int ATOM1_CH5_IRQ : 1;
    volatile unsigned int ATOM1_CH6_IRQ : 1;
    volatile unsigned int ATOM1_CH7_IRQ : 1;
    volatile unsigned int ATOM2_CH0_IRQ : 1;
    volatile unsigned int ATOM2_CH1_IRQ : 1;
    volatile unsigned int ATOM2_CH2_IRQ : 1;
    volatile unsigned int ATOM2_CH3_IRQ : 1;
    volatile unsigned int ATOM2_CH4_IRQ : 1;
    volatile unsigned int ATOM2_CH5_IRQ : 1;
    volatile unsigned int ATOM2_CH6_IRQ : 1;
    volatile unsigned int ATOM2_CH7_IRQ : 1;
    volatile unsigned int ATOM3_CH0_IRQ : 1;
    volatile unsigned int ATOM3_CH1_IRQ : 1;
    volatile unsigned int ATOM3_CH2_IRQ : 1;
    volatile unsigned int ATOM3_CH3_IRQ : 1;
    volatile unsigned int ATOM3_CH4_IRQ : 1;
    volatile unsigned int ATOM3_CH5_IRQ : 1;
    volatile unsigned int ATOM3_CH6_IRQ : 1;
    volatile unsigned int ATOM3_CH7_IRQ : 1;
} Ifx_GTM_ICM_IRQG_9_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI0_Bits
{
    volatile unsigned int FIFO0_CH0_EIRQ : 1;
    volatile unsigned int FIFO0_CH1_EIRQ : 1;
    volatile unsigned int FIFO0_CH2_EIRQ : 1;
    volatile unsigned int FIFO0_CH3_EIRQ : 1;
    volatile unsigned int FIFO0_CH4_EIRQ : 1;
    volatile unsigned int FIFO0_CH5_EIRQ : 1;
    volatile unsigned int FIFO0_CH6_EIRQ : 1;
    volatile unsigned int FIFO0_CH7_EIRQ : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_ICM_IRQG_CEI0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI1_Bits
{
    volatile unsigned int TIM0_CH0_EIRQ : 1;
    volatile unsigned int TIM0_CH1_EIRQ : 1;
    volatile unsigned int TIM0_CH2_EIRQ : 1;
    volatile unsigned int TIM0_CH3_EIRQ : 1;
    volatile unsigned int TIM0_CH4_EIRQ : 1;
    volatile unsigned int TIM0_CH5_EIRQ : 1;
    volatile unsigned int TIM0_CH6_EIRQ : 1;
    volatile unsigned int TIM0_CH7_EIRQ : 1;
    volatile unsigned int TIM1_CH0_EIRQ : 1;
    volatile unsigned int TIM1_CH1_EIRQ : 1;
    volatile unsigned int TIM1_CH2_EIRQ : 1;
    volatile unsigned int TIM1_CH3_EIRQ : 1;
    volatile unsigned int TIM1_CH4_EIRQ : 1;
    volatile unsigned int TIM1_CH5_EIRQ : 1;
    volatile unsigned int TIM1_CH6_EIRQ : 1;
    volatile unsigned int TIM1_CH7_EIRQ : 1;
    volatile unsigned int TIM2_CH0_EIRQ : 1;
    volatile unsigned int TIM2_CH1_EIRQ : 1;
    volatile unsigned int TIM2_CH2_EIRQ : 1;
    volatile unsigned int TIM2_CH3_EIRQ : 1;
    volatile unsigned int TIM2_CH4_EIRQ : 1;
    volatile unsigned int TIM2_CH5_EIRQ : 1;
    volatile unsigned int TIM2_CH6_EIRQ : 1;
    volatile unsigned int TIM2_CH7_EIRQ : 1;
    volatile unsigned int TIM3_CH0_EIRQ : 1;
    volatile unsigned int TIM3_CH1_EIRQ : 1;
    volatile unsigned int TIM3_CH2_EIRQ : 1;
    volatile unsigned int TIM3_CH3_EIRQ : 1;
    volatile unsigned int TIM3_CH4_EIRQ : 1;
    volatile unsigned int TIM3_CH5_IRQ : 1;
    volatile unsigned int TIM3_CH6_EIRQ : 1;
    volatile unsigned int TIM3_CH7_EIRQ : 1;
} Ifx_GTM_ICM_IRQG_CEI1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI3_Bits
{
    volatile unsigned int MCS0_CH0_EIRQ : 1;
    volatile unsigned int MCS0_CH1_EIRQ : 1;
    volatile unsigned int MCS0_CH2_EIRQ : 1;
    volatile unsigned int MCS0_CH3_EIRQ : 1;
    volatile unsigned int MCS0_CH4_EIRQ : 1;
    volatile unsigned int MCS0_CH5_EIRQ : 1;
    volatile unsigned int MCS0_CH6_EIRQ : 1;
    volatile unsigned int MCS0_CH7_EIRQ : 1;
    volatile unsigned int MCS1_CH0_EIRQ : 1;
    volatile unsigned int MCS1_CH1_EIRQ : 1;
    volatile unsigned int MCS1_CH2_EIRQ : 1;
    volatile unsigned int MCS1_CH3_EIRQ : 1;
    volatile unsigned int MCS1_CH4_EIRQ : 1;
    volatile unsigned int MCS1_CH5_EIRQ : 1;
    volatile unsigned int MCS1_CH6_EIRQ : 1;
    volatile unsigned int MCS1_CH7_EIRQ : 1;
    volatile unsigned int MCS2_CH0_EIRQ : 1;
    volatile unsigned int MCS2_CH1_EIRQ : 1;
    volatile unsigned int MCS2_CH2_EIRQ : 1;
    volatile unsigned int MCS2_CH3_EIRQ : 1;
    volatile unsigned int MCS2_CH4_EIRQ : 1;
    volatile unsigned int MCS2_CH5_EIRQ : 1;
    volatile unsigned int MCS2_CH6_EIRQ : 1;
    volatile unsigned int MCS2_CH7_EIRQ : 1;
    volatile unsigned int MCS3_CH0_EIRQ : 1;
    volatile unsigned int MCS3_CH1_EIRQ : 1;
    volatile unsigned int MCS3_CH2_EIRQ : 1;
    volatile unsigned int MCS3_CH3_EIRQ : 1;
    volatile unsigned int MCS3_CH4_EIRQ : 1;
    volatile unsigned int MCS3_CH5_EIRQ : 1;
    volatile unsigned int MCS3_CH6_EIRQ : 1;
    volatile unsigned int MCS3_CH7_EIRQ : 1;
} Ifx_GTM_ICM_IRQG_CEI3_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_Bits
{
    volatile unsigned int GTM_EIRQ : 1;
    volatile unsigned int BRC_EIRQ : 1;
    volatile unsigned int FIFO0_EIRQ : 1;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int TIM0_EIRQ : 1;
    volatile unsigned int TIM1_EIRQ : 1;
    volatile unsigned int TIM2_EIRQ : 1;
    volatile unsigned int TIM3_EIRQ : 1;
    volatile unsigned int reserved_8 : 4;
    volatile unsigned int MCS0_EIRQ : 1;
    volatile unsigned int MCS1_EIRQ : 1;
    volatile unsigned int MCS2_EIRQ : 1;
    volatile unsigned int MCS3_EIRQ : 1;
    volatile unsigned int reserved_16 : 4;
    volatile unsigned int SPE0_EIRQ : 1;
    volatile unsigned int SPE1_EIRQ : 1;
    volatile unsigned int reserved_22 : 2;
    volatile unsigned int CMP_EIRQ : 1;
    volatile unsigned int DPLL_EIRQ : 1;
    volatile unsigned int reserved_26 : 6;
} Ifx_GTM_ICM_IRQG_MEI_Bits;


typedef struct _Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int SEL4 : 4;
    volatile unsigned int SEL5 : 4;
    volatile unsigned int SEL6 : 4;
    volatile unsigned int SEL7 : 4;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_DSADC_INSEL_Bits
{
    volatile unsigned int INSEL0 : 4;
    volatile unsigned int INSEL1 : 4;
    volatile unsigned int INSEL2 : 4;
    volatile unsigned int INSEL3 : 4;
    volatile unsigned int INSEL4 : 4;
    volatile unsigned int INSEL5 : 4;
    volatile unsigned int INSEL6 : 4;
    volatile unsigned int INSEL7 : 4;
} Ifx_GTM_INOUTSEL_DSADC_INSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_DSADC_OUTSEL0_Bits
{
    volatile unsigned int SEL0 : 3;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int SEL1 : 3;
    volatile unsigned int reserved_7 : 1;
    volatile unsigned int SEL2 : 3;
    volatile unsigned int reserved_11 : 1;
    volatile unsigned int SEL3 : 3;
    volatile unsigned int reserved_15 : 1;
    volatile unsigned int SEL4 : 3;
    volatile unsigned int reserved_19 : 1;
    volatile unsigned int SEL5 : 3;
    volatile unsigned int reserved_23 : 9;
} Ifx_GTM_INOUTSEL_DSADC_OUTSEL0_Bits;


typedef struct _Ifx_GTM_INOUTSEL_PSI5_OUTSEL0_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int SEL4 : 4;
    volatile unsigned int SEL5 : 4;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_INOUTSEL_PSI5_OUTSEL0_Bits;


typedef struct _Ifx_GTM_INOUTSEL_PSI5S_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 4;
    volatile unsigned int SEL1 : 4;
    volatile unsigned int SEL2 : 4;
    volatile unsigned int SEL3 : 4;
    volatile unsigned int SEL4 : 4;
    volatile unsigned int SEL5 : 4;
    volatile unsigned int SEL6 : 4;
    volatile unsigned int SEL7 : 4;
} Ifx_GTM_INOUTSEL_PSI5S_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_T_OUTSEL_Bits
{
    volatile unsigned int SEL0 : 2;
    volatile unsigned int SEL1 : 2;
    volatile unsigned int SEL2 : 2;
    volatile unsigned int SEL3 : 2;
    volatile unsigned int SEL4 : 2;
    volatile unsigned int SEL5 : 2;
    volatile unsigned int SEL6 : 2;
    volatile unsigned int SEL7 : 2;
    volatile unsigned int SEL8 : 2;
    volatile unsigned int SEL9 : 2;
    volatile unsigned int SEL10 : 2;
    volatile unsigned int SEL11 : 2;
    volatile unsigned int SEL12 : 2;
    volatile unsigned int SEL13 : 2;
    volatile unsigned int SEL14 : 2;
    volatile unsigned int SEL15 : 2;
} Ifx_GTM_INOUTSEL_T_OUTSEL_Bits;


typedef struct _Ifx_GTM_INOUTSEL_TIM_INSEL_Bits
{
    volatile unsigned int CH0SEL : 4;
    volatile unsigned int CH1SEL : 4;
    volatile unsigned int CH2SEL : 4;
    volatile unsigned int CH3SEL : 4;
    volatile unsigned int CH4SEL : 4;
    volatile unsigned int CH5SEL : 4;
    volatile unsigned int CH6SEL : 4;
    volatile unsigned int CH7SEL : 4;
} Ifx_GTM_INOUTSEL_TIM_INSEL_Bits;


typedef struct _Ifx_GTM_IRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_IRQ_EN : 1;
    volatile unsigned int AEI_USP_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_IM_ADDR_IRQ_EN : 1;
    volatile unsigned int AEI_USP_BE_IRQ_EN : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_EN_Bits;


typedef struct _Ifx_GTM_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_AEI_TO_XPT : 1;
    volatile unsigned int TRG_AEI_USP_ADDR : 1;
    volatile unsigned int TRG_AEI_IM_ADDR : 1;
    volatile unsigned int TRG_AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_IRQ_NOTIFY_Bits
{
    volatile unsigned int AEI_TO_XPT : 1;
    volatile unsigned int AEI_USP_ADDR : 1;
    volatile unsigned int AEI_IM_ADDR : 1;
    volatile unsigned int AEI_USP_BE : 1;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_KRST0_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int RSTSTAT : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_KRST0_Bits;


typedef struct _Ifx_GTM_KRST1_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRST1_Bits;


typedef struct _Ifx_GTM_KRSTCLR_Bits
{
    volatile unsigned int CLR : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_KRSTCLR_Bits;


typedef struct _Ifx_GTM_MAP_CTRL_Bits
{
    volatile unsigned int TSEL : 1;
    volatile unsigned int SSL : 3;
    volatile unsigned int LSEL : 1;
    volatile unsigned int reserved_5 : 11;
    volatile unsigned int TSPP0_EN : 1;
    volatile unsigned int TSPP0_DLD : 1;
    volatile unsigned int reserved_18 : 2;
    volatile unsigned int TSPP0_I0V : 1;
    volatile unsigned int TSPP0_I1V : 1;
    volatile unsigned int TSPP0_I2V : 1;
    volatile unsigned int reserved_23 : 1;
    volatile unsigned int TSPP1_EN : 1;
    volatile unsigned int TSPP1_DLD : 1;
    volatile unsigned int reserved_26 : 2;
    volatile unsigned int TSPP1_I0V : 1;
    volatile unsigned int TSPP1_I1V : 1;
    volatile unsigned int TSPP1_I2V : 1;
    volatile unsigned int reserved_31 : 1;
} Ifx_GTM_MAP_CTRL_Bits;


typedef struct _Ifx_GTM_MCFG_CTRL_Bits
{
    volatile unsigned int MEM0 : 2;
    volatile unsigned int MEM1 : 2;
    volatile unsigned int MEM2 : 2;
    volatile unsigned int MEM3 : 2;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_MCFG_CTRL_Bits;


typedef struct _Ifx_GTM_MCS_CH0_CTRG_Bits
{
    volatile unsigned int TRG0 : 1;
    volatile unsigned int TRG1 : 1;
    volatile unsigned int TRG2 : 1;
    volatile unsigned int TRG3 : 1;
    volatile unsigned int TRG4 : 1;
    volatile unsigned int TRG5 : 1;
    volatile unsigned int TRG6 : 1;
    volatile unsigned int TRG7 : 1;
    volatile unsigned int TRG8 : 1;
    volatile unsigned int TRG9 : 1;
    volatile unsigned int TRG10 : 1;
    volatile unsigned int TRG11 : 1;
    volatile unsigned int TRG12 : 1;
    volatile unsigned int TRG13 : 1;
    volatile unsigned int TRG14 : 1;
    volatile unsigned int TRG15 : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_MCS_CH0_CTRG_Bits;


typedef struct _Ifx_GTM_MCS_CH0_STRG_Bits
{
    volatile unsigned int TRG0 : 1;
    volatile unsigned int TRG1 : 1;
    volatile unsigned int TRG2 : 1;
    volatile unsigned int TRG3 : 1;
    volatile unsigned int TRG4 : 1;
    volatile unsigned int TRG5 : 1;
    volatile unsigned int TRG6 : 1;
    volatile unsigned int TRG7 : 1;
    volatile unsigned int TRG8 : 1;
    volatile unsigned int TRG9 : 1;
    volatile unsigned int TRG10 : 1;
    volatile unsigned int TRG11 : 1;
    volatile unsigned int TRG12 : 1;
    volatile unsigned int TRG13 : 1;
    volatile unsigned int TRG14 : 1;
    volatile unsigned int TRG15 : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_MCS_CH0_STRG_Bits;


typedef struct _Ifx_GTM_MCS_CH_ACB_Bits
{
    volatile unsigned int ACB0 : 1;
    volatile unsigned int ACB1 : 1;
    volatile unsigned int ACB2 : 1;
    volatile unsigned int ACB3 : 1;
    volatile unsigned int ACB4 : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_MCS_CH_ACB_Bits;


typedef struct _Ifx_GTM_MCS_CH_CTRL_Bits
{
    volatile unsigned int EN : 1;
    volatile unsigned int IRQ : 1;
    volatile unsigned int ERR : 1;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int CY : 1;
    volatile unsigned int Z : 1;
    volatile unsigned int V : 1;
    volatile unsigned int N : 1;
    volatile unsigned int CAT : 1;
    volatile unsigned int CWT : 1;
    volatile unsigned int reserved_10 : 6;
    volatile unsigned int SP_CNT : 3;
    volatile unsigned int reserved_19 : 13;
} Ifx_GTM_MCS_CH_CTRL_Bits;


typedef struct _Ifx_GTM_MCS_CH_EIRQ_EN_Bits
{
    volatile unsigned int MCS_EIRQ_EN : 1;
    volatile unsigned int STK_ERR_EIRQ_EN : 1;
    volatile unsigned int MEM_ERR_EIRQ_EN : 1;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_MCS_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_EN_Bits
{
    volatile unsigned int MCS_IRQ_EN : 1;
    volatile unsigned int STK_ERR_IRQ_EN : 1;
    volatile unsigned int MEM_ERR_IRQ_EN : 1;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_MCS_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_MCS_IRQ : 1;
    volatile unsigned int TRG_STK_ERR_IRQ : 1;
    volatile unsigned int TRG_MEM_ERR_IRQ : 1;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_MCS_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int MCS_IRQ : 1;
    volatile unsigned int STK_ERR_IRQ : 1;
    volatile unsigned int MEM_ERR_IRQ : 1;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_MCS_CH_PC_Bits
{
    volatile unsigned int PC : 14;
    volatile unsigned int reserved_14 : 18;
} Ifx_GTM_MCS_CH_PC_Bits;


typedef struct _Ifx_GTM_MCS_CH_R0_Bits
{
    volatile unsigned int DATA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_CH_R0_Bits;


typedef struct _Ifx_GTM_MCS_CH_R1_Bits
{
    volatile unsigned int DATA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_CH_R1_Bits;


typedef struct _Ifx_GTM_MCS_CH_R2_Bits
{
    volatile unsigned int DATA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_CH_R2_Bits;


typedef struct _Ifx_GTM_MCS_CH_R3_Bits
{
    volatile unsigned int DATA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_CH_R3_Bits;


typedef struct _Ifx_GTM_MCS_CH_R4_Bits
{
    volatile unsigned int DATA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_CH_R4_Bits;


typedef struct _Ifx_GTM_MCS_CH_R5_Bits
{
    volatile unsigned int DATA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_CH_R5_Bits;


typedef struct _Ifx_GTM_MCS_CH_R6_Bits
{
    volatile unsigned int DATA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_CH_R6_Bits;


typedef struct _Ifx_GTM_MCS_CH_R7_Bits
{
    volatile unsigned int DATA : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_CH_R7_Bits;


typedef struct _Ifx_GTM_MCS_CTRL_Bits
{
    volatile unsigned int SCHED : 1;
    volatile unsigned int HLT_SP_OFL : 1;
    volatile unsigned int reserved_2 : 14;
    volatile unsigned int RAM_RST : 1;
    volatile unsigned int reserved_17 : 15;
} Ifx_GTM_MCS_CTRL_Bits;


typedef struct _Ifx_GTM_MCS_ERR_Bits
{
    volatile unsigned int ERR0 : 1;
    volatile unsigned int ERR1 : 1;
    volatile unsigned int ERR2 : 1;
    volatile unsigned int ERR3 : 1;
    volatile unsigned int ERR4 : 1;
    volatile unsigned int ERR5 : 1;
    volatile unsigned int ERR6 : 1;
    volatile unsigned int ERR7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_MCS_ERR_Bits;


typedef struct _Ifx_GTM_MCS_RST_Bits
{
    volatile unsigned int RST0 : 1;
    volatile unsigned int RST1 : 1;
    volatile unsigned int RST2 : 1;
    volatile unsigned int RST3 : 1;
    volatile unsigned int RST4 : 1;
    volatile unsigned int RST5 : 1;
    volatile unsigned int RST6 : 1;
    volatile unsigned int RST7 : 1;
    volatile unsigned int CAT0 : 1;
    volatile unsigned int CAT1 : 1;
    volatile unsigned int CAT2 : 1;
    volatile unsigned int CAT3 : 1;
    volatile unsigned int CAT4 : 1;
    volatile unsigned int CAT5 : 1;
    volatile unsigned int CAT6 : 1;
    volatile unsigned int CAT7 : 1;
    volatile unsigned int CWT0 : 1;
    volatile unsigned int CWT1 : 1;
    volatile unsigned int CWT2 : 1;
    volatile unsigned int CWT3 : 1;
    volatile unsigned int CWT4 : 1;
    volatile unsigned int CWT5 : 1;
    volatile unsigned int CWT6 : 1;
    volatile unsigned int CWT7 : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MCS_RST_Bits;


typedef struct _Ifx_GTM_MCSINTCLR_Bits
{
    volatile unsigned int MCS000 : 1;
    volatile unsigned int MCS001 : 1;
    volatile unsigned int MCS010 : 1;
    volatile unsigned int MCS011 : 1;
    volatile unsigned int MCS100 : 1;
    volatile unsigned int MCS101 : 1;
    volatile unsigned int MCS110 : 1;
    volatile unsigned int MCS111 : 1;
    volatile unsigned int MCS200 : 1;
    volatile unsigned int MCS201 : 1;
    volatile unsigned int MCS210 : 1;
    volatile unsigned int MCS211 : 1;
    volatile unsigned int MCS300 : 1;
    volatile unsigned int MCS301 : 1;
    volatile unsigned int MCS310 : 1;
    volatile unsigned int MCS311 : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_MCSINTCLR_Bits;


typedef struct _Ifx_GTM_MCSINTSTAT_Bits
{
    volatile unsigned int MCS000 : 1;
    volatile unsigned int MCS001 : 1;
    volatile unsigned int MCS010 : 1;
    volatile unsigned int MCS011 : 1;
    volatile unsigned int MCS100 : 1;
    volatile unsigned int MCS101 : 1;
    volatile unsigned int MCS110 : 1;
    volatile unsigned int MCS111 : 1;
    volatile unsigned int MCS200 : 1;
    volatile unsigned int MCS201 : 1;
    volatile unsigned int MCS210 : 1;
    volatile unsigned int MCS211 : 1;
    volatile unsigned int MCS300 : 1;
    volatile unsigned int MCS301 : 1;
    volatile unsigned int MCS310 : 1;
    volatile unsigned int MCS311 : 1;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_MCSINTSTAT_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_0_Bits
{
    volatile unsigned int MCA_0_0 : 1;
    volatile unsigned int MCA_0_1 : 1;
    volatile unsigned int MCA_0_2 : 1;
    volatile unsigned int MCA_0_3 : 1;
    volatile unsigned int MCA_0_4 : 1;
    volatile unsigned int MCA_0_5 : 1;
    volatile unsigned int MCA_0_6 : 1;
    volatile unsigned int MCA_0_7 : 1;
    volatile unsigned int MCA_1_0 : 1;
    volatile unsigned int MCA_1_1 : 1;
    volatile unsigned int MCA_1_2 : 1;
    volatile unsigned int MCA_1_3 : 1;
    volatile unsigned int MCA_1_4 : 1;
    volatile unsigned int MCA_1_5 : 1;
    volatile unsigned int MCA_1_6 : 1;
    volatile unsigned int MCA_1_7 : 1;
    volatile unsigned int MCA_2_0 : 1;
    volatile unsigned int MCA_2_1 : 1;
    volatile unsigned int MCA_2_2 : 1;
    volatile unsigned int MCA_2_3 : 1;
    volatile unsigned int MCA_2_4 : 1;
    volatile unsigned int MCA_2_5 : 1;
    volatile unsigned int MCA_2_6 : 1;
    volatile unsigned int MCA_2_7 : 1;
    volatile unsigned int MCA_3_0 : 1;
    volatile unsigned int MCA_3_1 : 1;
    volatile unsigned int MCA_3_2 : 1;
    volatile unsigned int MCA_3_3 : 1;
    volatile unsigned int MCA_3_4 : 1;
    volatile unsigned int MCA_3_5 : 1;
    volatile unsigned int MCA_3_6 : 1;
    volatile unsigned int MCA_3_7 : 1;
} Ifx_GTM_MON_ACTIVITY_0_Bits;


typedef struct _Ifx_GTM_MON_STATUS_Bits
{
    volatile unsigned int ACT_CMU0 : 1;
    volatile unsigned int ACT_CMU1 : 1;
    volatile unsigned int ACT_CMU2 : 1;
    volatile unsigned int ACT_CMU3 : 1;
    volatile unsigned int ACT_CMU4 : 1;
    volatile unsigned int ACT_CMU5 : 1;
    volatile unsigned int ACT_CMU6 : 1;
    volatile unsigned int ACT_CMU7 : 1;
    volatile unsigned int ACT_CMUFX0 : 1;
    volatile unsigned int ACT_CMUFX1 : 1;
    volatile unsigned int ACT_CMUFX2 : 1;
    volatile unsigned int ACT_CMUFX3 : 1;
    volatile unsigned int ACT_CMUFX4 : 1;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int CMP_ERR : 1;
    volatile unsigned int reserved_17 : 3;
    volatile unsigned int MCS0_ERR : 1;
    volatile unsigned int MCS1_ERR : 1;
    volatile unsigned int MCS2_ERR : 1;
    volatile unsigned int MCS3_ERR : 1;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_MON_STATUS_Bits;


typedef struct _Ifx_GTM_MSCIN_INHCON_Bits
{
    volatile unsigned int SEL0 : 2;
    volatile unsigned int SEL1 : 2;
    volatile unsigned int SEL2 : 2;
    volatile unsigned int SEL3 : 2;
    volatile unsigned int SEL4 : 2;
    volatile unsigned int SEL5 : 2;
    volatile unsigned int SEL6 : 2;
    volatile unsigned int SEL7 : 2;
    volatile unsigned int SEL8 : 2;
    volatile unsigned int SEL9 : 2;
    volatile unsigned int SEL10 : 2;
    volatile unsigned int SEL11 : 2;
    volatile unsigned int SEL12 : 2;
    volatile unsigned int SEL13 : 2;
    volatile unsigned int SEL14 : 2;
    volatile unsigned int SEL15 : 2;
} Ifx_GTM_MSCIN_INHCON_Bits;


typedef struct _Ifx_GTM_MSCIN_INLCON_Bits
{
    volatile unsigned int SEL0 : 2;
    volatile unsigned int SEL1 : 2;
    volatile unsigned int SEL2 : 2;
    volatile unsigned int SEL3 : 2;
    volatile unsigned int SEL4 : 2;
    volatile unsigned int SEL5 : 2;
    volatile unsigned int SEL6 : 2;
    volatile unsigned int SEL7 : 2;
    volatile unsigned int SEL8 : 2;
    volatile unsigned int SEL9 : 2;
    volatile unsigned int SEL10 : 2;
    volatile unsigned int SEL11 : 2;
    volatile unsigned int SEL12 : 2;
    volatile unsigned int SEL13 : 2;
    volatile unsigned int SEL14 : 2;
    volatile unsigned int SEL15 : 2;
} Ifx_GTM_MSCIN_INLCON_Bits;


typedef struct _Ifx_GTM_MSCSET_CON0_Bits
{
    volatile unsigned int SEL0 : 5;
    volatile unsigned int reserved_5 : 3;
    volatile unsigned int SEL1 : 5;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int SEL2 : 5;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int SEL3 : 5;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_MSCSET_CON0_Bits;


typedef struct _Ifx_GTM_MSCSET_CON1_Bits
{
    volatile unsigned int SEL4 : 5;
    volatile unsigned int reserved_5 : 3;
    volatile unsigned int SEL5 : 5;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int SEL6 : 5;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int SEL7 : 5;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_MSCSET_CON1_Bits;


typedef struct _Ifx_GTM_MSCSET_CON2_Bits
{
    volatile unsigned int SEL8 : 5;
    volatile unsigned int reserved_5 : 3;
    volatile unsigned int SEL9 : 5;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int SEL10 : 5;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int SEL11 : 5;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_MSCSET_CON2_Bits;


typedef struct _Ifx_GTM_MSCSET_CON3_Bits
{
    volatile unsigned int SEL12 : 5;
    volatile unsigned int reserved_5 : 3;
    volatile unsigned int SEL13 : 5;
    volatile unsigned int reserved_13 : 3;
    volatile unsigned int SEL14 : 5;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int SEL15 : 5;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_MSCSET_CON3_Bits;


typedef struct _Ifx_GTM_OCS_Bits
{
    volatile unsigned int reserved_0 : 24;
    volatile unsigned int SUS : 4;
    volatile unsigned int SUS_P : 1;
    volatile unsigned int SUSSTA : 1;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OCS_Bits;


typedef struct _Ifx_GTM_ODA_Bits
{
    volatile unsigned int DDREN : 1;
    volatile unsigned int DREN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_ODA_Bits;


typedef struct _Ifx_GTM_OTBU0T_Bits
{
    volatile unsigned int CV : 27;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int CM : 2;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_OTBU0T_Bits;


typedef struct _Ifx_GTM_OTBU1T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU1T_Bits;


typedef struct _Ifx_GTM_OTBU2T_Bits
{
    volatile unsigned int CV : 24;
    volatile unsigned int reserved_24 : 4;
    volatile unsigned int EN : 1;
    volatile unsigned int reserved_29 : 3;
} Ifx_GTM_OTBU2T_Bits;


typedef struct _Ifx_GTM_OTSC0_Bits
{
    volatile unsigned int B0LMT : 3;
    volatile unsigned int reserved_3 : 1;
    volatile unsigned int B0LMI : 4;
    volatile unsigned int B0HMT : 3;
    volatile unsigned int reserved_11 : 1;
    volatile unsigned int B0HMI : 4;
    volatile unsigned int B1LMT : 3;
    volatile unsigned int reserved_19 : 1;
    volatile unsigned int B1LMI : 4;
    volatile unsigned int B1HMT : 3;
    volatile unsigned int reserved_27 : 1;
    volatile unsigned int B1HMI : 4;
} Ifx_GTM_OTSC0_Bits;


typedef struct _Ifx_GTM_OTSC1_Bits
{
    volatile unsigned int MCS : 4;
    volatile unsigned int MI : 4;
    volatile unsigned int reserved_8 : 1;
    volatile unsigned int MOE : 1;
    volatile unsigned int reserved_10 : 22;
} Ifx_GTM_OTSC1_Bits;


typedef struct _Ifx_GTM_OTSS_Bits
{
    volatile unsigned int OTGB0 : 4;
    volatile unsigned int reserved_4 : 4;
    volatile unsigned int OTGB1 : 4;
    volatile unsigned int reserved_12 : 4;
    volatile unsigned int OTGB2 : 4;
    volatile unsigned int reserved_20 : 12;
} Ifx_GTM_OTSS_Bits;


typedef struct _Ifx_GTM_REV_Bits
{
    volatile unsigned int STEP : 8;
    volatile unsigned int NO : 4;
    volatile unsigned int MINOR : 4;
    volatile unsigned int MAJOR : 4;
    volatile unsigned int DEV_CODE0 : 4;
    volatile unsigned int DEV_CODE1 : 4;
    volatile unsigned int DEV_CODE2 : 4;
} Ifx_GTM_REV_Bits;


typedef struct _Ifx_GTM_RST_Bits
{
    volatile unsigned int RST : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_RST_Bits;


typedef struct _Ifx_GTM_SPE_CMP_Bits
{
    volatile unsigned int CMP : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_SPE_CMP_Bits;


typedef struct _Ifx_GTM_SPE_CNT_Bits
{
    volatile unsigned int CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_SPE_CNT_Bits;


typedef struct _Ifx_GTM_SPE_CTRL_STAT_Bits
{
    volatile unsigned int SPE_EN : 1;
    volatile unsigned int SIE0 : 1;
    volatile unsigned int SIE1 : 1;
    volatile unsigned int SIE2 : 1;
    volatile unsigned int TRIG_SEL : 2;
    volatile unsigned int TIM_SEL : 1;
    volatile unsigned int FSOM : 1;
    volatile unsigned int SPE_PAT_PTR : 3;
    volatile unsigned int reserved_11 : 1;
    volatile unsigned int AIP : 3;
    volatile unsigned int ADIR : 1;
    volatile unsigned int PIP : 3;
    volatile unsigned int PDIR : 1;
    volatile unsigned int NIP : 3;
    volatile unsigned int reserved_23 : 1;
    volatile unsigned int FSOL : 8;
} Ifx_GTM_SPE_CTRL_STAT_Bits;


typedef struct _Ifx_GTM_SPE_EIRQ_EN_Bits
{
    volatile unsigned int SPE_NIPD_EIRQ_EN : 1;
    volatile unsigned int SPE_DCHG_EIRQ_EN : 1;
    volatile unsigned int SPE_PERR_EIRQ_EN : 1;
    volatile unsigned int SPE_BIS_EIRQ_EN : 1;
    volatile unsigned int SPE_RCMP_EIRQ_EN : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_SPE_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_EN_Bits
{
    volatile unsigned int SPE_NIPD_IRQ_EN : 1;
    volatile unsigned int SPE_DCHG_IRQ_EN : 1;
    volatile unsigned int SPE_PERR_IRQ_EN : 1;
    volatile unsigned int SPE_BIS_IRQ_EN : 1;
    volatile unsigned int SPE_RCMP_IRQ_EN : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_SPE_IRQ_EN_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_SPE_NIPD : 1;
    volatile unsigned int TRG_SPE_DCHG : 1;
    volatile unsigned int TRG_SPE_PERR : 1;
    volatile unsigned int TRG_SPE_BIS : 1;
    volatile unsigned int TRG_SPE_RCMP : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_SPE_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_SPE_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_NOTIFY_Bits
{
    volatile unsigned int SPE_NIPD : 1;
    volatile unsigned int SPE_DCHG : 1;
    volatile unsigned int SPE_PERR : 1;
    volatile unsigned int SPE_BIS : 1;
    volatile unsigned int SPE_RCMP : 1;
    volatile unsigned int reserved_5 : 27;
} Ifx_GTM_SPE_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_SPE_OUT_CTRL_Bits
{
    volatile unsigned int SPE_OUT_CTRL : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_SPE_OUT_CTRL_Bits;


typedef struct _Ifx_GTM_SPE_OUT_PAT_Bits
{
    volatile unsigned int SPE_OUT_PAT : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_SPE_OUT_PAT_Bits;


typedef struct _Ifx_GTM_SPE_PAT_Bits
{
    volatile unsigned int IP0_VAL : 1;
    volatile unsigned int IP0_PAT : 3;
    volatile unsigned int IP1_VAL : 1;
    volatile unsigned int IP1_PAT : 3;
    volatile unsigned int IP2_VAL : 1;
    volatile unsigned int IP2_PAT : 3;
    volatile unsigned int IP3_VAL : 1;
    volatile unsigned int IP3_PAT : 3;
    volatile unsigned int IP4_VAL : 1;
    volatile unsigned int IP4_PAT : 3;
    volatile unsigned int IP5_VAL : 1;
    volatile unsigned int IP5_PAT : 3;
    volatile unsigned int IP6_VAL : 1;
    volatile unsigned int IP6_PAT : 3;
    volatile unsigned int IP7_VAL : 1;
    volatile unsigned int IP7_PAT : 3;
} Ifx_GTM_SPE_PAT_Bits;


typedef struct _Ifx_GTM_TBU_CH0_BASE_Bits
{
    volatile unsigned int BASE : 27;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TBU_CH0_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH0_CTRL_Bits
{
    volatile unsigned int LOW_RES : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH0_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH1_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH1_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH1_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH1_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH2_BASE_Bits
{
    volatile unsigned int BASE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TBU_CH2_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH2_CTRL_Bits
{
    volatile unsigned int CH_MODE : 1;
    volatile unsigned int CH_CLK_SRC : 3;
    volatile unsigned int reserved_4 : 28;
} Ifx_GTM_TBU_CH2_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CHEN_Bits
{
    volatile unsigned int ENDIS_CH0 : 2;
    volatile unsigned int ENDIS_CH1 : 2;
    volatile unsigned int ENDIS_CH2 : 2;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TBU_CHEN_Bits;


typedef struct _Ifx_GTM_TIM_AUX_IN_SRC_Bits
{
    volatile unsigned int SRC_CH0 : 1;
    volatile unsigned int SRC_CH1 : 1;
    volatile unsigned int SRC_CH2 : 1;
    volatile unsigned int SRC_CH3 : 1;
    volatile unsigned int SRC_CH4 : 1;
    volatile unsigned int SRC_CH5 : 1;
    volatile unsigned int SRC_CH6 : 1;
    volatile unsigned int SRC_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_AUX_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNT_Bits
{
    volatile unsigned int CNT : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_CNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNTS_Bits
{
    volatile unsigned int CNTS : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_CNTS_Bits;


typedef struct _Ifx_GTM_TIM_CH_CTRL_Bits
{
    volatile unsigned int TIM_EN : 1;
    volatile unsigned int TIM_MODE : 3;
    volatile unsigned int OSM : 1;
    volatile unsigned int ARU_EN : 1;
    volatile unsigned int CICTRL : 1;
    volatile unsigned int TBU0_SEL : 1;
    volatile unsigned int GPR0_SEL : 2;
    volatile unsigned int GPR1_SEL : 2;
    volatile unsigned int CNTS_SEL : 1;
    volatile unsigned int DSL : 1;
    volatile unsigned int ISL : 1;
    volatile unsigned int ECNT_RESET : 1;
    volatile unsigned int FLT_EN : 1;
    volatile unsigned int FLT_CNT_FRQ : 2;
    volatile unsigned int EXT_CAP_EN : 1;
    volatile unsigned int FLT_MODE_RE : 1;
    volatile unsigned int FLT_CTR_RE : 1;
    volatile unsigned int FLT_MODE_FE : 1;
    volatile unsigned int FLT_CTR_FE : 1;
    volatile unsigned int CLK_SEL : 3;
    volatile unsigned int FR_ECNT_OFL : 1;
    volatile unsigned int EGPR0_SEL : 1;
    volatile unsigned int EGPR1_SEL : 1;
    volatile unsigned int TOCTRL : 2;
} Ifx_GTM_TIM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECNT_Bits
{
    volatile unsigned int ECNT : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TIM_CH_ECNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECTRL_Bits
{
    volatile unsigned int EXT_CAP_SRC : 3;
    volatile unsigned int reserved_3 : 29;
} Ifx_GTM_TIM_CH_ECTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_EIRQ_EN_Bits
{
    volatile unsigned int NEWVAL_EIRQ_EN : 1;
    volatile unsigned int ECNTOFL_EIRQ_EN : 1;
    volatile unsigned int CNTOFL_EIRQ_EN : 1;
    volatile unsigned int GPROFL_EIRQ_EN : 1;
    volatile unsigned int TODET_EIRQ_EN : 1;
    volatile unsigned int GLITCHDET_EIRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_FE_Bits
{
    volatile unsigned int FLT_FE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_FE_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_RE_Bits
{
    volatile unsigned int FLT_RE : 24;
    volatile unsigned int reserved_24 : 8;
} Ifx_GTM_TIM_CH_FLT_RE_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR0_Bits
{
    volatile unsigned int GPR0 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR0_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR1_Bits
{
    volatile unsigned int GPR1 : 24;
    volatile unsigned int ECNT : 8;
} Ifx_GTM_TIM_CH_GPR1_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_EN_Bits
{
    volatile unsigned int NEWVAL_IRQ_EN : 1;
    volatile unsigned int ECNTOFL_IRQ_EN : 1;
    volatile unsigned int CNTOFL_IRQ_EN : 1;
    volatile unsigned int GPROFL_IRQ_EN : 1;
    volatile unsigned int TODET_IRQ_EN : 1;
    volatile unsigned int GLITCHDET_IRQ_EN : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEWVAL : 1;
    volatile unsigned int TRG_ECNTOFL : 1;
    volatile unsigned int TRG_CNTOFL : 1;
    volatile unsigned int TRG_GPROFL : 1;
    volatile unsigned int TRG_TODET : 1;
    volatile unsigned int TRG_GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TIM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEWVAL : 1;
    volatile unsigned int ECNTOFL : 1;
    volatile unsigned int CNTOFL : 1;
    volatile unsigned int GPROFL : 1;
    volatile unsigned int TODET : 1;
    volatile unsigned int GLITCHDET : 1;
    volatile unsigned int reserved_6 : 26;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUC_Bits
{
    volatile unsigned int TO_CNT : 8;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_CH_TDUC_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUV_Bits
{
    volatile unsigned int TOV : 8;
    volatile unsigned int reserved_8 : 20;
    volatile unsigned int TCS : 3;
    volatile unsigned int reserved_31 : 1;
} Ifx_GTM_TIM_CH_TDUV_Bits;


typedef struct _Ifx_GTM_TIM_IN_SRC_Bits
{
    volatile unsigned int VAL_0 : 2;
    volatile unsigned int MODE_0 : 2;
    volatile unsigned int VAL_1 : 2;
    volatile unsigned int MODE_1 : 2;
    volatile unsigned int VAL_2 : 2;
    volatile unsigned int MODE_2 : 2;
    volatile unsigned int VAL_3 : 2;
    volatile unsigned int MODE_3 : 2;
    volatile unsigned int VAL_4 : 2;
    volatile unsigned int MODE_4 : 2;
    volatile unsigned int VAL_5 : 2;
    volatile unsigned int MODE_5 : 2;
    volatile unsigned int VAL_6 : 2;
    volatile unsigned int MODE_6 : 2;
    volatile unsigned int VAL_7 : 2;
    volatile unsigned int MODE_7 : 2;
} Ifx_GTM_TIM_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_RST_Bits
{
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int reserved_8 : 24;
} Ifx_GTM_TIM_RST_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM0_Bits
{
    volatile unsigned int CM0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM1_Bits
{
    volatile unsigned int CM1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_TOM_CH_CN0_Bits
{
    volatile unsigned int CN0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CTRL_Bits
{
    volatile unsigned int reserved_0 : 11;
    volatile unsigned int SL : 1;
    volatile unsigned int CLK_SRC_SR : 3;
    volatile unsigned int reserved_15 : 5;
    volatile unsigned int RST_CCU0 : 1;
    volatile unsigned int reserved_21 : 3;
    volatile unsigned int TRIGOUT : 1;
    volatile unsigned int reserved_25 : 1;
    volatile unsigned int OSM : 1;
    volatile unsigned int BITREV : 1;
    volatile unsigned int SPEM : 1;
    volatile unsigned int GCM : 1;
    volatile unsigned int reserved_30 : 2;
} Ifx_GTM_TOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN : 1;
    volatile unsigned int CCU1TC_IRQ_EN : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC0 : 1;
    volatile unsigned int TRG_CCU1TC0 : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE : 2;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC : 1;
    volatile unsigned int CCU1TC : 1;
    volatile unsigned int reserved_2 : 30;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR0_Bits
{
    volatile unsigned int SR0 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR1_Bits
{
    volatile unsigned int SR1 : 16;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_TOM_CH_STAT_Bits
{
    volatile unsigned int OL : 1;
    volatile unsigned int reserved_1 : 31;
} Ifx_GTM_TOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC0_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ACT_TB_Bits
{
    volatile unsigned int ACT_TB : 24;
    volatile unsigned int TB_TRIG : 1;
    volatile unsigned int TBU_SEL : 2;
    volatile unsigned int reserved_27 : 5;
} Ifx_GTM_TOM_TGC1_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0 : 2;
    volatile unsigned int ENDIS_CTRL1 : 2;
    volatile unsigned int ENDIS_CTRL2 : 2;
    volatile unsigned int ENDIS_CTRL3 : 2;
    volatile unsigned int ENDIS_CTRL4 : 2;
    volatile unsigned int ENDIS_CTRL5 : 2;
    volatile unsigned int ENDIS_CTRL6 : 2;
    volatile unsigned int ENDIS_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0 : 2;
    volatile unsigned int ENDIS_STAT1 : 2;
    volatile unsigned int ENDIS_STAT2 : 2;
    volatile unsigned int ENDIS_STAT3 : 2;
    volatile unsigned int ENDIS_STAT4 : 2;
    volatile unsigned int ENDIS_STAT5 : 2;
    volatile unsigned int ENDIS_STAT6 : 2;
    volatile unsigned int ENDIS_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0 : 2;
    volatile unsigned int FUPD_CTRL1 : 2;
    volatile unsigned int FUPD_CTRL2 : 2;
    volatile unsigned int FUPD_CTRL3 : 2;
    volatile unsigned int FUPD_CTRL4 : 2;
    volatile unsigned int FUPD_CTRL5 : 2;
    volatile unsigned int FUPD_CTRL6 : 2;
    volatile unsigned int FUPD_CTRL7 : 2;
    volatile unsigned int RSTCN0_CH0 : 2;
    volatile unsigned int RSTCN0_CH1 : 2;
    volatile unsigned int RSTCN0_CH2 : 2;
    volatile unsigned int RSTCN0_CH3 : 2;
    volatile unsigned int RSTCN0_CH4 : 2;
    volatile unsigned int RSTCN0_CH5 : 2;
    volatile unsigned int RSTCN0_CH6 : 2;
    volatile unsigned int RSTCN0_CH7 : 2;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG : 1;
    volatile unsigned int reserved_1 : 7;
    volatile unsigned int RST_CH0 : 1;
    volatile unsigned int RST_CH1 : 1;
    volatile unsigned int RST_CH2 : 1;
    volatile unsigned int RST_CH3 : 1;
    volatile unsigned int RST_CH4 : 1;
    volatile unsigned int RST_CH5 : 1;
    volatile unsigned int RST_CH6 : 1;
    volatile unsigned int RST_CH7 : 1;
    volatile unsigned int UPEN_CTRL0 : 2;
    volatile unsigned int UPEN_CTRL1 : 2;
    volatile unsigned int UPEN_CTRL2 : 2;
    volatile unsigned int UPEN_CTRL3 : 2;
    volatile unsigned int UPEN_CTRL4 : 2;
    volatile unsigned int UPEN_CTRL5 : 2;
    volatile unsigned int UPEN_CTRL6 : 2;
    volatile unsigned int UPEN_CTRL7 : 2;
} Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0 : 2;
    volatile unsigned int INT_TRIG1 : 2;
    volatile unsigned int INT_TRIG2 : 2;
    volatile unsigned int INT_TRIG3 : 2;
    volatile unsigned int INT_TRIG4 : 2;
    volatile unsigned int INT_TRIG5 : 2;
    volatile unsigned int INT_TRIG6 : 2;
    volatile unsigned int INT_TRIG7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0 : 2;
    volatile unsigned int OUTEN_CTRL1 : 2;
    volatile unsigned int OUTEN_CTRL2 : 2;
    volatile unsigned int OUTEN_CTRL3 : 2;
    volatile unsigned int OUTEN_CTRL4 : 2;
    volatile unsigned int OUTEN_CTRL5 : 2;
    volatile unsigned int OUTEN_CTRL6 : 2;
    volatile unsigned int OUTEN_CTRL7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0 : 2;
    volatile unsigned int OUTEN_STAT1 : 2;
    volatile unsigned int OUTEN_STAT2 : 2;
    volatile unsigned int OUTEN_STAT3 : 2;
    volatile unsigned int OUTEN_STAT4 : 2;
    volatile unsigned int OUTEN_STAT5 : 2;
    volatile unsigned int OUTEN_STAT6 : 2;
    volatile unsigned int OUTEN_STAT7 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TRIGOUT_Bits
{
    volatile unsigned int INT0 : 2;
    volatile unsigned int INT1 : 2;
    volatile unsigned int TRIG0 : 2;
    volatile unsigned int TRIG1 : 2;
    volatile unsigned int TRIG2 : 2;
    volatile unsigned int TRIG3 : 2;
    volatile unsigned int TRIG4 : 2;
    volatile unsigned int TRIG5 : 2;
    volatile unsigned int reserved_16 : 16;
} Ifx_GTM_TRIGOUT_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ACCEN0_Bits B;
} Ifx_GTM_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ACCEN1_Bits B;
} Ifx_GTM_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ADCTRIG0OUT0_Bits B;
} Ifx_GTM_ADCTRIG0OUT0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ADCTRIG0OUT1_Bits B;
} Ifx_GTM_ADCTRIG0OUT1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ADCTRIG1OUT0_Bits B;
} Ifx_GTM_ADCTRIG1OUT0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ADCTRIG1OUT1_Bits B;
} Ifx_GTM_ADCTRIG1OUT1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_AEI_ADDR_XPT_Bits B;
} Ifx_GTM_AEI_ADDR_XPT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_AFD_CH_BUF_ACC_Bits B;
} Ifx_GTM_AFD_CH_BUF_ACC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_ARU_ACCESS_Bits B;
} Ifx_GTM_ARU_ARU_ACCESS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_DATA_H_Bits B;
} Ifx_GTM_ARU_DATA_H;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_DATA_L_Bits B;
} Ifx_GTM_ARU_DATA_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_DBG_ACCESS0_Bits B;
} Ifx_GTM_ARU_DBG_ACCESS0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_DBG_ACCESS1_Bits B;
} Ifx_GTM_ARU_DBG_ACCESS1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_DBG_DATA0_H_Bits B;
} Ifx_GTM_ARU_DBG_DATA0_H;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_DBG_DATA0_L_Bits B;
} Ifx_GTM_ARU_DBG_DATA0_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_DBG_DATA1_H_Bits B;
} Ifx_GTM_ARU_DBG_DATA1_H;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_DBG_DATA1_L_Bits B;
} Ifx_GTM_ARU_DBG_DATA1_L;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_IRQ_EN_Bits B;
} Ifx_GTM_ARU_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_IRQ_FORCINT_Bits B;
} Ifx_GTM_ARU_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_IRQ_MODE_Bits B;
} Ifx_GTM_ARU_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ARU_IRQ_NOTIFY_Bits B;
} Ifx_GTM_ARU_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_AGC_ACT_TB_Bits B;
} Ifx_GTM_ATOM_AGC_ACT_TB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_ENDIS_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits B;
} Ifx_GTM_ATOM_AGC_ENDIS_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_FUPD_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_GLB_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_AGC_INT_TRIG_Bits B;
} Ifx_GTM_ATOM_AGC_INT_TRIG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_OUTEN_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits B;
} Ifx_GTM_ATOM_AGC_OUTEN_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_CM0_Bits B;
} Ifx_GTM_ATOM_CH_CM0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_CM1_Bits B;
} Ifx_GTM_ATOM_CH_CM1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_CN0_Bits B;
} Ifx_GTM_ATOM_CH_CN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_CTRL_Bits B;
} Ifx_GTM_ATOM_CH_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_RDADDR_Bits B;
} Ifx_GTM_ATOM_CH_RDADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_SOMC_Bits B;
} Ifx_GTM_ATOM_CH_SOMC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_SOMI_Bits B;
} Ifx_GTM_ATOM_CH_SOMI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_SOMP_Bits B;
} Ifx_GTM_ATOM_CH_SOMP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_SOMS_Bits B;
} Ifx_GTM_ATOM_CH_SOMS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_SR0_Bits B;
} Ifx_GTM_ATOM_CH_SR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_SR1_Bits B;
} Ifx_GTM_ATOM_CH_SR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ATOM_CH_STAT_Bits B;
} Ifx_GTM_ATOM_CH_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_EIRQ_EN_Bits B;
} Ifx_GTM_BRC_EIRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_IRQ_EN_Bits B;
} Ifx_GTM_BRC_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_IRQ_FORCINT_Bits B;
} Ifx_GTM_BRC_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_IRQ_MODE_Bits B;
} Ifx_GTM_BRC_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_IRQ_NOTIFY_Bits B;
} Ifx_GTM_BRC_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_RST_Bits B;
} Ifx_GTM_BRC_RST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC0_ADDR_Bits B;
} Ifx_GTM_BRC_SRC0_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC0_DEST_Bits B;
} Ifx_GTM_BRC_SRC0_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC10_ADDR_Bits B;
} Ifx_GTM_BRC_SRC10_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC10_DEST_Bits B;
} Ifx_GTM_BRC_SRC10_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC11_ADDR_Bits B;
} Ifx_GTM_BRC_SRC11_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC11_DEST_Bits B;
} Ifx_GTM_BRC_SRC11_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC1_ADDR_Bits B;
} Ifx_GTM_BRC_SRC1_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC1_DEST_Bits B;
} Ifx_GTM_BRC_SRC1_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC2_ADDR_Bits B;
} Ifx_GTM_BRC_SRC2_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC2_DEST_Bits B;
} Ifx_GTM_BRC_SRC2_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC3_ADDR_Bits B;
} Ifx_GTM_BRC_SRC3_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC3_DEST_Bits B;
} Ifx_GTM_BRC_SRC3_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC4_ADDR_Bits B;
} Ifx_GTM_BRC_SRC4_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC4_DEST_Bits B;
} Ifx_GTM_BRC_SRC4_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC5_ADDR_Bits B;
} Ifx_GTM_BRC_SRC5_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC5_DEST_Bits B;
} Ifx_GTM_BRC_SRC5_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC6_ADDR_Bits B;
} Ifx_GTM_BRC_SRC6_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC6_DEST_Bits B;
} Ifx_GTM_BRC_SRC6_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC7_ADDR_Bits B;
} Ifx_GTM_BRC_SRC7_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC7_DEST_Bits B;
} Ifx_GTM_BRC_SRC7_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC8_ADDR_Bits B;
} Ifx_GTM_BRC_SRC8_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC8_DEST_Bits B;
} Ifx_GTM_BRC_SRC8_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC9_ADDR_Bits B;
} Ifx_GTM_BRC_SRC9_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRC_SRC9_DEST_Bits B;
} Ifx_GTM_BRC_SRC9_DEST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRIDGE_MODE_Bits B;
} Ifx_GTM_BRIDGE_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRIDGE_PTR1_Bits B;
} Ifx_GTM_BRIDGE_PTR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_BRIDGE_PTR2_Bits B;
} Ifx_GTM_BRIDGE_PTR2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CLC_Bits B;
} Ifx_GTM_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMP_EIRQ_EN_Bits B;
} Ifx_GTM_CMP_EIRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMP_EN_Bits B;
} Ifx_GTM_CMP_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMP_IRQ_EN_Bits B;
} Ifx_GTM_CMP_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMP_IRQ_FORCINT_Bits B;
} Ifx_GTM_CMP_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMP_IRQ_MODE_Bits B;
} Ifx_GTM_CMP_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMP_IRQ_NOTIFY_Bits B;
} Ifx_GTM_CMP_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_CLK0_5_CTRL_Bits B;
} Ifx_GTM_CMU_CLK0_5_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_CLK_6_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_6_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_CLK_7_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_7_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_CLK_EN_Bits B;
} Ifx_GTM_CMU_CLK_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_ECLK_DEN_Bits B;
} Ifx_GTM_CMU_ECLK_DEN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_ECLK_NUM_Bits B;
} Ifx_GTM_CMU_ECLK_NUM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_FXCLK_CTRL_Bits B;
} Ifx_GTM_CMU_FXCLK_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_GCLK_DEN_Bits B;
} Ifx_GTM_CMU_GCLK_DEN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CMU_GCLK_NUM_Bits B;
} Ifx_GTM_CMU_GCLK_NUM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_CTRL_Bits B;
} Ifx_GTM_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DATAIN_Bits B;
} Ifx_GTM_DATAIN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_ACB_Bits B;
} Ifx_GTM_DPLL_ACB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_ACT_STA_Bits B;
} Ifx_GTM_DPLL_ACT_STA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_ADD_IN_CAL1_Bits B;
} Ifx_GTM_DPLL_ADD_IN_CAL1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_ADD_IN_CAL2_Bits B;
} Ifx_GTM_DPLL_ADD_IN_CAL2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_ADD_IN_LD1_Bits B;
} Ifx_GTM_DPLL_ADD_IN_LD1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_ADD_IN_LD2_Bits B;
} Ifx_GTM_DPLL_ADD_IN_LD2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_ADT_S_Bits B;
} Ifx_GTM_DPLL_ADT_S;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_AOSV_2_Bits B;
} Ifx_GTM_DPLL_AOSV_2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_APS_Bits B;
} Ifx_GTM_DPLL_APS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_APS_1C3_Bits B;
} Ifx_GTM_DPLL_APS_1C3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_APS_SYNC_Bits B;
} Ifx_GTM_DPLL_APS_SYNC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_APT_Bits B;
} Ifx_GTM_DPLL_APT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_APT_2C_Bits B;
} Ifx_GTM_DPLL_APT_2C;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_APT_SYNC_Bits B;
} Ifx_GTM_DPLL_APT_SYNC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CDT_SX_Bits B;
} Ifx_GTM_DPLL_CDT_SX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CDT_SX_NOM_Bits B;
} Ifx_GTM_DPLL_CDT_SX_NOM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CDT_TX_Bits B;
} Ifx_GTM_DPLL_CDT_TX;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CDT_TX_NOM_Bits B;
} Ifx_GTM_DPLL_CDT_TX_NOM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CNT_NUM1_Bits B;
} Ifx_GTM_DPLL_CNT_NUM1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CNT_NUM2_Bits B;
} Ifx_GTM_DPLL_CNT_NUM2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE_Bits B;
} Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CTRL_0_Bits B;
} Ifx_GTM_DPLL_CTRL_0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits B;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits B;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CTRL_1_Bits B;
} Ifx_GTM_DPLL_CTRL_1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits B;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CTRL_2_Bits B;
} Ifx_GTM_DPLL_CTRL_2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CTRL_3_Bits B;
} Ifx_GTM_DPLL_CTRL_3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_CTRL_4_Bits B;
} Ifx_GTM_DPLL_CTRL_4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_DLA_Bits B;
} Ifx_GTM_DPLL_DLA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_DT_S_Bits B;
} Ifx_GTM_DPLL_DT_S;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_DT_S_ACT_Bits B;
} Ifx_GTM_DPLL_DT_S_ACT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_DT_T_ACT_Bits B;
} Ifx_GTM_DPLL_DT_T_ACT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_DTA_Bits B;
} Ifx_GTM_DPLL_DTA;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_EDT_S_Bits B;
} Ifx_GTM_DPLL_EDT_S;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_EDT_T_Bits B;
} Ifx_GTM_DPLL_EDT_T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_EIRQ_EN_Bits B;
} Ifx_GTM_DPLL_EIRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_FTV_S_Bits B;
} Ifx_GTM_DPLL_FTV_S;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_FTV_T_Bits B;
} Ifx_GTM_DPLL_FTV_T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_ID_PMTR_Bits B;
} Ifx_GTM_DPLL_ID_PMTR;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_INC_CNT1_Bits B;
} Ifx_GTM_DPLL_INC_CNT1;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_INC_CNT2_Bits B;
} Ifx_GTM_DPLL_INC_CNT2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_IRQ_EN_Bits B;
} Ifx_GTM_DPLL_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_IRQ_FORCINT_Bits B;
} Ifx_GTM_DPLL_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_IRQ_MODE_Bits B;
} Ifx_GTM_DPLL_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_IRQ_NOTIFY_Bits B;
} Ifx_GTM_DPLL_IRQ_NOTIFY;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_MEDT_S_Bits B;
} Ifx_GTM_DPLL_MEDT_S;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_MEDT_T_Bits B;
} Ifx_GTM_DPLL_MEDT_T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_MLS1_Bits B;
} Ifx_GTM_DPLL_MLS1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_MLS2_Bits B;
} Ifx_GTM_DPLL_MLS2;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_MPVAL1_Bits B;
} Ifx_GTM_DPLL_MPVAL1;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_MPVAL2_Bits B;
} Ifx_GTM_DPLL_MPVAL2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NA_Bits B;
} Ifx_GTM_DPLL_NA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NMB_S_Bits B;
} Ifx_GTM_DPLL_NMB_S;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NMB_S_TAR_Bits B;
} Ifx_GTM_DPLL_NMB_S_TAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits B;
} Ifx_GTM_DPLL_NMB_S_TAR_OLD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NMB_T_Bits B;
} Ifx_GTM_DPLL_NMB_T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NMB_T_TAR_Bits B;
} Ifx_GTM_DPLL_NMB_T_TAR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits B;
} Ifx_GTM_DPLL_NMB_T_TAR_OLD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NTI_CNT_Bits B;
} Ifx_GTM_DPLL_NTI_CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NUSC_Bits B;
} Ifx_GTM_DPLL_NUSC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_NUTC_Bits B;
} Ifx_GTM_DPLL_NUTC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_OSW_Bits B;
} Ifx_GTM_DPLL_OSW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PDT_T_Bits B;
} Ifx_GTM_DPLL_PDT_T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PSA_Bits B;
} Ifx_GTM_DPLL_PSA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PSAC_Bits B;
} Ifx_GTM_DPLL_PSAC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PSSC_Bits B;
} Ifx_GTM_DPLL_PSSC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PSSM_0_Bits B;
} Ifx_GTM_DPLL_PSSM_0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PSSM_1_Bits B;
} Ifx_GTM_DPLL_PSSM_1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PSTC_Bits B;
} Ifx_GTM_DPLL_PSTC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PSTM_0_Bits B;
} Ifx_GTM_DPLL_PSTM_0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PSTM_1_Bits B;
} Ifx_GTM_DPLL_PSTM_1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_PVT_Bits B;
} Ifx_GTM_DPLL_PVT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_RAM_INI_Bits B;
} Ifx_GTM_DPLL_RAM_INI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_RCDT_SX_Bits B;
} Ifx_GTM_DPLL_RCDT_SX;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_RCDT_SX_NOM_Bits B;
} Ifx_GTM_DPLL_RCDT_SX_NOM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_RCDT_TX_Bits B;
} Ifx_GTM_DPLL_RCDT_TX;



typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_RCDT_TX_NOM_Bits B;
} Ifx_GTM_DPLL_RCDT_TX_NOM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_RDT_S_Bits B;
} Ifx_GTM_DPLL_RDT_S;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_RDT_S_ACT_Bits B;
} Ifx_GTM_DPLL_RDT_S_ACT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_RDT_T_ACT_Bits B;
} Ifx_GTM_DPLL_RDT_T_ACT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_SLR_Bits B;
} Ifx_GTM_DPLL_SLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_STATUS_Bits B;
} Ifx_GTM_DPLL_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TBU_TS0_S_Bits B;
} Ifx_GTM_DPLL_TBU_TS0_S;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TBU_TS0_T_Bits B;
} Ifx_GTM_DPLL_TBU_TS0_T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_THMA_Bits B;
} Ifx_GTM_DPLL_THMA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_THMI_Bits B;
} Ifx_GTM_DPLL_THMI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_THVAL_Bits B;
} Ifx_GTM_DPLL_THVAL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TLR_Bits B;
} Ifx_GTM_DPLL_TLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TOV_Bits B;
} Ifx_GTM_DPLL_TOV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TOV_S_Bits B;
} Ifx_GTM_DPLL_TOV_S;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TS_S_0_Bits B;
} Ifx_GTM_DPLL_TS_S_0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TS_S_1_Bits B;
} Ifx_GTM_DPLL_TS_S_1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TS_T_0_Bits B;
} Ifx_GTM_DPLL_TS_T_0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TS_T_1_Bits B;
} Ifx_GTM_DPLL_TS_T_1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TSAC_Bits B;
} Ifx_GTM_DPLL_TSAC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DPLL_TSF_S_Bits B;
} Ifx_GTM_DPLL_TSF_S;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DXINCON_Bits B;
} Ifx_GTM_DXINCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_DXOUTCON_Bits B;
} Ifx_GTM_DXOUTCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_EIRQ_EN_Bits B;
} Ifx_GTM_EIRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_F2A_ENABLE_Bits B;
} Ifx_GTM_F2A_ENABLE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO_Bits B;
} Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_F2A_STR_CH_STR_CFG_Bits B;
} Ifx_GTM_F2A_STR_CH_STR_CFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_CTRL_Bits B;
} Ifx_GTM_FIFO_CH_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_EIRQ_EN_Bits B;
} Ifx_GTM_FIFO_CH_EIRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_END_ADDR_Bits B;
} Ifx_GTM_FIFO_CH_END_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_FILL_LEVEL_Bits B;
} Ifx_GTM_FIFO_CH_FILL_LEVEL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_IRQ_EN_Bits B;
} Ifx_GTM_FIFO_CH_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_FIFO_CH_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_IRQ_MODE_Bits B;
} Ifx_GTM_FIFO_CH_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_FIFO_CH_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_LOWER_WM_Bits B;
} Ifx_GTM_FIFO_CH_LOWER_WM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_RD_PTR_Bits B;
} Ifx_GTM_FIFO_CH_RD_PTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_START_ADDR_Bits B;
} Ifx_GTM_FIFO_CH_START_ADDR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_STATUS_Bits B;
} Ifx_GTM_FIFO_CH_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_UPPER_WM_Bits B;
} Ifx_GTM_FIFO_CH_UPPER_WM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_FIFO_CH_WR_PTR_Bits B;
} Ifx_GTM_FIFO_CH_WR_PTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_0_Bits B;
} Ifx_GTM_ICM_IRQG_0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_1_Bits B;
} Ifx_GTM_ICM_IRQG_1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_10_Bits B;
} Ifx_GTM_ICM_IRQG_10;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_2_Bits B;
} Ifx_GTM_ICM_IRQG_2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_4_Bits B;
} Ifx_GTM_ICM_IRQG_4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_6_Bits B;
} Ifx_GTM_ICM_IRQG_6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_7_Bits B;
} Ifx_GTM_ICM_IRQG_7;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_9_Bits B;
} Ifx_GTM_ICM_IRQG_9;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_CEI0_Bits B;
} Ifx_GTM_ICM_IRQG_CEI0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_CEI1_Bits B;
} Ifx_GTM_ICM_IRQG_CEI1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_CEI3_Bits B;
} Ifx_GTM_ICM_IRQG_CEI3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ICM_IRQG_MEI_Bits B;
} Ifx_GTM_ICM_IRQG_MEI;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_INOUTSEL_CAN_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_CAN_OUTSEL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_INOUTSEL_DSADC_INSEL_Bits B;
} Ifx_GTM_INOUTSEL_DSADC_INSEL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_INOUTSEL_DSADC_OUTSEL0_Bits B;
} Ifx_GTM_INOUTSEL_DSADC_OUTSEL0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_INOUTSEL_PSI5_OUTSEL0_Bits B;
} Ifx_GTM_INOUTSEL_PSI5_OUTSEL0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_INOUTSEL_PSI5S_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_PSI5S_OUTSEL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_INOUTSEL_T_OUTSEL_Bits B;
} Ifx_GTM_INOUTSEL_T_OUTSEL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_INOUTSEL_TIM_INSEL_Bits B;
} Ifx_GTM_INOUTSEL_TIM_INSEL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_IRQ_EN_Bits B;
} Ifx_GTM_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_IRQ_FORCINT_Bits B;
} Ifx_GTM_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_IRQ_MODE_Bits B;
} Ifx_GTM_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_IRQ_NOTIFY_Bits B;
} Ifx_GTM_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_KRST0_Bits B;
} Ifx_GTM_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_KRST1_Bits B;
} Ifx_GTM_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_KRSTCLR_Bits B;
} Ifx_GTM_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MAP_CTRL_Bits B;
} Ifx_GTM_MAP_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCFG_CTRL_Bits B;
} Ifx_GTM_MCFG_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH0_CTRG_Bits B;
} Ifx_GTM_MCS_CH0_CTRG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH0_STRG_Bits B;
} Ifx_GTM_MCS_CH0_STRG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_ACB_Bits B;
} Ifx_GTM_MCS_CH_ACB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_CTRL_Bits B;
} Ifx_GTM_MCS_CH_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_EIRQ_EN_Bits B;
} Ifx_GTM_MCS_CH_EIRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_IRQ_EN_Bits B;
} Ifx_GTM_MCS_CH_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_MCS_CH_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_IRQ_MODE_Bits B;
} Ifx_GTM_MCS_CH_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_MCS_CH_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_PC_Bits B;
} Ifx_GTM_MCS_CH_PC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_R0_Bits B;
} Ifx_GTM_MCS_CH_R0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_R1_Bits B;
} Ifx_GTM_MCS_CH_R1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_R2_Bits B;
} Ifx_GTM_MCS_CH_R2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_R3_Bits B;
} Ifx_GTM_MCS_CH_R3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_R4_Bits B;
} Ifx_GTM_MCS_CH_R4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_R5_Bits B;
} Ifx_GTM_MCS_CH_R5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_R6_Bits B;
} Ifx_GTM_MCS_CH_R6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CH_R7_Bits B;
} Ifx_GTM_MCS_CH_R7;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_CTRL_Bits B;
} Ifx_GTM_MCS_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_ERR_Bits B;
} Ifx_GTM_MCS_ERR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCS_RST_Bits B;
} Ifx_GTM_MCS_RST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCSINTCLR_Bits B;
} Ifx_GTM_MCSINTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MCSINTSTAT_Bits B;
} Ifx_GTM_MCSINTSTAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MON_ACTIVITY_0_Bits B;
} Ifx_GTM_MON_ACTIVITY_0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MON_STATUS_Bits B;
} Ifx_GTM_MON_STATUS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MSCIN_INHCON_Bits B;
} Ifx_GTM_MSCIN_INHCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MSCIN_INLCON_Bits B;
} Ifx_GTM_MSCIN_INLCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MSCSET_CON0_Bits B;
} Ifx_GTM_MSCSET_CON0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MSCSET_CON1_Bits B;
} Ifx_GTM_MSCSET_CON1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MSCSET_CON2_Bits B;
} Ifx_GTM_MSCSET_CON2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_MSCSET_CON3_Bits B;
} Ifx_GTM_MSCSET_CON3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_OCS_Bits B;
} Ifx_GTM_OCS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_ODA_Bits B;
} Ifx_GTM_ODA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_OTBU0T_Bits B;
} Ifx_GTM_OTBU0T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_OTBU1T_Bits B;
} Ifx_GTM_OTBU1T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_OTBU2T_Bits B;
} Ifx_GTM_OTBU2T;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_OTSC0_Bits B;
} Ifx_GTM_OTSC0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_OTSC1_Bits B;
} Ifx_GTM_OTSC1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_OTSS_Bits B;
} Ifx_GTM_OTSS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_REV_Bits B;
} Ifx_GTM_REV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_RST_Bits B;
} Ifx_GTM_RST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_CMP_Bits B;
} Ifx_GTM_SPE_CMP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_CNT_Bits B;
} Ifx_GTM_SPE_CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_CTRL_STAT_Bits B;
} Ifx_GTM_SPE_CTRL_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_EIRQ_EN_Bits B;
} Ifx_GTM_SPE_EIRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_IRQ_EN_Bits B;
} Ifx_GTM_SPE_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_IRQ_FORCINT_Bits B;
} Ifx_GTM_SPE_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_IRQ_MODE_Bits B;
} Ifx_GTM_SPE_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_IRQ_NOTIFY_Bits B;
} Ifx_GTM_SPE_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_OUT_CTRL_Bits B;
} Ifx_GTM_SPE_OUT_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_OUT_PAT_Bits B;
} Ifx_GTM_SPE_OUT_PAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_SPE_PAT_Bits B;
} Ifx_GTM_SPE_PAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TBU_CH0_BASE_Bits B;
} Ifx_GTM_TBU_CH0_BASE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TBU_CH0_CTRL_Bits B;
} Ifx_GTM_TBU_CH0_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TBU_CH1_BASE_Bits B;
} Ifx_GTM_TBU_CH1_BASE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TBU_CH1_CTRL_Bits B;
} Ifx_GTM_TBU_CH1_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TBU_CH2_BASE_Bits B;
} Ifx_GTM_TBU_CH2_BASE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TBU_CH2_CTRL_Bits B;
} Ifx_GTM_TBU_CH2_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TBU_CHEN_Bits B;
} Ifx_GTM_TBU_CHEN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_AUX_IN_SRC_Bits B;
} Ifx_GTM_TIM_AUX_IN_SRC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_CNT_Bits B;
} Ifx_GTM_TIM_CH_CNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_CNTS_Bits B;
} Ifx_GTM_TIM_CH_CNTS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_CTRL_Bits B;
} Ifx_GTM_TIM_CH_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_ECNT_Bits B;
} Ifx_GTM_TIM_CH_ECNT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_ECTRL_Bits B;
} Ifx_GTM_TIM_CH_ECTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_EIRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_EIRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_FLT_FE_Bits B;
} Ifx_GTM_TIM_CH_FLT_FE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_FLT_RE_Bits B;
} Ifx_GTM_TIM_CH_FLT_RE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_GPR0_Bits B;
} Ifx_GTM_TIM_CH_GPR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_GPR1_Bits B;
} Ifx_GTM_TIM_CH_GPR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TIM_CH_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TIM_CH_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_TDUC_Bits B;
} Ifx_GTM_TIM_CH_TDUC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_CH_TDUV_Bits B;
} Ifx_GTM_TIM_CH_TDUV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_IN_SRC_Bits B;
} Ifx_GTM_TIM_IN_SRC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TIM_RST_Bits B;
} Ifx_GTM_TIM_RST;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_CM0_Bits B;
} Ifx_GTM_TOM_CH_CM0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_CM1_Bits B;
} Ifx_GTM_TOM_CH_CM1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_CN0_Bits B;
} Ifx_GTM_TOM_CH_CN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_CTRL_Bits B;
} Ifx_GTM_TOM_CH_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TOM_CH_IRQ_EN;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TOM_CH_IRQ_FORCINT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TOM_CH_IRQ_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_SR0_Bits B;
} Ifx_GTM_TOM_CH_SR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_SR1_Bits B;
} Ifx_GTM_TOM_CH_SR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_CH_STAT_Bits B;
} Ifx_GTM_TOM_CH_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC0_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC0_ACT_TB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC0_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC0_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_ENDIS_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC0_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_FUPD_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC0_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_GLB_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC0_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC0_INT_TRIG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC0_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC0_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC0_OUTEN_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC1_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC1_ACT_TB;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC1_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC1_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_ENDIS_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC1_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_FUPD_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC1_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_GLB_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC1_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC1_INT_TRIG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC1_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_CTRL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TOM_TGC1_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC1_OUTEN_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_GTM_TRIGOUT_Bits B;
} Ifx_GTM_TRIGOUT;
# 8224 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_AFD_CH
{
    Ifx_GTM_AFD_CH_BUF_ACC BUF_ACC;
    unsigned char reserved_4[12];
} Ifx_GTM_AFD_CH;


typedef volatile struct _Ifx_GTM_ATOM_AGC
{
    Ifx_GTM_ATOM_AGC_GLB_CTRL GLB_CTRL;
    Ifx_GTM_ATOM_AGC_ENDIS_CTRL ENDIS_CTRL;
    Ifx_GTM_ATOM_AGC_ENDIS_STAT ENDIS_STAT;
    Ifx_GTM_ATOM_AGC_ACT_TB ACT_TB;
    Ifx_GTM_ATOM_AGC_OUTEN_CTRL OUTEN_CTRL;
    Ifx_GTM_ATOM_AGC_OUTEN_STAT OUTEN_STAT;
    Ifx_GTM_ATOM_AGC_FUPD_CTRL FUPD_CTRL;
    Ifx_GTM_ATOM_AGC_INT_TRIG INT_TRIG;
    unsigned char reserved_20[32];
} Ifx_GTM_ATOM_AGC;


typedef volatile struct _Ifx_GTM_ATOM_CH
{
    Ifx_GTM_ATOM_CH_RDADDR RDADDR;
    union
    {
        Ifx_GTM_ATOM_CH_SOMC SOMC;
        Ifx_GTM_ATOM_CH_SOMI SOMI;
        Ifx_GTM_ATOM_CH_SOMP SOMP;
        Ifx_GTM_ATOM_CH_SOMS SOMS;
        Ifx_GTM_ATOM_CH_CTRL CTRL;
    };

    Ifx_GTM_ATOM_CH_SR0 SR0;
    Ifx_GTM_ATOM_CH_SR1 SR1;
    Ifx_GTM_ATOM_CH_CM0 CM0;
    Ifx_GTM_ATOM_CH_CM1 CM1;
    Ifx_GTM_ATOM_CH_CN0 CN0;
    Ifx_GTM_ATOM_CH_STAT STAT;
    Ifx_GTM_ATOM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_ATOM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_ATOM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_ATOM_CH_IRQ_MODE IRQ_MODE;
    unsigned char reserved_30[16];
} Ifx_GTM_ATOM_CH;


typedef volatile struct _Ifx_GTM_CMU_CLK0_5
{
    Ifx_GTM_CMU_CLK0_5_CTRL CTRL;
} Ifx_GTM_CMU_CLK0_5;


typedef volatile struct _Ifx_GTM_CMU_CLK_6
{
    Ifx_GTM_CMU_CLK_6_CTRL CTRL;
} Ifx_GTM_CMU_CLK_6;


typedef volatile struct _Ifx_GTM_CMU_CLK_7
{
    Ifx_GTM_CMU_CLK_7_CTRL CTRL;
} Ifx_GTM_CMU_CLK_7;


typedef volatile struct _Ifx_GTM_CMU_ECLK
{
    Ifx_GTM_CMU_ECLK_NUM NUM;
    Ifx_GTM_CMU_ECLK_DEN DEN;
} Ifx_GTM_CMU_ECLK;


typedef volatile struct _Ifx_GTM_CMU_FXCLK
{
    Ifx_GTM_CMU_FXCLK_CTRL CTRL;
} Ifx_GTM_CMU_FXCLK;


typedef volatile struct _Ifx_GTM_F2A_RD_CH
{
    Ifx_GTM_F2A_RD_CH_ARU_RD_FIFO ARU_RD_FIFO;
} Ifx_GTM_F2A_RD_CH;


typedef volatile struct _Ifx_GTM_F2A_STR_CH
{
    Ifx_GTM_F2A_STR_CH_STR_CFG STR_CFG;
} Ifx_GTM_F2A_STR_CH;


typedef volatile struct _Ifx_GTM_FIFO_CH
{
    Ifx_GTM_FIFO_CH_CTRL CTRL;
    Ifx_GTM_FIFO_CH_END_ADDR END_ADDR;
    Ifx_GTM_FIFO_CH_START_ADDR START_ADDR;
    Ifx_GTM_FIFO_CH_UPPER_WM UPPER_WM;
    Ifx_GTM_FIFO_CH_LOWER_WM LOWER_WM;
    Ifx_GTM_FIFO_CH_STATUS STATUS;
    Ifx_GTM_FIFO_CH_FILL_LEVEL FILL_LEVEL;
    Ifx_GTM_FIFO_CH_WR_PTR WR_PTR;
    Ifx_GTM_FIFO_CH_RD_PTR RD_PTR;
    Ifx_GTM_FIFO_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_FIFO_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_FIFO_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_FIFO_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_FIFO_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_38[8];
} Ifx_GTM_FIFO_CH;


typedef volatile struct _Ifx_GTM_INOUTSEL_CAN
{
    Ifx_GTM_INOUTSEL_CAN_OUTSEL OUTSEL;
} Ifx_GTM_INOUTSEL_CAN;


typedef volatile struct _Ifx_GTM_INOUTSEL_DSADC
{
    Ifx_GTM_INOUTSEL_DSADC_INSEL INSEL[3];
    Ifx_GTM_INOUTSEL_DSADC_OUTSEL0 OUTSEL00;
    unsigned char reserved_10[4];
    Ifx_GTM_INOUTSEL_DSADC_OUTSEL0 OUTSEL10;
} Ifx_GTM_INOUTSEL_DSADC;


typedef volatile struct _Ifx_GTM_INOUTSEL_PSI5
{
    Ifx_GTM_INOUTSEL_PSI5_OUTSEL0 OUTSEL0;
} Ifx_GTM_INOUTSEL_PSI5;


typedef volatile struct _Ifx_GTM_INOUTSEL_PSI5S
{
    Ifx_GTM_INOUTSEL_PSI5S_OUTSEL OUTSEL;
} Ifx_GTM_INOUTSEL_PSI5S;


typedef volatile struct _Ifx_GTM_INOUTSEL_T
{
    Ifx_GTM_INOUTSEL_T_OUTSEL OUTSEL[15];
} Ifx_GTM_INOUTSEL_T;


typedef volatile struct _Ifx_GTM_INOUTSEL_TIM
{
    Ifx_GTM_INOUTSEL_TIM_INSEL INSEL;
} Ifx_GTM_INOUTSEL_TIM;


typedef volatile struct _Ifx_GTM_MCS_CH
{
    Ifx_GTM_MCS_CH_R0 R0;
    Ifx_GTM_MCS_CH_R1 R1;
    Ifx_GTM_MCS_CH_R2 R2;
    Ifx_GTM_MCS_CH_R3 R3;
    Ifx_GTM_MCS_CH_R4 R4;
    Ifx_GTM_MCS_CH_R5 R5;
    Ifx_GTM_MCS_CH_R6 R6;
    Ifx_GTM_MCS_CH_R7 R7;
    Ifx_GTM_MCS_CH_CTRL CTRL;
    Ifx_GTM_MCS_CH_ACB ACB;
    unsigned char reserved_28[24];
    Ifx_GTM_MCS_CH_PC PC;
    Ifx_GTM_MCS_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_MCS_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_MCS_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_MCS_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_MCS_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_58[40];
} Ifx_GTM_MCS_CH;


typedef volatile struct _Ifx_GTM_MCS_CH0
{
    Ifx_GTM_MCS_CH_R0 R0;
    Ifx_GTM_MCS_CH_R1 R1;
    Ifx_GTM_MCS_CH_R2 R2;
    Ifx_GTM_MCS_CH_R3 R3;
    Ifx_GTM_MCS_CH_R4 R4;
    Ifx_GTM_MCS_CH_R5 R5;
    Ifx_GTM_MCS_CH_R6 R6;
    Ifx_GTM_MCS_CH_R7 R7;
    Ifx_GTM_MCS_CH_CTRL CTRL;
    Ifx_GTM_MCS_CH_ACB ACB;
    Ifx_GTM_MCS_CH0_CTRG CTRG;
    Ifx_GTM_MCS_CH0_STRG STRG;
    unsigned char reserved_30[16];
    Ifx_GTM_MCS_CH_PC PC;
    Ifx_GTM_MCS_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_MCS_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_MCS_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_MCS_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_MCS_CH_EIRQ_EN EIRQ_EN;
} Ifx_GTM_MCS_CH0;


typedef volatile struct _Ifx_GTM_TIM_CH
{
    Ifx_GTM_TIM_CH_GPR0 GPR0;
    Ifx_GTM_TIM_CH_GPR1 GPR1;
    Ifx_GTM_TIM_CH_CNT CNT;
    Ifx_GTM_TIM_CH_ECNT ECNT;
    Ifx_GTM_TIM_CH_CNTS CNTS;
    Ifx_GTM_TIM_CH_TDUC TDUC;
    Ifx_GTM_TIM_CH_TDUV TDUV;
    Ifx_GTM_TIM_CH_FLT_RE FLT_RE;
    Ifx_GTM_TIM_CH_FLT_FE FLT_FE;
    Ifx_GTM_TIM_CH_CTRL CTRL;
    Ifx_GTM_TIM_CH_ECTRL ECTRL;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TIM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TIM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TIM_CH_IRQ_MODE IRQ_MODE;
    Ifx_GTM_TIM_CH_EIRQ_EN EIRQ_EN;
    unsigned char reserved_40[56];
} Ifx_GTM_TIM_CH;


typedef volatile struct _Ifx_GTM_TOM_CH
{
    Ifx_GTM_TOM_CH_CTRL CTRL;
    Ifx_GTM_TOM_CH_SR0 SR0;
    Ifx_GTM_TOM_CH_SR1 SR1;
    Ifx_GTM_TOM_CH_CM0 CM0;
    Ifx_GTM_TOM_CH_CM1 CM1;
    Ifx_GTM_TOM_CH_CN0 CN0;
    Ifx_GTM_TOM_CH_STAT STAT;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_TOM_CH_IRQ_EN IRQ_EN;
    Ifx_GTM_TOM_CH_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_TOM_CH_IRQ_MODE IRQ_MODE;
    unsigned char reserved_2C[4];
} Ifx_GTM_TOM_CH;
# 8469 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_AFD
{
    Ifx_GTM_AFD_CH CH[8];
} Ifx_GTM_AFD;


typedef volatile struct _Ifx_GTM_ARU
{
    Ifx_GTM_ARU_ARU_ACCESS ARU_ACCESS;
    Ifx_GTM_ARU_DATA_H DATA_H;
    Ifx_GTM_ARU_DATA_L DATA_L;
    Ifx_GTM_ARU_DBG_ACCESS0 DBG_ACCESS0;
    Ifx_GTM_ARU_DBG_DATA0_H DBG_DATA0_H;
    Ifx_GTM_ARU_DBG_DATA0_L DBG_DATA0_L;
    Ifx_GTM_ARU_DBG_ACCESS1 DBG_ACCESS1;
    Ifx_GTM_ARU_DBG_DATA1_H DBG_DATA1_H;
    Ifx_GTM_ARU_DBG_DATA1_L DBG_DATA1_L;
    Ifx_GTM_ARU_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_ARU_IRQ_EN IRQ_EN;
    Ifx_GTM_ARU_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_ARU_IRQ_MODE IRQ_MODE;
} Ifx_GTM_ARU;


typedef volatile struct _Ifx_GTM_ATOM
{
    Ifx_GTM_ATOM_CH CH0;
    Ifx_GTM_ATOM_AGC AGC;
    Ifx_GTM_ATOM_CH CH1;
    unsigned char reserved_C0[64];
    Ifx_GTM_ATOM_CH CH2;
    unsigned char reserved_140[64];
    Ifx_GTM_ATOM_CH CH3;
    unsigned char reserved_1C0[64];
    Ifx_GTM_ATOM_CH CH4;
    unsigned char reserved_240[64];
    Ifx_GTM_ATOM_CH CH5;
    unsigned char reserved_2C0[64];
    Ifx_GTM_ATOM_CH CH6;
    unsigned char reserved_340[64];
    Ifx_GTM_ATOM_CH CH7;
    unsigned char reserved_3C0[1088];
} Ifx_GTM_ATOM;


typedef volatile struct _Ifx_GTM_BRC
{
    Ifx_GTM_BRC_SRC0_ADDR SRC0_ADDR;
    Ifx_GTM_BRC_SRC0_DEST SRC0_DEST;
    Ifx_GTM_BRC_SRC1_ADDR SRC1_ADDR;
    Ifx_GTM_BRC_SRC1_DEST SRC1_DEST;
    Ifx_GTM_BRC_SRC2_ADDR SRC2_ADDR;
    Ifx_GTM_BRC_SRC2_DEST SRC2_DEST;
    Ifx_GTM_BRC_SRC3_ADDR SRC3_ADDR;
    Ifx_GTM_BRC_SRC3_DEST SRC3_DEST;
    Ifx_GTM_BRC_SRC4_ADDR SRC4_ADDR;
    Ifx_GTM_BRC_SRC4_DEST SRC4_DEST;
    Ifx_GTM_BRC_SRC5_ADDR SRC5_ADDR;
    Ifx_GTM_BRC_SRC5_DEST SRC5_DEST;
    Ifx_GTM_BRC_SRC6_ADDR SRC6_ADDR;
    Ifx_GTM_BRC_SRC6_DEST SRC6_DEST;
    Ifx_GTM_BRC_SRC7_ADDR SRC7_ADDR;
    Ifx_GTM_BRC_SRC7_DEST SRC7_DEST;
    Ifx_GTM_BRC_SRC8_ADDR SRC8_ADDR;
    Ifx_GTM_BRC_SRC8_DEST SRC8_DEST;
    Ifx_GTM_BRC_SRC9_ADDR SRC9_ADDR;
    Ifx_GTM_BRC_SRC9_DEST SRC9_DEST;
    Ifx_GTM_BRC_SRC10_ADDR SRC10_ADDR;
    Ifx_GTM_BRC_SRC10_DEST SRC10_DEST;
    Ifx_GTM_BRC_SRC11_ADDR SRC11_ADDR;
    Ifx_GTM_BRC_SRC11_DEST SRC11_DEST;
    Ifx_GTM_BRC_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_BRC_IRQ_EN IRQ_EN;
    Ifx_GTM_BRC_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_BRC_IRQ_MODE IRQ_MODE;
    Ifx_GTM_BRC_RST RST;
    Ifx_GTM_BRC_EIRQ_EN EIRQ_EN;
} Ifx_GTM_BRC;


typedef volatile struct _Ifx_GTM_BRIDGE
{
    Ifx_GTM_BRIDGE_MODE MODE;
    Ifx_GTM_BRIDGE_PTR1 PTR1;
    Ifx_GTM_BRIDGE_PTR2 PTR2;
} Ifx_GTM_BRIDGE;


typedef volatile struct _Ifx_GTM_CMP
{
    Ifx_GTM_CMP_EN EN;
    Ifx_GTM_CMP_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_CMP_IRQ_EN IRQ_EN;
    Ifx_GTM_CMP_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_CMP_IRQ_MODE IRQ_MODE;
    Ifx_GTM_CMP_EIRQ_EN EIRQ_EN;
} Ifx_GTM_CMP;


typedef volatile struct _Ifx_GTM_CMU
{
    Ifx_GTM_CMU_CLK_EN CLK_EN;
    Ifx_GTM_CMU_GCLK_NUM GCLK_NUM;
    Ifx_GTM_CMU_GCLK_DEN GCLK_DEN;
    Ifx_GTM_CMU_CLK0_5 CLK0_5[6];
    Ifx_GTM_CMU_CLK_6 CLK_6;
    Ifx_GTM_CMU_CLK_7 CLK_7;
    Ifx_GTM_CMU_ECLK ECLK[3];
    Ifx_GTM_CMU_FXCLK FXCLK;
} Ifx_GTM_CMU;


typedef volatile struct _Ifx_GTM_DPLL
{
    Ifx_GTM_DPLL_CTRL_0 CTRL_0;
    Ifx_GTM_DPLL_CTRL_1 CTRL_1;
    Ifx_GTM_DPLL_CTRL_2 CTRL_2;
    Ifx_GTM_DPLL_CTRL_3 CTRL_3;
    Ifx_GTM_DPLL_CTRL_4 CTRL_4;
    unsigned char reserved_14[4];
    Ifx_GTM_DPLL_ACT_STA ACT_STA;
    Ifx_GTM_DPLL_OSW OSW;
    Ifx_GTM_DPLL_AOSV_2 AOSV_2;
    Ifx_GTM_DPLL_APT APT;
    Ifx_GTM_DPLL_APS APS;
    Ifx_GTM_DPLL_APT_2C APT_2C;
    Ifx_GTM_DPLL_APS_1C3 APS_1C3;
    Ifx_GTM_DPLL_NUTC NUTC;
    Ifx_GTM_DPLL_NUSC NUSC;
    Ifx_GTM_DPLL_NTI_CNT NTI_CNT;
    Ifx_GTM_DPLL_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_DPLL_IRQ_EN IRQ_EN;
    Ifx_GTM_DPLL_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_DPLL_IRQ_MODE IRQ_MODE;
    Ifx_GTM_DPLL_EIRQ_EN EIRQ_EN;
    unsigned char reserved_54[92];
    Ifx_GTM_DPLL_INC_CNT1 INC_CNT1;
    Ifx_GTM_DPLL_INC_CNT2 INC_CNT2;
    Ifx_GTM_DPLL_APT_SYNC APT_SYNC;
    Ifx_GTM_DPLL_APS_SYNC APS_SYNC;
    Ifx_GTM_DPLL_TBU_TS0_T TBU_TS0_T;
    Ifx_GTM_DPLL_TBU_TS0_S TBU_TS0_S;
    Ifx_GTM_DPLL_ADD_IN_LD1 ADD_IN_LD1;
    Ifx_GTM_DPLL_ADD_IN_LD2 ADD_IN_LD2;
    unsigned char reserved_D0[44];
    Ifx_GTM_DPLL_STATUS STATUS;
    Ifx_GTM_DPLL_ID_PMTR ID_PMTR[24];
    unsigned char reserved_160[128];
    Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER CTRL_0_SHADOW_TRIGGER;
    Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE CTRL_0_SHADOW_STATE;
    Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER CTRL_1_SHADOW_TRIGGER;
    Ifx_GTM_DPLL_CRTL_1_SHADOW_STATE CRTL_1_SHADOW_STATE;
    unsigned char reserved_1F0[12];
    Ifx_GTM_DPLL_RAM_INI RAM_INI;
    Ifx_GTM_DPLL_PSA PSA[24];
    unsigned char reserved_260[32];
    Ifx_GTM_DPLL_DLA DLA[24];
    unsigned char reserved_2E0[32];
    Ifx_GTM_DPLL_NA NA[24];
    unsigned char reserved_360[32];
    Ifx_GTM_DPLL_DTA DTA[24];
    unsigned char reserved_3E0[32];
    Ifx_GTM_DPLL_TS_T_0 TS_T_0;
    Ifx_GTM_DPLL_TS_T_1 TS_T_1;
    Ifx_GTM_DPLL_FTV_T FTV_T;
    unsigned char reserved_40C[4];
    Ifx_GTM_DPLL_TS_S_0 TS_S_0;
    Ifx_GTM_DPLL_TS_S_1 TS_S_1;
    Ifx_GTM_DPLL_FTV_S FTV_S;
    unsigned char reserved_41C[4];
    Ifx_GTM_DPLL_THMI THMI;
    Ifx_GTM_DPLL_THMA THMA;
    Ifx_GTM_DPLL_THVAL THVAL;
    unsigned char reserved_42C[4];
    Ifx_GTM_DPLL_TOV TOV;
    Ifx_GTM_DPLL_TOV_S TOV_S;
    Ifx_GTM_DPLL_ADD_IN_CAL1 ADD_IN_CAL1;
    Ifx_GTM_DPLL_ADD_IN_CAL2 ADD_IN_CAL2;
    Ifx_GTM_DPLL_MPVAL1 MPVAL1;
    Ifx_GTM_DPLL_MPVAL2 MPVAL2;
    Ifx_GTM_DPLL_NMB_T_TAR NMB_T_TAR;
    Ifx_GTM_DPLL_NMB_T_TAR_OLD NMB_T_TAR_OLD;
    Ifx_GTM_DPLL_NMB_S_TAR NMB_S_TAR;
    Ifx_GTM_DPLL_NMB_S_TAR_OLD NMB_S_TAR_OLD;
    unsigned char reserved_458[8];
    Ifx_GTM_DPLL_RCDT_TX RCDT_TX;
    Ifx_GTM_DPLL_RCDT_SX RCDT_SX;
    Ifx_GTM_DPLL_RCDT_TX_NOM RCDT_TX_NOM;
    Ifx_GTM_DPLL_RCDT_SX_NOM RCDT_SX_NOM;
    Ifx_GTM_DPLL_RDT_T_ACT RDT_T_ACT;
    Ifx_GTM_DPLL_RDT_S_ACT RDT_S_ACT;
    Ifx_GTM_DPLL_DT_T_ACT DT_T_ACT;
    Ifx_GTM_DPLL_DT_S_ACT DT_S_ACT;
    Ifx_GTM_DPLL_EDT_T EDT_T;
    Ifx_GTM_DPLL_MEDT_T MEDT_T;
    Ifx_GTM_DPLL_EDT_S EDT_S;
    Ifx_GTM_DPLL_MEDT_S MEDT_S;
    Ifx_GTM_DPLL_CDT_TX CDT_TX;
    Ifx_GTM_DPLL_CDT_SX CDT_SX;
    Ifx_GTM_DPLL_CDT_TX_NOM CDT_TX_NOM;
    Ifx_GTM_DPLL_CDT_SX_NOM CDT_SX_NOM;
    Ifx_GTM_DPLL_TLR TLR;
    Ifx_GTM_DPLL_SLR SLR;
    unsigned char reserved_4A8[88];
    Ifx_GTM_DPLL_PDT_T PDT_T[24];
    unsigned char reserved_560[96];
    Ifx_GTM_DPLL_MLS1 MLS1;
    Ifx_GTM_DPLL_MLS2 MLS2;
    Ifx_GTM_DPLL_CNT_NUM1 CNT_NUM1;
    Ifx_GTM_DPLL_CNT_NUM2 CNT_NUM2;
    Ifx_GTM_DPLL_PVT PVT;
    unsigned char reserved_5D4[12];
    Ifx_GTM_DPLL_PSTC PSTC;
    Ifx_GTM_DPLL_PSSC PSSC;
    Ifx_GTM_DPLL_PSTM_0 PSTM_0;
    Ifx_GTM_DPLL_PSTM_1 PSTM_1;
    Ifx_GTM_DPLL_PSSM_0 PSSM_0;
    Ifx_GTM_DPLL_PSSM_1 PSSM_1;
    Ifx_GTM_DPLL_NMB_T NMB_T;
    Ifx_GTM_DPLL_NMB_S NMB_S;
    Ifx_GTM_DPLL_RDT_S RDT_S[64];
    Ifx_GTM_DPLL_TSF_S TSF_S[64];
    Ifx_GTM_DPLL_ADT_S ADT_S[64];
    Ifx_GTM_DPLL_DT_S DT_S[64];
    unsigned char reserved_A00[1024];
    Ifx_GTM_DPLL_TSAC TSAC[24];
    unsigned char reserved_E60[32];
    Ifx_GTM_DPLL_PSAC PSAC[24];
    unsigned char reserved_EE0[32];
    Ifx_GTM_DPLL_ACB ACB[6];
} Ifx_GTM_DPLL;


typedef volatile struct _Ifx_GTM_F2A
{
    Ifx_GTM_F2A_RD_CH RD_CH[8];
    Ifx_GTM_F2A_STR_CH STR_CH[8];
    Ifx_GTM_F2A_ENABLE ENABLE;
} Ifx_GTM_F2A;


typedef volatile struct _Ifx_GTM_FIFO
{
    Ifx_GTM_FIFO_CH CH[8];
} Ifx_GTM_FIFO;


typedef volatile struct _Ifx_GTM_ICM
{
    Ifx_GTM_ICM_IRQG_0 IRQG_0;
    Ifx_GTM_ICM_IRQG_1 IRQG_1;
    Ifx_GTM_ICM_IRQG_2 IRQG_2;
    unsigned char reserved_C[4];
    Ifx_GTM_ICM_IRQG_4 IRQG_4;
    unsigned char reserved_14[4];
    Ifx_GTM_ICM_IRQG_6 IRQG_6;
    Ifx_GTM_ICM_IRQG_7 IRQG_7;
    unsigned char reserved_20[4];
    Ifx_GTM_ICM_IRQG_9 IRQG_9;
    Ifx_GTM_ICM_IRQG_10 IRQG_10;
    unsigned char reserved_2C[4];
    Ifx_GTM_ICM_IRQG_MEI IRQG_MEI;
    Ifx_GTM_ICM_IRQG_CEI0 IRQG_CEI0;
    Ifx_GTM_ICM_IRQG_CEI1 IRQG_CEI1;
    unsigned char reserved_3C[4];
    Ifx_GTM_ICM_IRQG_CEI3 IRQG_CEI3;
} Ifx_GTM_ICM;


typedef volatile struct _Ifx_GTM_INOUTSEL
{
    Ifx_GTM_INOUTSEL_TIM TIM[4];
    unsigned char reserved_10[16];
    Ifx_GTM_INOUTSEL_T T;
    unsigned char reserved_5C[16];
    Ifx_GTM_INOUTSEL_DSADC DSADC;
    unsigned char reserved_84[12];
    Ifx_GTM_INOUTSEL_CAN CAN;
    Ifx_GTM_INOUTSEL_PSI5 PSI5;
    Ifx_GTM_INOUTSEL_PSI5S PSI5S;
} Ifx_GTM_INOUTSEL;


typedef volatile struct _Ifx_GTM_MCS
{
    Ifx_GTM_MCS_CH0 CH0;
    unsigned char reserved_58[28];
    Ifx_GTM_MCS_CTRL CTRL;
    Ifx_GTM_MCS_RST RST;
    Ifx_GTM_MCS_ERR ERR;
    Ifx_GTM_MCS_CH CH1;
    Ifx_GTM_MCS_CH CH2;
    Ifx_GTM_MCS_CH CH3;
    Ifx_GTM_MCS_CH CH4;
    Ifx_GTM_MCS_CH CH5;
    Ifx_GTM_MCS_CH CH6;
    Ifx_GTM_MCS_CH CH7;
    unsigned char reserved_400[3072];
} Ifx_GTM_MCS;


typedef volatile struct _Ifx_GTM_MON
{
    Ifx_GTM_MON_STATUS STATUS;
    Ifx_GTM_MON_ACTIVITY_0 ACTIVITY_0;
} Ifx_GTM_MON;


typedef volatile struct _Ifx_GTM_MSCIN
{
    Ifx_GTM_MSCIN_INLCON INLCON;
    Ifx_GTM_MSCIN_INHCON INHCON;
} Ifx_GTM_MSCIN;


typedef volatile struct _Ifx_GTM_MSCSET
{
    Ifx_GTM_MSCSET_CON0 CON0;
    Ifx_GTM_MSCSET_CON1 CON1;
    Ifx_GTM_MSCSET_CON2 CON2;
    Ifx_GTM_MSCSET_CON3 CON3;
} Ifx_GTM_MSCSET;


typedef volatile struct _Ifx_GTM_SPE
{
    Ifx_GTM_SPE_CTRL_STAT CTRL_STAT;
    Ifx_GTM_SPE_PAT PAT;
    Ifx_GTM_SPE_OUT_PAT OUT_PAT[8];
    Ifx_GTM_SPE_OUT_CTRL OUT_CTRL;
    Ifx_GTM_SPE_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_SPE_IRQ_EN IRQ_EN;
    Ifx_GTM_SPE_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_SPE_IRQ_MODE IRQ_MODE;
    Ifx_GTM_SPE_EIRQ_EN EIRQ_EN;
    Ifx_GTM_SPE_CNT CNT;
    Ifx_GTM_SPE_CMP CMP;
    unsigned char reserved_48[56];
} Ifx_GTM_SPE;


typedef volatile struct _Ifx_GTM_TBU
{
    Ifx_GTM_TBU_CHEN CHEN;
    Ifx_GTM_TBU_CH0_CTRL CH0_CTRL;
    Ifx_GTM_TBU_CH0_BASE CH0_BASE;
    Ifx_GTM_TBU_CH1_CTRL CH1_CTRL;
    Ifx_GTM_TBU_CH1_BASE CH1_BASE;
    Ifx_GTM_TBU_CH2_CTRL CH2_CTRL;
    Ifx_GTM_TBU_CH2_BASE CH2_BASE;
} Ifx_GTM_TBU;


typedef volatile struct _Ifx_GTM_TIM
{
    Ifx_GTM_TIM_CH CH0;
    Ifx_GTM_TIM_IN_SRC IN_SRC;
    Ifx_GTM_TIM_RST RST;
    Ifx_GTM_TIM_CH CH1;
    unsigned char reserved_F8[8];
    Ifx_GTM_TIM_CH CH2;
    unsigned char reserved_178[8];
    Ifx_GTM_TIM_CH CH3;
    unsigned char reserved_1F8[8];
    Ifx_GTM_TIM_CH CH4;
    unsigned char reserved_278[8];
    Ifx_GTM_TIM_CH CH5;
    unsigned char reserved_2F8[8];
    Ifx_GTM_TIM_CH CH6;
    unsigned char reserved_378[8];
    Ifx_GTM_TIM_CH CH7;
    unsigned char reserved_3F8[1032];
} Ifx_GTM_TIM;


typedef volatile struct _Ifx_GTM_TOM
{
    Ifx_GTM_TOM_CH CH0;
    Ifx_GTM_TOM_TGC0_GLB_CTRL TGC0_GLB_CTRL;
    Ifx_GTM_TOM_TGC0_ACT_TB TGC0_ACT_TB;
    Ifx_GTM_TOM_TGC0_FUPD_CTRL TGC0_FUPD_CTRL;
    Ifx_GTM_TOM_TGC0_INT_TRIG TGC0_INT_TRIG;
    Ifx_GTM_TOM_CH CH1;
    Ifx_GTM_TOM_TGC0_ENDIS_CTRL TGC0_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC0_ENDIS_STAT TGC0_ENDIS_STAT;
    Ifx_GTM_TOM_TGC0_OUTEN_CTRL TGC0_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC0_OUTEN_STAT TGC0_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH2;
    unsigned char reserved_B0[16];
    Ifx_GTM_TOM_CH CH3;
    unsigned char reserved_F0[16];
    Ifx_GTM_TOM_CH CH4;
    unsigned char reserved_130[16];
    Ifx_GTM_TOM_CH CH5;
    unsigned char reserved_170[16];
    Ifx_GTM_TOM_CH CH6;
    unsigned char reserved_1B0[16];
    Ifx_GTM_TOM_CH CH7;
    unsigned char reserved_1F0[16];
    Ifx_GTM_TOM_CH CH8;
    Ifx_GTM_TOM_TGC1_GLB_CTRL TGC1_GLB_CTRL;
    Ifx_GTM_TOM_TGC1_ACT_TB TGC1_ACT_TB;
    Ifx_GTM_TOM_TGC1_FUPD_CTRL TGC1_FUPD_CTRL;
    Ifx_GTM_TOM_TGC1_INT_TRIG TGC1_INT_TRIG;
    Ifx_GTM_TOM_CH CH9;
    Ifx_GTM_TOM_TGC1_ENDIS_CTRL TGC1_ENDIS_CTRL;
    Ifx_GTM_TOM_TGC1_ENDIS_STAT TGC1_ENDIS_STAT;
    Ifx_GTM_TOM_TGC1_OUTEN_CTRL TGC1_OUTEN_CTRL;
    Ifx_GTM_TOM_TGC1_OUTEN_STAT TGC1_OUTEN_STAT;
    Ifx_GTM_TOM_CH CH10;
    unsigned char reserved_2B0[16];
    Ifx_GTM_TOM_CH CH11;
    unsigned char reserved_2F0[16];
    Ifx_GTM_TOM_CH CH12;
    unsigned char reserved_330[16];
    Ifx_GTM_TOM_CH CH13;
    unsigned char reserved_370[16];
    Ifx_GTM_TOM_CH CH14;
    unsigned char reserved_3B0[16];
    Ifx_GTM_TOM_CH CH15;
    unsigned char reserved_3F0[1040];
} Ifx_GTM_TOM;
# 8903 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM
{
    Ifx_GTM_REV REV;
    Ifx_GTM_RST RST;
    Ifx_GTM_CTRL CTRL;
    Ifx_GTM_AEI_ADDR_XPT AEI_ADDR_XPT;
    Ifx_GTM_IRQ_NOTIFY IRQ_NOTIFY;
    Ifx_GTM_IRQ_EN IRQ_EN;
    Ifx_GTM_IRQ_FORCINT IRQ_FORCINT;
    Ifx_GTM_IRQ_MODE IRQ_MODE;
    Ifx_GTM_EIRQ_EN EIRQ_EN;
    unsigned char reserved_24[12];
    Ifx_GTM_BRIDGE BRIDGE;
    unsigned char reserved_3C[4];
    Ifx_GTM_TIM_AUX_IN_SRC TIM_AUX_IN_SRC[4];
    unsigned char reserved_50[176];
    Ifx_GTM_TBU TBU;
    unsigned char reserved_11C[100];
    Ifx_GTM_MON MON;
    unsigned char reserved_188[120];
    Ifx_GTM_CMP CMP;
    unsigned char reserved_218[104];
    Ifx_GTM_ARU ARU;
    unsigned char reserved_2B4[76];
    Ifx_GTM_CMU CMU;
    unsigned char reserved_348[184];
    Ifx_GTM_BRC BRC;
    unsigned char reserved_478[392];
    Ifx_GTM_ICM ICM;
    unsigned char reserved_644[444];
    Ifx_GTM_SPE SPE[2];
    unsigned char reserved_900[1536];
    Ifx_GTM_MAP_CTRL MAP_CTRL;
    unsigned char reserved_F04[60];
    Ifx_GTM_MCFG_CTRL MCFG_CTRL;
    unsigned char reserved_F44[188];
    Ifx_GTM_TIM TIM[4];
    unsigned char reserved_3000[20480];
    Ifx_GTM_TOM TOM[3];
    unsigned char reserved_9800[14336];
    Ifx_GTM_ATOM ATOM[5];
    unsigned char reserved_F800[34816];
    Ifx_GTM_F2A F2A0;
    unsigned char reserved_18044[60];
    Ifx_GTM_AFD AFD0;
    unsigned char reserved_18100[768];
    Ifx_GTM_FIFO FIFO0;
    unsigned char reserved_18600[64000];
    Ifx_GTM_DPLL DPLL;
    unsigned char reserved_28F18[28904];
    Ifx_GTM_MCS MCS[4];
    unsigned char reserved_34000[441600];
    Ifx_GTM_CLC CLC;
    unsigned char reserved_9FD04[12];
    Ifx_GTM_INOUTSEL INOUTSEL;
    unsigned char reserved_9FDAC[4];
    Ifx_GTM_ADCTRIG0OUT0 ADCTRIG0OUT0;
    Ifx_GTM_ADCTRIG0OUT1 ADCTRIG0OUT1;
    Ifx_GTM_ADCTRIG1OUT0 ADCTRIG1OUT0;
    Ifx_GTM_ADCTRIG1OUT1 ADCTRIG1OUT1;
    unsigned char reserved_9FDC0[4];
    Ifx_GTM_OTBU0T OTBU0T;
    Ifx_GTM_OTBU1T OTBU1T;
    Ifx_GTM_OTBU2T OTBU2T;
    Ifx_GTM_OTSS OTSS;
    Ifx_GTM_OTSC0 OTSC0;
    Ifx_GTM_OTSC1 OTSC1;
    Ifx_GTM_ODA ODA;
    unsigned char reserved_9FDE0[8];
    Ifx_GTM_OCS OCS;
    Ifx_GTM_KRSTCLR KRSTCLR;
    Ifx_GTM_KRST1 KRST1;
    Ifx_GTM_KRST0 KRST0;
    Ifx_GTM_ACCEN1 ACCEN1;
    Ifx_GTM_ACCEN0 ACCEN0;
    Ifx_GTM_DXOUTCON DXOUTCON;
    Ifx_GTM_TRIGOUT TRIGOUT0[4];
    unsigned char reserved_9FE14[48];
    Ifx_GTM_TRIGOUT TRIGOUT1[4];
    unsigned char reserved_9FE54[28];
    Ifx_GTM_MCSINTSTAT MCSINTSTAT;
    Ifx_GTM_MCSINTCLR MCSINTCLR;
    unsigned char reserved_9FE78[24];
    Ifx_GTM_DXINCON DXINCON;
    Ifx_GTM_DATAIN DATAIN0[4];
    unsigned char reserved_9FEA4[48];
    Ifx_GTM_DATAIN DATAIN1[4];
    unsigned char reserved_9FEE4[28];
    Ifx_GTM_MSCSET MSCSET_1S[4];
    unsigned char reserved_9FF40[32];
    Ifx_GTM_MSCIN MSCIN[2];
    unsigned char reserved_9FF70[144];
} Ifx_GTM;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxGtm_reg.h" 2
# 34 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h" 1
# 197 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
# 1 "./0_Src/0_AppSw/Tricore/XCP/xcp_cfg.h" 1
# 17 "./0_Src/0_AppSw/Tricore/XCP/xcp_cfg.h"
# 1 "./0_Src/0_AppSw/Tricore/XCP/project.h" 1




# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 1 3
# 29 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\_ansi.h" 1 3
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\_ansi.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\newlib.h" 1 3
# 16 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\_ansi.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\config.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\config.h" 2 3
# 17 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\_ansi.h" 2 3
# 30 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 2 3




# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 35 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 2 3


# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 1 3 4
# 40 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 38 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 2 3







# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 1 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\_ansi.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\_types.h" 1 3
# 12 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\_types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_types.h" 1 3



# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_default_types.h" 1 3
# 26 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t ;
typedef unsigned char __uint8_t ;
# 36 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_default_types.h" 3
typedef signed short __int16_t;
typedef unsigned short __uint16_t;
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_default_types.h" 3
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
# 58 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_default_types.h" 3
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
# 76 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_default_types.h" 3
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
# 99 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_default_types.h" 3
typedef signed long long __int64_t;
typedef unsigned long long __uint64_t;
# 5 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\_types.h" 2 3
# 13 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\_types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\lock.h" 1 3





typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\_types.h" 2 3


typedef long _off_t;







typedef short __dev_t;




typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



__extension__ typedef long long _off64_t;







typedef long _fpos_t;
# 56 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\_types.h" 3
typedef int _ssize_t;






# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 353 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 64 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 37 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
struct _reent;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 89 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 105 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 169 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (* _read) (struct _reent *, void *, char *, int)
                     ;
  int (* _write) (struct _reent *, void *, const char *, int)
                            ;
  _fpos_t (* _seek) (struct _reent *, void *, _fpos_t, int);
  int (* _close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  int _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 273 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 305 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 579 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];

  int _current_category;
  const char *_current_locale;

  int __sdidinit;

  void (* __cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;


  struct _atexit *_atexit;
  struct _atexit _atexit0;


  void (**(_sig_func))(int);




  struct _glue __sglue;
  __FILE __sf[3];
};
# 817 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr __attribute__((__fardata__));
extern struct _reent *const _global_impure_ptr __attribute__((__fardata__));

void _reclaim_reent (struct _reent *);
# 46 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 1 3
# 69 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 70 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 2 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\types.h" 1 3
# 19 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\types.h" 3
typedef long int __off_t;
typedef int __pid_t;

__extension__ typedef long long int __loff_t;
# 71 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 2 3
# 92 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 3
typedef unsigned char u_char;
typedef unsigned short u_short;
typedef unsigned int u_int;
typedef unsigned long u_long;



typedef unsigned short ushort;
typedef unsigned int uint;



typedef unsigned long clock_t;




typedef long time_t;




struct timespec {
  time_t tv_sec;
  long tv_nsec;
};

struct itimerspec {
  struct timespec it_interval;
  struct timespec it_value;
};


typedef long daddr_t;
typedef char * caddr_t;






typedef unsigned short ino_t;
# 162 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 3
typedef _off_t off_t;
typedef __dev_t dev_t;
typedef __uid_t uid_t;
typedef __gid_t gid_t;





typedef int pid_t;



typedef long key_t;

typedef _ssize_t ssize_t;
# 191 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 3
typedef unsigned int mode_t __attribute__ ((__mode__ (__SI__)));




typedef unsigned short nlink_t;
# 218 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 3
typedef long fd_mask;







typedef struct _types_fd_set {
 fd_mask fds_bits[(((64)+(((sizeof (fd_mask) * 8))-1))/((sizeof (fd_mask) * 8)))];
} _types_fd_set;
# 249 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 3
typedef unsigned long clockid_t;




typedef unsigned long timer_t;



typedef unsigned long useconds_t;
typedef long suseconds_t;

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\features.h" 1 3
# 262 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\types.h" 2 3
# 47 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 2 3



typedef __FILE FILE;
# 59 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 3
typedef _fpos_t fpos_t;





# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\stdio.h" 1 3
# 66 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 2 3
# 175 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 3
FILE * tmpfile (void);
char * tmpnam (char *);
int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *, const char *, FILE *);
void setbuf (FILE *, char *);
int setvbuf (FILE *, char *, int, size_t);
int fprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int printf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int scanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int sscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int vfprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int vsprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int fgetc (FILE *);
char * fgets (char *, int, FILE *);
int fputc (int, FILE *);
int fputs (const char *, FILE *);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *, size_t _size, size_t _n, FILE *);
size_t fwrite (const void * , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *, fpos_t *);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *_name, const char *_type);
int sprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int remove (const char *);
int rename (const char *, const char *);






int fseeko (FILE *, off_t, int);
off_t ftello ( FILE *);




int asiprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
char * asniprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * asnprintf (char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int asprintf (char **, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int diprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

int fcloseall (void);
int fiprintf (FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int fiscanf (FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int iprintf (const char *, ...) __attribute__ ((__format__ (__printf__, 1, 2)))
                                                            ;
int iscanf (const char *, ...) __attribute__ ((__format__ (__scanf__, 1, 2)))
                                                           ;
int siprintf (char *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int siscanf (const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int snprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int sniprintf (char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * tempnam (const char *, const char *);
int vasiprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vasprintf (char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vdiprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiprintf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vfiscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vfscanf (FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int viprintf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 1, 0)))
                                                            ;
int viscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vscanf (const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 1, 0)))
                                                           ;
int vsiprintf (char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int vsiscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int vsniprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsnprintf (char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int vsscanf (const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
# 317 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);
int getw (FILE *);
int pclose (FILE *);
FILE * popen (const char *, const char *);
int putw (int, FILE *);
void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);
int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 342 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 3
int dprintf (int, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;

FILE * fmemopen (void *, size_t, const char *);


FILE * open_memstream (char **, size_t *);



int vdprintf (int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;







int _asiprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
char * _asnprintf_r (struct _reent *, char *, size_t *, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _asprintf_r (struct _reent *, char **, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _diprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _dprintf_r (struct _reent *, int, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *, int, FILE *);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fiscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
FILE * _fmemopen_r (struct _reent *, void *, size_t, const char *);
FILE * _fopen_r (struct _reent *, const char *, const char *);
FILE * _freopen_r (struct _reent *, const char *, const char *, FILE *);
int _fprintf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *, FILE *);
size_t _fread_r (struct _reent *, void *, size_t _size, size_t _n, FILE *);
int _fscanf_r (struct _reent *, FILE *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void * , size_t _size, size_t _n, FILE *);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _iscanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__printf__, 2, 3)))
                                                            ;
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *, const char *_old, const char *_new)
                                          ;
int _scanf_r (struct _reent *, const char *, ...) __attribute__ ((__format__ (__scanf__, 2, 3)))
                                                           ;
int _siprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _siscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _snprintf_r (struct _reent *, char *, size_t, const char *, ...) __attribute__ ((__format__ (__printf__, 4, 5)))
                                                            ;
int _sprintf_r (struct _reent *, char *, const char *, ...) __attribute__ ((__format__ (__printf__, 3, 4)))
                                                            ;
int _sscanf_r (struct _reent *, const char *, const char *, ...) __attribute__ ((__format__ (__scanf__, 3, 4)))
                                                           ;
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vdprintf_r (struct _reent *, int, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vfprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vfscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vprintf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 2, 0)))
                                                            ;
int _vscanf_r (struct _reent *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 2, 0)))
                                                           ;
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsnprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 4, 0)))
                                                            ;
int _vsprintf_r (struct _reent *, char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__printf__, 3, 0)))
                                                            ;
int _vsscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list) __attribute__ ((__format__ (__scanf__, 3, 0)))
                                                           ;



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);
# 519 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 539 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 3
FILE *funopen (const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))



                                   ;
FILE *_funopen_r (struct _reent *, const void * __cookie, int (*__readfn)(void * __cookie, char *__buf, int __n), int (*__writefn)(void * __cookie, const char *__buf, int __n), fpos_t (*__seekfn)(void * __cookie, fpos_t __off, int __whence), int (*__closefn)(void * __cookie))



                                   ;







typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
FILE *_fopencookie_r (struct _reent *, void *__cookie, const char *__mode, cookie_io_functions_t __functions)
                                                         ;
# 687 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\stdio.h" 3

# 6 "./0_Src/0_AppSw/Tricore/XCP/project.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\string.h" 1 3
# 14 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stddef.h" 1 3 4
# 15 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\string.h" 2 3







void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *, const void *, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *, const char *);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *, const char *);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *, const char *, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *, const char *, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);


char *strtok (char *, const char *);


size_t strxfrm (char *, const char *, size_t);


char *strtok_r (char *, const char *, char **);

int bcmp (const void *, const void *, size_t);
void bcopy (const void *, void *, size_t);
void bzero (void *, size_t);
int ffs (int);
char *index (const char *, int);
void * memccpy (void *, const void *, int, size_t);
void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
char *rindex (const char *, int);
char *stpcpy (char *, const char *);
char *stpncpy (char *, const char *, size_t);
int strcasecmp (const char *, const char *);
char *strcasestr (const char *, const char *);
char *strdup (const char *);
char *_strdup_r (struct _reent *, const char *);
char *strndup (const char *, size_t);
char *_strndup_r (struct _reent *, const char *, size_t);
char *strerror_r (int, char *, size_t);
size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);
int strncasecmp (const char *, const char *, size_t);
size_t strnlen (const char *, size_t);
char *strsep (char **, const char *);
char *strlwr (char *);
char *strupr (char *);
# 100 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\string.h" 3
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\sys\\string.h" 1 3
# 101 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\string.h" 2 3


# 7 "./0_Src/0_AppSw/Tricore/XCP/project.h" 2

# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 1 3





# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\machine\\ieeefp.h" 1 3
# 7 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 2 3







union __dmath
{
  double d;
  __ULong i[2];
};

union __fmath
{
  float f;
  __ULong i[1];
};


union __ldmath
{
  long double ld;
  __ULong i[4];
};
# 111 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);
# 148 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3
typedef float float_t;
typedef double double_t;
# 175 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3
extern int __isinff (float x);
extern int __isinfd (double x);
extern int __isnanf (float x);
extern int __isnand (double x);
extern int __fpclassifyf (float x);
extern int __fpclassifyd (double x);
extern int __signbitf (float x);
extern int __signbitd (double x);
# 235 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3
extern double infinity (void);
extern double nan (const char *);
extern int finite (double);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);



extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern int finitef (float);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);

extern float hypotf (float, float);






extern long double atanl (long double);
extern long double cosl (long double);
extern long double sinl (long double);
extern long double tanl (long double);
extern long double tanhl (long double);
extern long double frexpl (long double value, int *);
extern long double modfl (long double, long double *);
extern long double ceill (long double);
extern long double fabsl (long double);
extern long double floorl (long double);
extern long double log1pl (long double);
extern long double expm1l (long double);




extern long double acosl (long double);
extern long double asinl (long double);
extern long double atan2l (long double, long double);
extern long double coshl (long double);
extern long double sinhl (long double);
extern long double expl (long double);
extern long double ldexpl (long double, int);
extern long double logl (long double);
extern long double log10l (long double);
extern long double powl (long double, long double);
extern long double sqrtl (long double);
extern long double fmodl (long double, long double);
extern long double hypotl (long double, long double);


extern long double copysignl (long double, long double);
extern long double nanl (const char *);
extern int ilogbl (long double);
extern long double asinhl (long double);
extern long double cbrtl (long double);
extern long double nextafterl (long double, long double);
extern long double rintl (long double);
extern long double scalbnl (long double, int);
extern long double exp2l (long double);
extern long double scalblnl (long double, long);
extern long double tgammal (long double);
extern long double nearbyintl (long double);
extern long int lrintl (long double);
extern long long int llrintl (long double);
extern long double roundl (long double);
extern long lroundl (long double);
extern long long int llroundl (long double);
extern long double truncl (long double);
extern long double remquol (long double, long double, int *);
extern long double fdiml (long double, long double);
extern long double fmaxl (long double, long double);
extern long double fminl (long double, long double);
extern long double fmal (long double, long double, long double);

extern long double acoshl (long double);
extern long double atanhl (long double);
extern long double remainderl (long double, long double);
extern long double lgammal (long double);
extern long double erfl (long double);
extern long double erfcl (long double);
# 439 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3
extern double cabs();
extern double drem (double, double);
extern void sincos (double, double *, double *);
extern double gamma_r (double, int *);
extern double lgamma_r (double, int *);

extern double y0 (double);
extern double y1 (double);
extern double yn (int, double);
extern double j0 (double);
extern double j1 (double);
extern double jn (int, double);

extern float cabsf();
extern float dremf (float, float);
extern void sincosf (float, float *, float *);
extern float gammaf_r (float, int *);
extern float lgammaf_r (float, int *);

extern float y0f (float);
extern float y1f (float);
extern float ynf (int, float);
extern float j0f (float);
extern float j1f (float);
extern float jnf (int, float);



extern double exp10 (double);


extern double pow10 (double);


extern float exp10f (float);


extern float pow10f (float);
# 486 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3
extern int *__signgam (void);
# 497 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3
struct exception

{
  int type;
  char *name;
  double arg1;
  double arg2;
  double retval;
  int err;
};




extern int matherr (struct exception *e);
# 552 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3
enum __fdlibm_version
{
  __fdlibm_ieee = -1,
  __fdlibm_svid,
  __fdlibm_xopen,
  __fdlibm_posix
};




extern enum __fdlibm_version __fdlib_version;
# 572 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\tricore\\include\\math.h" 3

# 9 "./0_Src/0_AppSw/Tricore/XCP/project.h" 2
# 1 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 1 3 4
# 98 "c:\\hightec\\toolchains\\tricore\\v4.9.1.0-infineon-1.1\\lib\\gcc\\tricore\\4.9.4\\include\\stdarg.h" 3 4
typedef __gnuc_va_list va_list;
# 10 "./0_Src/0_AppSw/Tricore/XCP/project.h" 2






# 1 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h" 1
# 17 "./0_Src/0_AppSw/Tricore/XCP/project.h" 2
# 18 "./0_Src/0_AppSw/Tricore/XCP/xcp_cfg.h" 2
# 42 "./0_Src/0_AppSw/Tricore/XCP/xcp_cfg.h"
typedef unsigned char vuint8;
typedef signed char vsint8;


typedef unsigned short vuint16;
typedef signed short vsint16;


typedef unsigned int vuint32;
typedef signed int vsint32;
# 69 "./0_Src/0_AppSw/Tricore/XCP/xcp_cfg.h"
extern unsigned char gInteruptLevel;
extern unsigned char gInterupt;
# 198 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h" 2
# 1 "./0_Src/0_AppSw/Tricore/XCP/xcp_par.h" 1







# 1 "./0_Src/0_AppSw/Tricore/XCP/xcp_def.h" 1
# 24 "./0_Src/0_AppSw/Tricore/XCP/xcp_def.h"
typedef unsigned short tXcpChecksumAddType;
typedef unsigned short tXcpChecksumSumType;
# 9 "./0_Src/0_AppSw/Tricore/XCP/xcp_par.h" 2





 extern vuint8 const kXcpStationId[];
# 199 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h" 2
# 1 "./0_Src/0_AppSw/Tricore/XCP/xcp_def.h" 1
# 200 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h" 2
# 1545 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
typedef struct {
  vuint8 b[128];
  vuint8 l;
} tXcpDto;

typedef union {

  vuint8 b[ ((14 + 3) & 0xFFC) ];
  vuint16 w[ ((14 + 3) & 0xFFC) / 2 ];
  vuint32 dw[ ((14 + 3) & 0xFFC) / 4 ];
} tXcpCto;
# 1570 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
typedef struct {

  vuint16 firstOdtEntry;
  vuint16 lastOdtEntry;


} tXcpOdt;





typedef vuint8 tXcpOdtIdx;
typedef vuint8 tXcpOdtCnt;



typedef struct {

  tXcpOdtIdx lastOdt;
  tXcpOdtIdx firstOdt;

  vuint8 flags;




  vuint8 eventChannel;







} tXcpDaqList;


typedef struct {

  union {
    vuint8 b[10000];
    tXcpDaqList DaqList[1];
  } u;

  vuint8 DaqCount;
  tXcpOdtCnt OdtCount;
  vuint16 OdtEntryCount;







} tXcpDaq;
# 1756 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
typedef struct {


  tXcpCto Crm;
  vuint8 CrmLen;






  vuint8 SessionStatus;

  vuint8 * Mta;

  vuint8 curpage;





  vuint16 CheckSumSize;
  tXcpChecksumSumType CheckSum;
# 1787 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
  tXcpDaq Daq;

  tXcpOdt *pOdt;
  vuint8 * *pOdtEntryAddr;
  vuint8 *pOdtEntrySize;



  tXcpDto *pQueue;
  vuint8 QueueSize;
  vuint8 QueueLen;
  vuint8 QueueRp;



  vuint16 DTOctr;
  vuint16 CRMctr;


  vuint8 SendStatus;



  vuint16 DaqListPtr;




} tXcpData;
# 1826 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
 extern const vuint8 kXcpMainVersion;
 extern const vuint8 kXcpSubVersion;
 extern const vuint8 kXcpReleaseVersion;
# 1842 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
extern void XcpInit( void );
extern void XcpExit( void );
void MemoryOverlay(void);



extern vuint8 XcpEvent( vuint8 event );





extern void XcpCommand( const vuint32* pCommand );




extern vuint8 XcpSendCallBack( void );




extern vuint8 XcpBackground( void );
# 1887 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
extern void ApplXcpSend( vuint8 len, vuint8 * msg );
# 1899 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
extern vuint8 * ApplXcpGetPointer( vuint8 addr_ext, vuint32 addr );
# 1953 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
extern void XcpDisconnect( void );



extern void XcpSendCrm( void );
# 1990 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
extern void XcpMemCpy( vuint8 * dest, const vuint8 * src, vuint8 n );



extern void XcpMemSet( vuint8 * p, vuint16 n, vuint8 b );
# 2003 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
extern void XcpSendDto( const tXcpDto *dto );
# 2050 "./0_Src/0_AppSw/Tricore/XCP/xcpBasic.h"
extern vuint8 ApplXcpGetCalPage( vuint8 segment, vuint8 mode );
extern vuint8 ApplXcpSetCalPage( vuint8 segment, vuint8 page, vuint8 mode);
# 35 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/0_AppSw/Tricore/OTCP/ftp.h" 1

void ftp_run(void);

unsigned char check_FTP_Active(void);

extern unsigned char Comm_code;




extern unsigned short ftp_mode;



extern unsigned short SMTP_Port;
# 36 "./0_Src/0_AppSw/Tricore/OTCP/ftp.h"
void init_send_file_by_ftp_client(unsigned char transfer_direct, unsigned short file_index);


typedef struct
{
 char Text[21];
} TFTP_file;

extern const TFTP_file FTP_files[8];

extern unsigned short get_file_bytes_amount;

void put_settings_to_server_by_enc(void);
# 36 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "./0_Src/0_AppSw/Tricore/Main/IntPrio.h" 1
# 37 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2
# 1 "0_Src/0_AppSw/Tricore/Main/ChannelInit.h" 1
# 12 "0_Src/0_AppSw/Tricore/Main/ChannelInit.h"
# 1 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 1
# 13 "0_Src/0_AppSw/Tricore/Main/ChannelInit.h" 2

void ChannelInit();
# 38 "0_Src/0_AppSw/Tricore/Main/Cpu1_Main.c" 2



extern int yui;

unsigned char Micrel_Init(void);
void ENC_doPacket(void);


extern volatile char core1_started;
extern volatile char core0_started;
extern int timer10msforCPU1;


int core1_main (void)
{


   IfxScuWdt_disableCpuWatchdog (IfxScuWdt_getCpuWatchdogPassword ());
   IfxScuWdt_disableSafetyWatchdog (IfxScuWdt_getSafetyWatchdogPassword ());


    uint16 endinit_pw, endinitSfty_pw;
    endinit_pw = IfxScuWdt_getCpuWatchdogPassword();
    endinitSfty_pw = IfxScuWdt_getSafetyWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(endinit_pw);
    IfxScuWdt_clearSafetyEndinit(endinitSfty_pw);

    _mtcr((int)&(*(volatile Ifx_CPU_DCON0 *)0xF8839040u), 2);

    IfxScuWdt_setSafetyEndinit(endinitSfty_pw);
    IfxScuWdt_setCpuEndinit(endinit_pw);




   modbus_init();
   Micrel_Init();
   XcpInit();







   core1_started=1;
   while(core0_started==0);



while (1)
{


   XcpBackground();
   ENC_doPacket();

   if (timer10msforCPU1)
   {
  timer10msforCPU1 = 0;
     ethernet_timers_polling();
     XcpEvent(0);
     yui++;
     if ( (yui%100)==0) IfxPort_setPinLow(&((*(Ifx_P *)0xF003C300u)),4);
      else IfxPort_setPinHigh(&((*(Ifx_P *)0xF003C300u)),4);
   }



}
  return (1);
}
