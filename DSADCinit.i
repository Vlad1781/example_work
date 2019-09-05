# 1 "0_Src/0_AppSw/Tricore/ADC/DSADCinit.c"
# 1 "C:\\SCU\\Project_AU_C//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "0_Src/0_AppSw/Tricore/ADC/DSADCinit.c"







# 1 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h" 1
# 164 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
# 1 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h" 1
# 43 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxDsadc_cfg.h" 1
# 44 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h" 2
# 1 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 1
# 95 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h" 1
# 49 "./0_Src/4_McHal/Tricore/_Impl/IfxSrc_cfg.h"
typedef enum
{
    IfxSrc_Tos_cpu0 = 0,
    IfxSrc_Tos_cpu1 = 1,
    IfxSrc_Tos_cpu2 = 2,
    IfxSrc_Tos_dma = 3
} IfxSrc_Tos;
# 96 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h" 1
# 30 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu_Intrinsics.h"
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
# 97 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h" 1
# 39 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/Ifx_TypesReg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h" 2





typedef struct _Ifx_SRC_SRCR_Bits
{
    unsigned int SRPN : 8;
    unsigned int reserved_8 : 2;
    unsigned int SRE : 1;
    unsigned int TOS : 2;
    unsigned int reserved_13 : 3;
    unsigned int ECC : 6;
    unsigned int reserved_22 : 2;
    unsigned int SRR : 1;
    unsigned int CLRR : 1;
    unsigned int SETR : 1;
    unsigned int IOV : 1;
    unsigned int IOVCLR : 1;
    unsigned int SWS : 1;
    unsigned int SWSCLR : 1;
    unsigned int reserved_31 : 1;
} Ifx_SRC_SRCR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 89 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_AGBT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_AGBT;


typedef volatile struct _Ifx_SRC_ASCLIN
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN;


typedef volatile struct _Ifx_SRC_BCUSPB
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_BCUSPB;


typedef volatile struct _Ifx_SRC_CAN
{
    Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN;


typedef volatile struct _Ifx_SRC_CCU6
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_CCU6;


typedef volatile struct _Ifx_SRC_CERBERUS
{
    Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS;


typedef volatile struct _Ifx_SRC_CIF
{
    Ifx_SRC_SRCR MI;
    Ifx_SRC_SRCR MIEP;
    Ifx_SRC_SRCR ISP;
    Ifx_SRC_SRCR MJPEG;
} Ifx_SRC_CIF;


typedef volatile struct _Ifx_SRC_CPU
{
    Ifx_SRC_SRCR SBSRC;
} Ifx_SRC_CPU;


typedef volatile struct _Ifx_SRC_DAM
{
    Ifx_SRC_SRCR SR[6];
} Ifx_SRC_DAM;


typedef volatile struct _Ifx_SRC_DMA
{
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_4[12];
    Ifx_SRC_SRCR CH[64];
} Ifx_SRC_DMA;


typedef volatile struct _Ifx_SRC_DSADC
{
    Ifx_SRC_SRCR SRM;
    Ifx_SRC_SRCR SRA;
} Ifx_SRC_DSADC;


typedef volatile struct _Ifx_SRC_EMEM
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_EMEM;


typedef volatile struct _Ifx_SRC_ERAY
{
    Ifx_SRC_SRCR INT[2];
    Ifx_SRC_SRCR TINT[2];
    Ifx_SRC_SRCR NDAT[2];
    Ifx_SRC_SRCR MBSC[2];
    Ifx_SRC_SRCR OBUSY;
    Ifx_SRC_SRCR IBUSY;
    unsigned char reserved_28[40];
} Ifx_SRC_ERAY;


typedef volatile struct _Ifx_SRC_ETH
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_ETH;


typedef volatile struct _Ifx_SRC_FCE
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_FCE;


typedef volatile struct _Ifx_SRC_GPSR
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    unsigned char reserved_10[16];
} Ifx_SRC_GPSR;


typedef volatile struct _Ifx_SRC_GPT12
{
    Ifx_SRC_SRCR CIRQ;
    Ifx_SRC_SRCR T2;
    Ifx_SRC_SRCR T3;
    Ifx_SRC_SRCR T4;
    Ifx_SRC_SRCR T5;
    Ifx_SRC_SRCR T6;
    unsigned char reserved_18[24];
} Ifx_SRC_GPT12;


typedef volatile struct _Ifx_SRC_GTM
{
    Ifx_SRC_SRCR AEIIRQ;
    Ifx_SRC_SRCR ARUIRQ[3];
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR BRCIRQ;
    Ifx_SRC_SRCR CMPIRQ;
    Ifx_SRC_SRCR SPEIRQ[2];
    unsigned char reserved_24[8];
    Ifx_SRC_SRCR PSM[1][8];
    unsigned char reserved_4C[88];
    Ifx_SRC_SRCR DPLL[27];
    unsigned char reserved_110[96];
    Ifx_SRC_SRCR ERR;
    unsigned char reserved_174[12];
    Ifx_SRC_SRCR TIM[4][8];
    unsigned char reserved_200[384];
    Ifx_SRC_SRCR MCS[4][8];
    unsigned char reserved_400[384];
    Ifx_SRC_SRCR TOM[3][8];
    unsigned char reserved_5E0[416];
    Ifx_SRC_SRCR ATOM[5][4];
    unsigned char reserved_7D0[304];
    Ifx_SRC_SRCR MCSW0[4];
    unsigned char reserved_910[48];
    Ifx_SRC_SRCR MCSW1[4];
} Ifx_SRC_GTM;


typedef volatile struct _Ifx_SRC_HSCT
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_HSCT;


typedef volatile struct _Ifx_SRC_HSM
{
    Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM;


typedef volatile struct _Ifx_SRC_HSSL
{
    Ifx_SRC_SRCR COK;
    Ifx_SRC_SRCR RDI;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR TRG;
} Ifx_SRC_HSSL;


typedef volatile struct _Ifx_SRC_I2C
{
    Ifx_SRC_SRCR BREQ;
    Ifx_SRC_SRCR LBREQ;
    Ifx_SRC_SRCR SREQ;
    Ifx_SRC_SRCR LSREQ;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR P;
    unsigned char reserved_18[56];
} Ifx_SRC_I2C;


typedef volatile struct _Ifx_SRC_LMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_LMU;


typedef volatile struct _Ifx_SRC_MSC
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
    Ifx_SRC_SRCR SR4;
} Ifx_SRC_MSC;


typedef volatile struct _Ifx_SRC_PMU
{
    Ifx_SRC_SRCR SR;
} Ifx_SRC_PMU;


typedef volatile struct _Ifx_SRC_PSI5
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5;


typedef volatile struct _Ifx_SRC_PSI5S
{
    Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5S;


typedef volatile struct _Ifx_SRC_QSPI
{
    Ifx_SRC_SRCR TX;
    Ifx_SRC_SRCR RX;
    Ifx_SRC_SRCR ERR;
    Ifx_SRC_SRCR PT;
    unsigned char reserved_10[4];
    Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI;


typedef volatile struct _Ifx_SRC_SCU
{
    Ifx_SRC_SRCR DTS;
    Ifx_SRC_SRCR ERU[4];
} Ifx_SRC_SCU;


typedef volatile struct _Ifx_SRC_SENT
{
    Ifx_SRC_SRCR SR[10];
} Ifx_SRC_SENT;


typedef volatile struct _Ifx_SRC_SMU
{
    Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU;


typedef volatile struct _Ifx_SRC_STM
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
} Ifx_SRC_STM;


typedef volatile struct _Ifx_SRC_VADCCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCCG;


typedef volatile struct _Ifx_SRC_VADCG
{
    Ifx_SRC_SRCR SR0;
    Ifx_SRC_SRCR SR1;
    Ifx_SRC_SRCR SR2;
    Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADCG;


typedef volatile struct _Ifx_SRC_XBAR
{
    Ifx_SRC_SRCR SRC;
} Ifx_SRC_XBAR;
# 385 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GAGBT
{
    Ifx_SRC_AGBT AGBT[1];
} Ifx_SRC_GAGBT;


typedef volatile struct _Ifx_SRC_GASCLIN
{
    Ifx_SRC_ASCLIN ASCLIN[4];
} Ifx_SRC_GASCLIN;


typedef volatile struct _Ifx_SRC_GBCU
{
    Ifx_SRC_BCUSPB SPB;
} Ifx_SRC_GBCU;


typedef volatile struct _Ifx_SRC_GCAN
{
    Ifx_SRC_CAN CAN[1];
} Ifx_SRC_GCAN;


typedef volatile struct _Ifx_SRC_GCCU6
{
    Ifx_SRC_CCU6 CCU6[2];
} Ifx_SRC_GCCU6;


typedef volatile struct _Ifx_SRC_GCERBERUS
{
    Ifx_SRC_CERBERUS CERBERUS;
} Ifx_SRC_GCERBERUS;


typedef volatile struct _Ifx_SRC_GCIF
{
    Ifx_SRC_CIF CIF[1];
} Ifx_SRC_GCIF;


typedef volatile struct _Ifx_SRC_GCPU
{
    Ifx_SRC_CPU CPU[3];
} Ifx_SRC_GCPU;


typedef volatile struct _Ifx_SRC_GDAM
{
    Ifx_SRC_DAM DAM[1];
} Ifx_SRC_GDAM;


typedef volatile struct _Ifx_SRC_GDMA
{
    Ifx_SRC_DMA DMA[1];
} Ifx_SRC_GDMA;


typedef volatile struct _Ifx_SRC_GDSADC
{
    Ifx_SRC_DSADC DSADC[6];
} Ifx_SRC_GDSADC;


typedef volatile struct _Ifx_SRC_GEMEM
{
    Ifx_SRC_EMEM EMEM[1];
} Ifx_SRC_GEMEM;


typedef volatile struct _Ifx_SRC_GERAY
{
    Ifx_SRC_ERAY ERAY[1];
} Ifx_SRC_GERAY;


typedef volatile struct _Ifx_SRC_GETH
{
    Ifx_SRC_ETH ETH[1];
} Ifx_SRC_GETH;


typedef volatile struct _Ifx_SRC_GFCE
{
    Ifx_SRC_FCE FCE[1];
} Ifx_SRC_GFCE;


typedef volatile struct _Ifx_SRC_GGPSR
{
    Ifx_SRC_GPSR GPSR[3];
} Ifx_SRC_GGPSR;


typedef volatile struct _Ifx_SRC_GGPT12
{
    Ifx_SRC_GPT12 GPT12[1];
} Ifx_SRC_GGPT12;


typedef volatile struct _Ifx_SRC_GGTM
{
    Ifx_SRC_GTM GTM[1];
} Ifx_SRC_GGTM;


typedef volatile struct _Ifx_SRC_GHSCT
{
    Ifx_SRC_HSCT HSCT[1];
} Ifx_SRC_GHSCT;


typedef volatile struct _Ifx_SRC_GHSM
{
    Ifx_SRC_HSM HSM[1];
} Ifx_SRC_GHSM;


typedef volatile struct _Ifx_SRC_GHSSL
{
    Ifx_SRC_HSSL HSSL[4];
    Ifx_SRC_SRCR EXI;
} Ifx_SRC_GHSSL;


typedef volatile struct _Ifx_SRC_GI2C
{
    Ifx_SRC_I2C I2C[1];
} Ifx_SRC_GI2C;


typedef volatile struct _Ifx_SRC_GLMU
{
    Ifx_SRC_LMU LMU[1];
} Ifx_SRC_GLMU;


typedef volatile struct _Ifx_SRC_GMSC
{
    Ifx_SRC_MSC MSC[2];
} Ifx_SRC_GMSC;


typedef volatile struct _Ifx_SRC_GPMU
{
    Ifx_SRC_PMU PMU[2];
} Ifx_SRC_GPMU;


typedef volatile struct _Ifx_SRC_GPSI5
{
    Ifx_SRC_PSI5 PSI5[1];
} Ifx_SRC_GPSI5;


typedef volatile struct _Ifx_SRC_GPSI5S
{
    Ifx_SRC_PSI5S PSI5S[1];
} Ifx_SRC_GPSI5S;


typedef volatile struct _Ifx_SRC_GQSPI
{
    Ifx_SRC_QSPI QSPI[4];
} Ifx_SRC_GQSPI;


typedef volatile struct _Ifx_SRC_GSCU
{
    Ifx_SRC_SCU SCU;
} Ifx_SRC_GSCU;


typedef volatile struct _Ifx_SRC_GSENT
{
    Ifx_SRC_SENT SENT[1];
} Ifx_SRC_GSENT;


typedef volatile struct _Ifx_SRC_GSMU
{
    Ifx_SRC_SMU SMU[1];
} Ifx_SRC_GSMU;


typedef volatile struct _Ifx_SRC_GSTM
{
    Ifx_SRC_STM STM[3];
} Ifx_SRC_GSTM;


typedef volatile struct _Ifx_SRC_GVADC
{
    Ifx_SRC_VADCG G[8];
    unsigned char reserved_80[160];
    Ifx_SRC_VADCCG CG[2];
} Ifx_SRC_GVADC;


typedef volatile struct _Ifx_SRC_GXBAR
{
    Ifx_SRC_XBAR XBAR;
} Ifx_SRC_GXBAR;
# 602 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
    Ifx_SRC_GCPU CPU;
    unsigned char reserved_C[20];
    Ifx_SRC_GEMEM EMEM;
    Ifx_SRC_GAGBT AGBT;
    unsigned char reserved_28[24];
    Ifx_SRC_GBCU BCU;
    unsigned char reserved_44[4];
    Ifx_SRC_GXBAR XBAR;
    unsigned char reserved_4C[4];
    Ifx_SRC_GCERBERUS CERBERUS;
    unsigned char reserved_58[40];
    Ifx_SRC_GASCLIN ASCLIN;
    unsigned char reserved_B0[224];
    Ifx_SRC_GQSPI QSPI;
    unsigned char reserved_1F0[160];
    Ifx_SRC_GHSCT HSCT;
    unsigned char reserved_294[12];
    Ifx_SRC_GHSSL HSSL;
    unsigned char reserved_2E4[28];
    Ifx_SRC_GI2C I2C;
    Ifx_SRC_GSENT SENT;
    unsigned char reserved_378[104];
    Ifx_SRC_GMSC MSC;
    unsigned char reserved_408[24];
    Ifx_SRC_GCCU6 CCU6;
    unsigned char reserved_440[32];
    Ifx_SRC_GGPT12 GPT12;
    Ifx_SRC_GSTM STM;
    unsigned char reserved_4A8[8];
    Ifx_SRC_GFCE FCE;
    unsigned char reserved_4B4[60];
    Ifx_SRC_GDMA DMA;
    unsigned char reserved_600[752];
    Ifx_SRC_GETH ETH;
    unsigned char reserved_8F4[12];
    Ifx_SRC_GCAN CAN;
    unsigned char reserved_940[64];
    Ifx_SRC_GVADC VADC;
    unsigned char reserved_AC0[144];
    Ifx_SRC_GDSADC DSADC;
    unsigned char reserved_B80[96];
    Ifx_SRC_GERAY ERAY;
    Ifx_SRC_GPMU PMU;
    unsigned char reserved_C38[136];
    Ifx_SRC_GHSM HSM;
    unsigned char reserved_CC8[8];
    Ifx_SRC_GSCU SCU;
    unsigned char reserved_CE4[44];
    Ifx_SRC_GSMU SMU;
    unsigned char reserved_D1C[20];
    Ifx_SRC_GPSI5 PSI5;
    unsigned char reserved_D50[32];
    Ifx_SRC_GDAM DAM;
    unsigned char reserved_D88[24];
    Ifx_SRC_GCIF CIF;
    unsigned char reserved_DB0[48];
    Ifx_SRC_GLMU LMU;
    unsigned char reserved_DE4[12];
    Ifx_SRC_GPSI5S PSI5S;
    unsigned char reserved_E10[496];
    Ifx_SRC_GGPSR GPSR;
    unsigned char reserved_1060[1440];
    Ifx_SRC_GGTM GTM;
    unsigned char reserved_1F50[176];
} Ifx_SRC;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxSrc_reg.h" 2
# 98 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h" 2
# 112 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src);
# 121 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src);
# 130 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src);
# 139 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src);
# 148 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src);
# 166 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src);
# 175 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src);
# 184 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src);
# 216 "./0_Src/4_McHal/Tricore/Src/Std/IfxSrc.h"
static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority);







static inline __attribute__ ((always_inline)) void IfxSrc_clearOverrun(volatile Ifx_SRC_SRCR *src)
{
    src->B.IOVCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_clearRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.CLRR = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_deinit(volatile Ifx_SRC_SRCR *src)
{
    src->U = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_disable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_enable(volatile Ifx_SRC_SRCR *src)
{
    src->B.SRE = 1;
}


static inline __attribute__ ((always_inline)) void IfxSrc_init(volatile Ifx_SRC_SRCR *src, IfxSrc_Tos typOfService, Ifx_Priority priority)
{
    src->B.SRPN = priority;
    src->B.TOS = typOfService;
    IfxSrc_clearRequest(src);
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isOverrun(volatile Ifx_SRC_SRCR *src)
{
    return src->B.IOV ? 1 : 0;
}


static inline __attribute__ ((always_inline)) boolean IfxSrc_isRequested(volatile Ifx_SRC_SRCR *src)
{
    return src->B.SRR ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxSrc_setRequest(volatile Ifx_SRC_SRCR *src)
{
    src->B.SETR = 1;
}
# 45 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 1
# 106 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
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
# 107 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h" 1
# 47 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuWdt.h"
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
# 108 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 1
# 49 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 1
# 40 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h" 1
# 54 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxCpu_regdef.h"
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
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h" 2
# 64 "./0_Src/4_McHal/Tricore/_Impl/IfxCpu_cfg.h"
typedef enum
{
    IfxCpu_DBGST_HALT_run = 0,
    IfxCpu_DBGST_HALT_halt = 1
} IfxCpu_DBGST_HALT;



typedef enum
{
    IfxCpu_PMCSR_PMST_normalMode = 1,
    IfxCpu_PMCSR_PMST_idleModeRequest = 2,
    IfxCpu_PMCSR_PMST_idleMode = 3,
    IfxCpu_PMCSR_PMST_sleepModeRequest = 4,
    IfxCpu_PMCSR_PMST_standbyModeRequest = 6
} IfxCpu_PMCSR_PMST;



typedef enum
{
    IfxCpu_ResourceCpu_0 = 0,
    IfxCpu_ResourceCpu_1 = 1,
    IfxCpu_ResourceCpu_2 = 2,
    IfxCpu_ResourceCpu_none
} IfxCpu_ResourceCpu;





extern const IfxModule_IndexMap IfxCpu_cfg_indexMap[(3)];
# 50 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2




# 1 "./0_Src/1_SrvSw/_Utilities/Ifx_Assert.h" 1
# 55 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h" 2
# 91 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef unsigned int IfxCpu_spinLock;



typedef unsigned int IfxCpu_mutexLock;
# 105 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef enum
{
    IfxCpu_CoreMode_halt,
    IfxCpu_CoreMode_run,
    IfxCpu_CoreMode_idle,
    IfxCpu_CoreMode_sleep,
    IfxCpu_CoreMode_stby,
    IfxCpu_CoreMode_unknown
} IfxCpu_CoreMode;



typedef enum
{
    IfxCpu_CounterMode_normal = 0,
    IfxCpu_CounterMode_task = 1
} IfxCpu_CounterMode;
# 131 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
typedef struct
{
    uint32 counter;
    boolean overlfow;
} IfxCpu_Counter;







typedef struct
{
    IfxCpu_Counter instruction;
    IfxCpu_Counter clock;
    IfxCpu_Counter counter1;
    IfxCpu_Counter counter2;
    IfxCpu_Counter counter3;
} IfxCpu_Perf;
# 164 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void);




static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void);
# 179 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd);




static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId);




static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void);
# 199 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern Ifx_CPU *IfxCpu_getAddress(IfxCpu_ResourceCpu cpu);





extern IfxCpu_CoreMode IfxCpu_getCoreMode(Ifx_CPU *cpu);





extern IfxCpu_ResourceCpu IfxCpu_getIndex(Ifx_CPU *cpu);
# 220 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setCoreMode(Ifx_CPU *cpu, IfxCpu_CoreMode mode);
# 229 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setProgramCounter(Ifx_CPU *cpu, uint32 programCounter);
# 238 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_startCore(Ifx_CPU *cpu, uint32 programCounter);
# 255 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void);
# 265 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void);





static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void);




static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void);
# 285 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled);
# 303 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable);
# 312 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable);




static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void);





static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address);
# 334 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable);
# 345 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable);
# 362 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void);
# 375 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void);







static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void);
# 396 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void);





static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address);






static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address);







static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode);
# 428 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable);







static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void);
# 445 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count);
# 454 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count);







static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count);
# 489 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_acquireMutex(IfxCpu_mutexLock *lock);
# 507 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern void IfxCpu_releaseMutex(IfxCpu_mutexLock *lock);







extern void IfxCpu_resetSpinLock(IfxCpu_spinLock *lock);
# 534 "./0_Src/4_McHal/Tricore/Cpu/Std/IfxCpu.h"
extern boolean IfxCpu_setSpinLock(IfxCpu_spinLock *lock, uint32 timeoutCount);







static inline __attribute__ ((always_inline)) boolean IfxCpu_areInterruptsEnabled(void)
{
    Ifx_CPU_ICR reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE2C" : "=d" (__res) :: "memory"); __res; }));
    return reg.B.IE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_disableInterrupts(void)
{
    boolean enabled;
    enabled = IfxCpu_areInterruptsEnabled();
    __asm__ volatile ("disable" : : : "memory");
    __nop();
    return enabled;
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableInterrupts(void)
{
    __asm__ volatile ("enable" : : : "memory");
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificDataAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xC);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8100" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8100" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_enableSegmentSpecificInstructionAccessCacheability(uint16 segmentNumberMask, boolean enable)
{
    uint32 cpu_pmaVal;
    uint16 checkRestrictionMask;
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);



    checkRestrictionMask = ((uint16)1 << (7 - coreId)) | ((uint16)1 << 0xD);

    if ((segmentNumberMask & checkRestrictionMask) != 0)
    {
        segmentNumberMask |= checkRestrictionMask;
    }

    cpu_pmaVal = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x8104" : "=d" (__res) :: "memory"); __res; }));

    cpu_pmaVal = enable ? (cpu_pmaVal | segmentNumberMask) : (cpu_pmaVal & ~segmentNumberMask);


    IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);


    __dsync();
    do { unsigned __newval = (unsigned) (cpu_pmaVal); __asm__ volatile ("mtcr LO:" "0x8104" ", %0" :: "d" (__newval) : "memory"); } while (0);
    __isync();
    IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
}


static inline __attribute__ ((always_inline)) void IfxCpu_forceDisableInterrupts(void)
{
    __asm__ volatile ("disable" : : : "memory");
    __nop();
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getClockCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC04);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getClockCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC04);
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreId(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) IfxCpu_ResourceCpu IfxCpu_getCoreIndex(void)
{
    Ifx_CPU_CORE_ID reg;
    reg.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE1C" : "=d" (__res) :: "memory"); __res; }));
    return (IfxCpu_ResourceCpu)reg.B.CORE_ID;
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getInstructionCounter(void)
{
    return IfxCpu_getPerformanceCounter(0xFC08);
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getInstructionCounterStickyOverflow(void)
{
    return IfxCpu_getPerformanceCounterStickyOverflow(0xFC08);
}


static inline __attribute__ ((always_inline)) uint32 IfxCpu_getPerformanceCounter(uint32 address)
{
    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));
    return ccnt.B.CountValue;
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_getPerformanceCounterStickyOverflow(uint32 address)
{
    Ifx_CPU_CCNT ccnt;

    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "address" : "=d" (__res) :: "memory"); __res; }));

    return ccnt.B.SOvf;
}


static inline __attribute__ ((always_inline)) void IfxCpu_initCSA(uint32 *csaBegin, uint32 *csaEnd)
{
    uint32 k;
    uint32 nxt_cxi_val = 0;
    uint32 *prvCsa = 0U;
    uint32 *nxtCsa = csaBegin;

    for (k = 0; k < (((uint32)csaEnd - (uint32)csaBegin) / 64); k++)
    {
        nxt_cxi_val = ((uint32)nxtCsa & (0XFU << 28)) >> 12 | ((uint32)nxtCsa & (0XFFFFU << 6)) >> 6;

        if (k == 0)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        prvCsa = (uint32 *)nxtCsa;
        nxtCsa += 16;
    }

    *prvCsa = 0;
    do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_invalidateProgramCache(void)
{
    uint16 cpuWdtPassword = IfxScuWdt_getCpuWatchdogPassword();
    {
        IfxScuWdt_clearCpuEndinit(cpuWdtPassword);
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0x9204" : "=d" (__res) :: "memory"); __res; }));
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinit(cpuWdtPassword);
    }
}


static inline __attribute__ ((always_inline)) boolean IfxCpu_isAddressCachable(void *address)
{
    uint8 segment = (uint32)address >> 24;
    return ((segment == (8)) || (segment == (9))) ? 1 : 0;
}


static inline __attribute__ ((always_inline)) void IfxCpu_resetAndStartCounters(IfxCpu_CounterMode mode)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));

    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC04" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC08" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC0C" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC10" ", %0" :: "d" (__newval) : "memory"); } while (0);
    do { unsigned __newval = (unsigned) (0); __asm__ volatile ("mtcr LO:" "0xFC14" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = 1;
    cctrl.B.CM = mode;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_restoreInterrupts(boolean enabled)
{
    if (enabled != 0)
    {
        __asm__ volatile ("enable" : : : "memory");
    }
}


static inline __attribute__ ((always_inline)) void IfxCpu_setDataCache(boolean enable)
{
    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setPerformanceCountersEnableBit(uint32 enable)
{
    Ifx_CPU_CCTRL cctrl;
    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    cctrl.B.CE = enable;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) void IfxCpu_setProgramCache(boolean enable)
{
    if (enable)
    {
        Ifx_CPU_PCON1 pcon1;
        pcon1.U = 0;
        pcon1.B.PCINV = 1;
        do { unsigned __newval = (unsigned) (pcon1.U); __asm__ volatile ("mtcr LO:" "0x9204" ", %0" :: "d" (__newval) : "memory"); } while (0);
    }

    uint32 coreId = IfxCpu_getCoreIndex();
    uint16 wdtPassword = IfxScuWdt_getCpuWatchdogPasswordInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId]);

    {
        IfxScuWdt_clearCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = enable ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);
        IfxScuWdt_setCpuEndinitInline(&((*(Ifx_SCU *)0xF0036000u)).WDTCPU[coreId], wdtPassword);
    }

    __isync();
}


static inline __attribute__ ((always_inline)) void IfxCpu_setSafetyTaskIdentifier(boolean safetyId)
{
    Ifx_CPU_PSW psw;
    ((void)0);
    psw.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFE04" : "=d" (__res) :: "memory"); __res; }));
    psw.B.S = safetyId;
    do { unsigned __newval = (unsigned) ((uint32)psw.U); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);
}


static inline __attribute__ ((always_inline)) IfxCpu_Perf IfxCpu_stopCounters(void)
{
    IfxCpu_Perf result;


    __stopPerfCounters();

    Ifx_CPU_CCNT ccnt;
    ccnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC04" : "=d" (__res) :: "memory"); __res; }));
    result.clock.counter = ccnt.B.CountValue;
    result.clock.overlfow = ccnt.B.SOvf;

    Ifx_CPU_ICNT icnt;
    icnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC08" : "=d" (__res) :: "memory"); __res; }));
    result.instruction.counter = icnt.B.CountValue;
    result.instruction.overlfow = icnt.B.SOvf;

    Ifx_CPU_M1CNT m1cnt;
    m1cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC0C" : "=d" (__res) :: "memory"); __res; }));
    result.counter1.counter = m1cnt.B.CountValue;
    result.counter1.overlfow = m1cnt.B.SOvf;

    Ifx_CPU_M2CNT m2cnt;
    m2cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC10" : "=d" (__res) :: "memory"); __res; }));
    result.counter2.counter = m2cnt.B.CountValue;
    result.counter2.overlfow = m2cnt.B.SOvf;

    Ifx_CPU_M3CNT m3cnt;
    m3cnt.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC14" : "=d" (__res) :: "memory"); __res; }));
    result.counter3.counter = m3cnt.B.CountValue;
    result.counter3.overlfow = m3cnt.B.SOvf;
    return result;
}


static inline __attribute__ ((always_inline)) void IfxCpu_triggerSwReset(void)
{
    ((*(Ifx_SCU *)0xF0036000u)).SWRSTCON.B.SWRSTREQ = 1;


    while (1)
    {}
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateClockCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC04, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updateInstructionCounter(uint32 count)
{
    IfxCpu_updatePerformanceCounter(0xFC08, count);
}


static inline __attribute__ ((always_inline)) void IfxCpu_updatePerformanceCounter(uint32 address, uint32 count)
{
    Ifx_CPU_CCTRL cctrl;
    boolean enableBit;

    cctrl.U = (__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "0xFC00" : "=d" (__res) :: "memory"); __res; }));
    enableBit = cctrl.B.CE;
    cctrl.B.CE = 0;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);


    count &= ~(1U << 31);
    do { unsigned __newval = (unsigned) (count); __asm__ volatile ("mtcr LO:" "address" ", %0" :: "d" (__newval) : "memory"); } while (0);


    cctrl.B.CE = enableBit;
    do { unsigned __newval = (unsigned) (cctrl.U); __asm__ volatile ("mtcr LO:" "0xFC00" ", %0" :: "d" (__newval) : "memory"); } while (0);
}
# 109 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h" 1
# 42 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
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
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    unsigned int STMCAP63_32 : 32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    unsigned int STMCAP63_32 : 32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    unsigned int MSIZE0 : 5;
    unsigned int reserved_5 : 3;
    unsigned int MSTART0 : 5;
    unsigned int reserved_13 : 3;
    unsigned int MSIZE1 : 5;
    unsigned int reserved_21 : 3;
    unsigned int MSTART1 : 5;
    unsigned int reserved_29 : 3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    unsigned int CMPVAL : 32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    unsigned int CMP0EN : 1;
    unsigned int CMP0IR : 1;
    unsigned int CMP0OS : 1;
    unsigned int reserved_3 : 1;
    unsigned int CMP1EN : 1;
    unsigned int CMP1IR : 1;
    unsigned int CMP1OS : 1;
    unsigned int reserved_7 : 25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    unsigned int MODREV : 8;
    unsigned int MODTYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    unsigned int CMP0IRR : 1;
    unsigned int CMP0IRS : 1;
    unsigned int CMP1IRR : 1;
    unsigned int CMP1IRS : 1;
    unsigned int reserved_4 : 28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    unsigned int STM31_0 : 32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    unsigned int STM31_0 : 32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    unsigned int STM35_4 : 32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    unsigned int STM39_8 : 32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    unsigned int STM43_12 : 32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    unsigned int STM47_16 : 32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    unsigned int STM51_20 : 32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    unsigned int STM63_32 : 32;
} Ifx_STM_TIM6_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 495 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
    Ifx_STM_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_STM_ID ID;
    unsigned char reserved_C[4];
    Ifx_STM_TIM0 TIM0;
    Ifx_STM_TIM1 TIM1;
    Ifx_STM_TIM2 TIM2;
    Ifx_STM_TIM3 TIM3;
    Ifx_STM_TIM4 TIM4;
    Ifx_STM_TIM5 TIM5;
    Ifx_STM_TIM6 TIM6;
    Ifx_STM_CAP CAP;
    Ifx_STM_CMP CMP[2];
    Ifx_STM_CMCON CMCON;
    Ifx_STM_ICR ICR;
    Ifx_STM_ISCR ISCR;
    unsigned char reserved_44[12];
    Ifx_STM_TIM0SV TIM0SV;
    Ifx_STM_CAPSV CAPSV;
    unsigned char reserved_58[144];
    Ifx_STM_OCS OCS;
    Ifx_STM_KRSTCLR KRSTCLR;
    Ifx_STM_KRST1 KRST1;
    Ifx_STM_KRST0 KRST0;
    Ifx_STM_ACCEN1 ACCEN1;
    Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 43 "./0_Src/4_McHal/Tricore/_Reg/IfxStm_reg.h" 2
# 110 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef struct _Ifx_FLASH_ACCEN0_Bits
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
} Ifx_FLASH_ACCEN0_Bits;


typedef struct _Ifx_FLASH_ACCEN1_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_FLASH_ACCEN1_Bits;


typedef struct _Ifx_FLASH_CBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_CFG_Bits;


typedef struct _Ifx_FLASH_CBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int VLD1 : 1;
    unsigned int VLD2 : 1;
    unsigned int VLD3 : 1;
    unsigned int VLD4 : 1;
    unsigned int VLD5 : 1;
    unsigned int VLD6 : 1;
    unsigned int VLD7 : 1;
    unsigned int VLD8 : 1;
    unsigned int VLD9 : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_CBAB_STAT_Bits;


typedef struct _Ifx_FLASH_CBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_CBAB_TOP_Bits;


typedef struct _Ifx_FLASH_COMM0_Bits
{
    unsigned int STATUS : 8;
    unsigned int reserved_8 : 24;
} Ifx_FLASH_COMM0_Bits;


typedef struct _Ifx_FLASH_COMM1_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM1_Bits;


typedef struct _Ifx_FLASH_COMM2_Bits
{
    unsigned int STATUS : 8;
    unsigned int DATA : 8;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_COMM2_Bits;


typedef struct _Ifx_FLASH_ECCRD_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRD_Bits;


typedef struct _Ifx_FLASH_ECCRP_Bits
{
    unsigned int RCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int EDCERRINJ : 1;
    unsigned int ECCORDIS : 1;
} Ifx_FLASH_ECCRP_Bits;


typedef struct _Ifx_FLASH_ECCW_Bits
{
    unsigned int WCODE : 22;
    unsigned int reserved_22 : 8;
    unsigned int DECENCDIS : 1;
    unsigned int PECENCDIS : 1;
} Ifx_FLASH_ECCW_Bits;


typedef struct _Ifx_FLASH_FCON_Bits
{
    unsigned int WSPFLASH : 4;
    unsigned int WSECPF : 2;
    unsigned int WSDFLASH : 6;
    unsigned int WSECDF : 3;
    unsigned int IDLE : 1;
    unsigned int ESLDIS : 1;
    unsigned int SLEEP : 1;
    unsigned int NSAFECC : 1;
    unsigned int STALL : 1;
    unsigned int RES21 : 2;
    unsigned int RES23 : 2;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int PROERM : 1;
    unsigned int reserved_27 : 3;
    unsigned int PR5V : 1;
    unsigned int EOBM : 1;
} Ifx_FLASH_FCON_Bits;


typedef struct _Ifx_FLASH_FPRO_Bits
{
    unsigned int PROINP : 1;
    unsigned int PRODISP : 1;
    unsigned int PROIND : 1;
    unsigned int PRODISD : 1;
    unsigned int PROINHSMCOTP : 1;
    unsigned int RES5 : 1;
    unsigned int PROINOTP : 1;
    unsigned int RES7 : 1;
    unsigned int PROINDBG : 1;
    unsigned int PRODISDBG : 1;
    unsigned int PROINHSM : 1;
    unsigned int reserved_11 : 5;
    unsigned int DCFP : 1;
    unsigned int DDFP : 1;
    unsigned int DDFPX : 1;
    unsigned int reserved_19 : 1;
    unsigned int DDFD : 1;
    unsigned int reserved_21 : 1;
    unsigned int ENPE : 2;
    unsigned int reserved_24 : 8;
} Ifx_FLASH_FPRO_Bits;


typedef struct _Ifx_FLASH_FSR_Bits
{
    unsigned int FABUSY : 1;
    unsigned int D0BUSY : 1;
    unsigned int D1BUSY : 1;
    unsigned int P0BUSY : 1;
    unsigned int P1BUSY : 1;
    unsigned int RES5 : 1;
    unsigned int RES6 : 1;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int PFPAGE : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int PROER : 1;
    unsigned int PFSBER : 1;
    unsigned int PFDBER : 1;
    unsigned int PFMBER : 1;
    unsigned int RES17 : 1;
    unsigned int DFSBER : 1;
    unsigned int DFDBER : 1;
    unsigned int DFTBER : 1;
    unsigned int DFMBER : 1;
    unsigned int SRIADDERR : 1;
    unsigned int reserved_23 : 2;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int SLM : 1;
    unsigned int reserved_29 : 1;
    unsigned int ORIER : 1;
    unsigned int reserved_31 : 1;
} Ifx_FLASH_FSR_Bits;


typedef struct _Ifx_FLASH_HSMFCON_Bits
{
    unsigned int LCKHSMUCB : 2;
    unsigned int reserved_2 : 22;
    unsigned int VOPERM : 1;
    unsigned int SQERM : 1;
    unsigned int reserved_26 : 5;
    unsigned int EOBM : 1;
} Ifx_FLASH_HSMFCON_Bits;


typedef struct _Ifx_FLASH_HSMFSR_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int D1BUSY : 1;
    unsigned int reserved_3 : 4;
    unsigned int PROG : 1;
    unsigned int ERASE : 1;
    unsigned int reserved_9 : 1;
    unsigned int DFPAGE : 1;
    unsigned int OPER : 1;
    unsigned int SQER : 1;
    unsigned int reserved_13 : 12;
    unsigned int PVER : 1;
    unsigned int EVER : 1;
    unsigned int SPND : 1;
    unsigned int reserved_28 : 4;
} Ifx_FLASH_HSMFSR_Bits;


typedef struct _Ifx_FLASH_HSMMARD_Bits
{
    unsigned int reserved_0 : 1;
    unsigned int SELD1 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 27;
} Ifx_FLASH_HSMMARD_Bits;


typedef struct _Ifx_FLASH_HSMRRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_HSMRRAD_Bits;


typedef struct _Ifx_FLASH_HSMRRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_HSMRRCT_Bits;


typedef struct _Ifx_FLASH_HSMRRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_HSMRRD0_Bits;


typedef struct _Ifx_FLASH_HSMRRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_HSMRRD1_Bits;


typedef struct _Ifx_FLASH_ID_Bits
{
    unsigned int MOD_REV : 8;
    unsigned int MOD_TYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_FLASH_ID_Bits;


typedef struct _Ifx_FLASH_MARD_Bits
{
    unsigned int HMARGIN : 1;
    unsigned int SELD0 : 1;
    unsigned int reserved_2 : 1;
    unsigned int SPND : 1;
    unsigned int SPNDERR : 1;
    unsigned int reserved_5 : 10;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARD_Bits;


typedef struct _Ifx_FLASH_MARP_Bits
{
    unsigned int SELP0 : 1;
    unsigned int SELP1 : 1;
    unsigned int RES2 : 1;
    unsigned int RES3 : 1;
    unsigned int reserved_4 : 11;
    unsigned int TRAPDIS : 1;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_MARP_Bits;


typedef struct _Ifx_FLASH_PROCOND_Bits
{
    unsigned int L : 1;
    unsigned int NSAFECC : 1;
    unsigned int RAMIN : 2;
    unsigned int RAMINSEL : 4;
    unsigned int OSCCFG : 1;
    unsigned int MODE : 2;
    unsigned int APREN : 1;
    unsigned int CAP0EN : 1;
    unsigned int CAP1EN : 1;
    unsigned int CAP2EN : 1;
    unsigned int CAP3EN : 1;
    unsigned int ESR0CNT : 12;
    unsigned int RES29 : 2;
    unsigned int RES30 : 1;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCOND_Bits;


typedef struct _Ifx_FLASH_PROCONDBG_Bits
{
    unsigned int OCDSDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int EDM : 2;
    unsigned int reserved_4 : 28;
} Ifx_FLASH_PROCONDBG_Bits;


typedef struct _Ifx_FLASH_PROCONHSM_Bits
{
    unsigned int HSMDBGDIS : 1;
    unsigned int DBGIFLCK : 1;
    unsigned int TSTIFLCK : 1;
    unsigned int HSMTSTDIS : 1;
    unsigned int RES15 : 12;
    unsigned int reserved_16 : 16;
} Ifx_FLASH_PROCONHSM_Bits;


typedef struct _Ifx_FLASH_PROCONHSMCOTP_Bits
{
    unsigned int HSMBOOTEN : 1;
    unsigned int SSWWAIT : 1;
    unsigned int HSMDX : 1;
    unsigned int HSM6X : 1;
    unsigned int HSM16X : 1;
    unsigned int HSM17X : 1;
    unsigned int S6ROM : 1;
    unsigned int HSMENPINS : 2;
    unsigned int HSMENRES : 2;
    unsigned int DESTDBG : 2;
    unsigned int BLKFLAN : 1;
    unsigned int reserved_14 : 2;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int reserved_18 : 14;
} Ifx_FLASH_PROCONHSMCOTP_Bits;


typedef struct _Ifx_FLASH_PROCONOTP_Bits
{
    unsigned int S0ROM : 1;
    unsigned int S1ROM : 1;
    unsigned int S2ROM : 1;
    unsigned int S3ROM : 1;
    unsigned int S4ROM : 1;
    unsigned int S5ROM : 1;
    unsigned int S6ROM : 1;
    unsigned int S7ROM : 1;
    unsigned int S8ROM : 1;
    unsigned int S9ROM : 1;
    unsigned int S10ROM : 1;
    unsigned int S11ROM : 1;
    unsigned int S12ROM : 1;
    unsigned int S13ROM : 1;
    unsigned int S14ROM : 1;
    unsigned int S15ROM : 1;
    unsigned int S16ROM : 1;
    unsigned int S17ROM : 1;
    unsigned int S18ROM : 1;
    unsigned int S19ROM : 1;
    unsigned int S20ROM : 1;
    unsigned int S21ROM : 1;
    unsigned int S22ROM : 1;
    unsigned int S23ROM : 1;
    unsigned int S24ROM : 1;
    unsigned int S25ROM : 1;
    unsigned int S26ROM : 1;
    unsigned int reserved_27 : 2;
    unsigned int BML : 2;
    unsigned int TP : 1;
} Ifx_FLASH_PROCONOTP_Bits;


typedef struct _Ifx_FLASH_PROCONP_Bits
{
    unsigned int S0L : 1;
    unsigned int S1L : 1;
    unsigned int S2L : 1;
    unsigned int S3L : 1;
    unsigned int S4L : 1;
    unsigned int S5L : 1;
    unsigned int S6L : 1;
    unsigned int S7L : 1;
    unsigned int S8L : 1;
    unsigned int S9L : 1;
    unsigned int S10L : 1;
    unsigned int S11L : 1;
    unsigned int S12L : 1;
    unsigned int S13L : 1;
    unsigned int S14L : 1;
    unsigned int S15L : 1;
    unsigned int S16L : 1;
    unsigned int S17L : 1;
    unsigned int S18L : 1;
    unsigned int S19L : 1;
    unsigned int S20L : 1;
    unsigned int S21L : 1;
    unsigned int S22L : 1;
    unsigned int S23L : 1;
    unsigned int S24L : 1;
    unsigned int S25L : 1;
    unsigned int S26L : 1;
    unsigned int reserved_27 : 4;
    unsigned int RPRO : 1;
} Ifx_FLASH_PROCONP_Bits;


typedef struct _Ifx_FLASH_PROCONWOP_Bits
{
    unsigned int S0WOP : 1;
    unsigned int S1WOP : 1;
    unsigned int S2WOP : 1;
    unsigned int S3WOP : 1;
    unsigned int S4WOP : 1;
    unsigned int S5WOP : 1;
    unsigned int S6WOP : 1;
    unsigned int S7WOP : 1;
    unsigned int S8WOP : 1;
    unsigned int S9WOP : 1;
    unsigned int S10WOP : 1;
    unsigned int S11WOP : 1;
    unsigned int S12WOP : 1;
    unsigned int S13WOP : 1;
    unsigned int S14WOP : 1;
    unsigned int S15WOP : 1;
    unsigned int S16WOP : 1;
    unsigned int S17WOP : 1;
    unsigned int S18WOP : 1;
    unsigned int S19WOP : 1;
    unsigned int S20WOP : 1;
    unsigned int S21WOP : 1;
    unsigned int S22WOP : 1;
    unsigned int S23WOP : 1;
    unsigned int S24WOP : 1;
    unsigned int S25WOP : 1;
    unsigned int S26WOP : 1;
    unsigned int reserved_27 : 4;
    unsigned int DATM : 1;
} Ifx_FLASH_PROCONWOP_Bits;


typedef struct _Ifx_FLASH_RDB_CFG0_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG0_Bits;


typedef struct _Ifx_FLASH_RDB_CFG1_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG1_Bits;


typedef struct _Ifx_FLASH_RDB_CFG2_Bits
{
    unsigned int TAG : 6;
    unsigned int reserved_6 : 26;
} Ifx_FLASH_RDB_CFG2_Bits;


typedef struct _Ifx_FLASH_RRAD_Bits
{
    unsigned int reserved_0 : 3;
    unsigned int ADD : 29;
} Ifx_FLASH_RRAD_Bits;


typedef struct _Ifx_FLASH_RRCT_Bits
{
    unsigned int STRT : 1;
    unsigned int STP : 1;
    unsigned int BUSY : 1;
    unsigned int DONE : 1;
    unsigned int ERR : 1;
    unsigned int reserved_5 : 3;
    unsigned int EOBM : 1;
    unsigned int reserved_9 : 7;
    unsigned int CNT : 16;
} Ifx_FLASH_RRCT_Bits;


typedef struct _Ifx_FLASH_RRD0_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD0_Bits;


typedef struct _Ifx_FLASH_RRD1_Bits
{
    unsigned int DATA : 32;
} Ifx_FLASH_RRD1_Bits;


typedef struct _Ifx_FLASH_UBAB_CFG_Bits
{
    unsigned int SEL : 6;
    unsigned int reserved_6 : 2;
    unsigned int CLR : 1;
    unsigned int DIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_FLASH_UBAB_CFG_Bits;


typedef struct _Ifx_FLASH_UBAB_STAT_Bits
{
    unsigned int VLD0 : 1;
    unsigned int reserved_1 : 31;
} Ifx_FLASH_UBAB_STAT_Bits;


typedef struct _Ifx_FLASH_UBAB_TOP_Bits
{
    unsigned int reserved_0 : 5;
    unsigned int ADDR : 19;
    unsigned int ERR : 6;
    unsigned int VLD : 1;
    unsigned int CLR : 1;
} Ifx_FLASH_UBAB_TOP_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ACCEN0_Bits B;
} Ifx_FLASH_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ACCEN1_Bits B;
} Ifx_FLASH_ACCEN1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_CBAB_CFG_Bits B;
} Ifx_FLASH_CBAB_CFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_CBAB_STAT_Bits B;
} Ifx_FLASH_CBAB_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_CBAB_TOP_Bits B;
} Ifx_FLASH_CBAB_TOP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_COMM0_Bits B;
} Ifx_FLASH_COMM0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_COMM1_Bits B;
} Ifx_FLASH_COMM1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_COMM2_Bits B;
} Ifx_FLASH_COMM2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ECCRD_Bits B;
} Ifx_FLASH_ECCRD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ECCRP_Bits B;
} Ifx_FLASH_ECCRP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ECCW_Bits B;
} Ifx_FLASH_ECCW;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_FCON_Bits B;
} Ifx_FLASH_FCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_FPRO_Bits B;
} Ifx_FLASH_FPRO;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_FSR_Bits B;
} Ifx_FLASH_FSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMFCON_Bits B;
} Ifx_FLASH_HSMFCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMFSR_Bits B;
} Ifx_FLASH_HSMFSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMMARD_Bits B;
} Ifx_FLASH_HSMMARD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMRRAD_Bits B;
} Ifx_FLASH_HSMRRAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMRRCT_Bits B;
} Ifx_FLASH_HSMRRCT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMRRD0_Bits B;
} Ifx_FLASH_HSMRRD0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_HSMRRD1_Bits B;
} Ifx_FLASH_HSMRRD1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_ID_Bits B;
} Ifx_FLASH_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_MARD_Bits B;
} Ifx_FLASH_MARD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_MARP_Bits B;
} Ifx_FLASH_MARP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCOND_Bits B;
} Ifx_FLASH_PROCOND;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONDBG_Bits B;
} Ifx_FLASH_PROCONDBG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONHSM_Bits B;
} Ifx_FLASH_PROCONHSM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONHSMCOTP_Bits B;
} Ifx_FLASH_PROCONHSMCOTP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONOTP_Bits B;
} Ifx_FLASH_PROCONOTP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONP_Bits B;
} Ifx_FLASH_PROCONP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_PROCONWOP_Bits B;
} Ifx_FLASH_PROCONWOP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RDB_CFG0_Bits B;
} Ifx_FLASH_RDB_CFG0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RDB_CFG1_Bits B;
} Ifx_FLASH_RDB_CFG1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RDB_CFG2_Bits B;
} Ifx_FLASH_RDB_CFG2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RRAD_Bits B;
} Ifx_FLASH_RRAD;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RRCT_Bits B;
} Ifx_FLASH_RRCT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RRD0_Bits B;
} Ifx_FLASH_RRD0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_RRD1_Bits B;
} Ifx_FLASH_RRD1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_UBAB_CFG_Bits B;
} Ifx_FLASH_UBAB_CFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_UBAB_STAT_Bits B;
} Ifx_FLASH_UBAB_STAT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_FLASH_UBAB_TOP_Bits B;
} Ifx_FLASH_UBAB_TOP;
# 1072 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH_CBAB
{
    Ifx_FLASH_CBAB_CFG CFG;
    Ifx_FLASH_CBAB_STAT STAT;
    Ifx_FLASH_CBAB_TOP TOP;
} Ifx_FLASH_CBAB;


typedef volatile struct _Ifx_FLASH_RDB
{
    Ifx_FLASH_RDB_CFG0 CFG0;
    Ifx_FLASH_RDB_CFG1 CFG1;
    Ifx_FLASH_RDB_CFG2 CFG2;
} Ifx_FLASH_RDB;


typedef volatile struct _Ifx_FLASH_UBAB
{
    Ifx_FLASH_UBAB_CFG CFG;
    Ifx_FLASH_UBAB_STAT STAT;
    Ifx_FLASH_UBAB_TOP TOP;
} Ifx_FLASH_UBAB;
# 1106 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_regdef.h"
typedef volatile struct _Ifx_FLASH
{
    Ifx_FLASH_COMM0 COMM0;
    Ifx_FLASH_COMM1 COMM1;
    Ifx_FLASH_COMM2 COMM2;
    unsigned char reserved_C[4092];
    Ifx_FLASH_ID ID;
    unsigned char reserved_100C[4];
    Ifx_FLASH_FSR FSR;
    Ifx_FLASH_FCON FCON;
    unsigned char reserved_1018[4];
    Ifx_FLASH_FPRO FPRO;
    Ifx_FLASH_PROCONP PROCONP[2];
    unsigned char reserved_1028[8];
    Ifx_FLASH_PROCOND PROCOND;
    Ifx_FLASH_PROCONHSMCOTP PROCONHSMCOTP;
    Ifx_FLASH_PROCONOTP PROCONOTP[2];
    unsigned char reserved_1040[8];
    Ifx_FLASH_PROCONWOP PROCONWOP[2];
    unsigned char reserved_1050[8];
    Ifx_FLASH_PROCONDBG PROCONDBG;
    Ifx_FLASH_PROCONHSM PROCONHSM;
    Ifx_FLASH_RDB RDBCFG[2];
    unsigned char reserved_1078[24];
    Ifx_FLASH_ECCW ECCW;
    Ifx_FLASH_ECCRP ECCRP[2];
    unsigned char reserved_109C[8];
    Ifx_FLASH_ECCRD ECCRD;
    Ifx_FLASH_MARP MARP;
    Ifx_FLASH_MARD MARD;
    unsigned char reserved_10B0[4];
    Ifx_FLASH_CBAB CBAB[2];
    unsigned char reserved_10CC[24];
    Ifx_FLASH_UBAB UBAB[2];
    unsigned char reserved_10FC[68];
    Ifx_FLASH_RRCT RRCT;
    Ifx_FLASH_RRD0 RRD0;
    Ifx_FLASH_RRD1 RRD1;
    Ifx_FLASH_RRAD RRAD;
    unsigned char reserved_1150[176];
    Ifx_FLASH_HSMFSR HSMFSR;
    Ifx_FLASH_HSMFCON HSMFCON;
    Ifx_FLASH_HSMMARD HSMMARD;
    Ifx_FLASH_HSMRRCT HSMRRCT;
    Ifx_FLASH_HSMRRD0 HSMRRD0;
    Ifx_FLASH_HSMRRD1 HSMRRD1;
    Ifx_FLASH_HSMRRAD HSMRRAD;
    unsigned char reserved_121C[476];
    Ifx_FLASH_ACCEN1 ACCEN1;
    Ifx_FLASH_ACCEN0 ACCEN0;
} Ifx_FLASH;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxFlash_reg.h" 2
# 112 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxScu_reg.h" 1
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h" 2

# 1 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h" 1
# 43 "./0_Src/4_McHal/Tricore/Port/Std/IfxPort.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h" 1
# 41 "./0_Src/4_McHal/Tricore/_Impl/IfxPort_cfg.h"
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
# 34 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h" 2





typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Evrwup_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
} IfxScu_Hwcfg_In;


typedef const struct
{
    Ifx_SCU* module;
    uint8 channelId;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Req_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Dcdcsync_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxScu_Emgstop_In;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Wdtlck_Out;


typedef const struct
{
    Ifx_SCU* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxScu_Extclk_Out;

extern IfxScu_Dcdcsync_Out IfxScu_DCDCSYNC_P32_2_OUT;
extern IfxScu_Dcdcsync_Out IfxScu_DCDCSYNC_P33_13_OUT;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPA_P33_8_IN;
extern IfxScu_Emgstop_In IfxScu_EMGSTOPB_P21_2_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPA_P14_1_IN;
extern IfxScu_Evrwup_In IfxScu_EVRWUPB_P15_1_IN;
extern IfxScu_Extclk_Out IfxScu_EXTCLK0_P23_1_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P11_12_OUT;
extern IfxScu_Extclk_Out IfxScu_EXTCLK1_P32_4_OUT;
extern IfxScu_Hwcfg_In IfxScu_HWCFG0DCLDO_P14_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG1EVR33_P14_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG2EVR13_P14_2_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG3_BMI_P14_3_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG4_P10_5_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG5_P10_6_IN;
extern IfxScu_Hwcfg_In IfxScu_HWCFG6_P14_4_IN;
extern IfxScu_Req_In IfxScu_REQ0_P15_4_IN;
extern IfxScu_Req_In IfxScu_REQ10_P14_3_IN;
extern IfxScu_Req_In IfxScu_REQ11_P20_9_IN;
extern IfxScu_Req_In IfxScu_REQ12_P11_10_IN;
extern IfxScu_Req_In IfxScu_REQ13_P15_5_IN;
extern IfxScu_Req_In IfxScu_REQ14_P02_1_IN;
extern IfxScu_Req_In IfxScu_REQ15_P14_1_IN;
extern IfxScu_Req_In IfxScu_REQ16_P15_1_IN;
extern IfxScu_Req_In IfxScu_REQ1_P15_8_IN;
extern IfxScu_Req_In IfxScu_REQ2_P10_2_IN;
extern IfxScu_Req_In IfxScu_REQ3_P10_3_IN;
extern IfxScu_Req_In IfxScu_REQ4_P10_7_IN;
extern IfxScu_Req_In IfxScu_REQ5_P10_8_IN;
extern IfxScu_Req_In IfxScu_REQ6_P02_0_IN;
extern IfxScu_Req_In IfxScu_REQ7_P00_4_IN;
extern IfxScu_Req_In IfxScu_REQ8_P33_7_IN;
extern IfxScu_Req_In IfxScu_REQ9_P20_0_IN;
extern IfxScu_Wdtlck_Out IfxScu_WDT0LCK_P20_8_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDT1LCK_P20_7_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDT2LCK_P20_6_OUT;
extern IfxScu_Wdtlck_Out IfxScu_WDTSLCK_P20_9_OUT;
# 145 "./0_Src/4_McHal/Tricore/_PinMap/IfxScu_PinMap.h"
extern const IfxScu_Dcdcsync_Out *IfxScu_Dcdcsync_Out_pinTable[1][2];


extern const IfxScu_Emgstop_In *IfxScu_Emgstop_In_pinTable[1][2];


extern const IfxScu_Evrwup_In *IfxScu_Evrwup_In_pinTable[1][2];


extern const IfxScu_Extclk_Out *IfxScu_Extclk_Out_pinTable[1][3];


extern const IfxScu_Hwcfg_In *IfxScu_Hwcfg_In_pinTable[1][7];


extern const IfxScu_Req_In *IfxScu_Req_In_pinTable[1][8][4];


extern const IfxScu_Wdtlck_Out *IfxScu_Wdtlck_Out_pinTable[1][4];
# 113 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h" 2
# 129 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef void (*IfxScuCcu_PllStepsFunctionHook)(void);
# 143 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef enum
{
    IfxScuCcu_K1divider_1 = 0,
    IfxScuCcu_K1divider_2,
    IfxScuCcu_K1divider_3,
    IfxScuCcu_K1divider_4,
    IfxScuCcu_K1divider_5,
    IfxScuCcu_K1divider_6,
    IfxScuCcu_K1divider_7,
    IfxScuCcu_K1divider_8,
    IfxScuCcu_K1divider_9,
    IfxScuCcu_K1divider_10,
    IfxScuCcu_K1divider_11,
    IfxScuCcu_K1divider_12,
    IfxScuCcu_K1divider_13,
    IfxScuCcu_K1divider_14,
    IfxScuCcu_K1divider_15,
    IfxScuCcu_K1divider_16,
    IfxScuCcu_K1divider_17,
    IfxScuCcu_K1divider_18,
    IfxScuCcu_K1divider_19,
    IfxScuCcu_K1divider_20,
    IfxScuCcu_K1divider_21,
    IfxScuCcu_K1divider_22,
    IfxScuCcu_K1divider_23,
    IfxScuCcu_K1divider_24,
    IfxScuCcu_K1divider_25,
    IfxScuCcu_K1divider_26,
    IfxScuCcu_K1divider_27,
    IfxScuCcu_K1divider_28,
    IfxScuCcu_K1divider_29,
    IfxScuCcu_K1divider_30,
    IfxScuCcu_K1divider_31,
    IfxScuCcu_K1divider_32,
    IfxScuCcu_K1divider_33,
    IfxScuCcu_K1divider_34,
    IfxScuCcu_K1divider_35,
    IfxScuCcu_K1divider_36,
    IfxScuCcu_K1divider_37,
    IfxScuCcu_K1divider_38,
    IfxScuCcu_K1divider_39,
    IfxScuCcu_K1divider_40,
    IfxScuCcu_K1divider_41,
    IfxScuCcu_K1divider_42,
    IfxScuCcu_K1divider_43,
    IfxScuCcu_K1divider_44,
    IfxScuCcu_K1divider_45,
    IfxScuCcu_K1divider_46,
    IfxScuCcu_K1divider_47,
    IfxScuCcu_K1divider_48,
    IfxScuCcu_K1divider_49,
    IfxScuCcu_K1divider_50,
    IfxScuCcu_K1divider_51,
    IfxScuCcu_K1divider_52,
    IfxScuCcu_K1divider_53,
    IfxScuCcu_K1divider_54,
    IfxScuCcu_K1divider_55,
    IfxScuCcu_K1divider_56,
    IfxScuCcu_K1divider_57,
    IfxScuCcu_K1divider_58,
    IfxScuCcu_K1divider_59,
    IfxScuCcu_K1divider_60,
    IfxScuCcu_K1divider_61,
    IfxScuCcu_K1divider_62,
    IfxScuCcu_K1divider_63,
    IfxScuCcu_K1divider_64,
    IfxScuCcu_K1divider_65,
    IfxScuCcu_K1divider_66,
    IfxScuCcu_K1divider_67,
    IfxScuCcu_K1divider_68,
    IfxScuCcu_K1divider_69,
    IfxScuCcu_K1divider_70,
    IfxScuCcu_K1divider_71,
    IfxScuCcu_K1divider_72,
    IfxScuCcu_K1divider_73,
    IfxScuCcu_K1divider_74,
    IfxScuCcu_K1divider_75,
    IfxScuCcu_K1divider_76,
    IfxScuCcu_K1divider_77,
    IfxScuCcu_K1divider_78,
    IfxScuCcu_K1divider_79,
    IfxScuCcu_K1divider_80,
    IfxScuCcu_K1divider_81,
    IfxScuCcu_K1divider_82,
    IfxScuCcu_K1divider_83,
    IfxScuCcu_K1divider_84,
    IfxScuCcu_K1divider_85,
    IfxScuCcu_K1divider_86,
    IfxScuCcu_K1divider_87,
    IfxScuCcu_K1divider_88,
    IfxScuCcu_K1divider_89,
    IfxScuCcu_K1divider_90,
    IfxScuCcu_K1divider_91,
    IfxScuCcu_K1divider_92,
    IfxScuCcu_K1divider_93,
    IfxScuCcu_K1divider_94,
    IfxScuCcu_K1divider_95,
    IfxScuCcu_K1divider_96,
    IfxScuCcu_K1divider_97,
    IfxScuCcu_K1divider_98,
    IfxScuCcu_K1divider_99,
    IfxScuCcu_K1divider_100,
    IfxScuCcu_K1divider_101,
    IfxScuCcu_K1divider_102,
    IfxScuCcu_K1divider_103,
    IfxScuCcu_K1divider_104,
    IfxScuCcu_K1divider_105,
    IfxScuCcu_K1divider_106,
    IfxScuCcu_K1divider_107,
    IfxScuCcu_K1divider_108,
    IfxScuCcu_K1divider_109,
    IfxScuCcu_K1divider_110,
    IfxScuCcu_K1divider_111,
    IfxScuCcu_K1divider_112,
    IfxScuCcu_K1divider_113,
    IfxScuCcu_K1divider_114,
    IfxScuCcu_K1divider_115,
    IfxScuCcu_K1divider_116,
    IfxScuCcu_K1divider_117,
    IfxScuCcu_K1divider_118,
    IfxScuCcu_K1divider_119,
    IfxScuCcu_K1divider_120,
    IfxScuCcu_K1divider_121,
    IfxScuCcu_K1divider_122,
    IfxScuCcu_K1divider_123,
    IfxScuCcu_K1divider_124,
    IfxScuCcu_K1divider_125,
    IfxScuCcu_K1divider_126,
    IfxScuCcu_K1divider_127,
    IfxScuCcu_K1divider_128
} IfxScuCcu_K1divider;



typedef enum
{
    IfxScuCcu_K2divider_1 = 0,
    IfxScuCcu_K2divider_2,
    IfxScuCcu_K2divider_3,
    IfxScuCcu_K2divider_4,
    IfxScuCcu_K2divider_5,
    IfxScuCcu_K2divider_6,
    IfxScuCcu_K2divider_7,
    IfxScuCcu_K2divider_8,
    IfxScuCcu_K2divider_9,
    IfxScuCcu_K2divider_10,
    IfxScuCcu_K2divider_11,
    IfxScuCcu_K2divider_12,
    IfxScuCcu_K2divider_13,
    IfxScuCcu_K2divider_14,
    IfxScuCcu_K2divider_15,
    IfxScuCcu_K2divider_16,
    IfxScuCcu_K2divider_17,
    IfxScuCcu_K2divider_18,
    IfxScuCcu_K2divider_19,
    IfxScuCcu_K2divider_20,
    IfxScuCcu_K2divider_21,
    IfxScuCcu_K2divider_22,
    IfxScuCcu_K2divider_23,
    IfxScuCcu_K2divider_24,
    IfxScuCcu_K2divider_25,
    IfxScuCcu_K2divider_26,
    IfxScuCcu_K2divider_27,
    IfxScuCcu_K2divider_28,
    IfxScuCcu_K2divider_29,
    IfxScuCcu_K2divider_30,
    IfxScuCcu_K2divider_31,
    IfxScuCcu_K2divider_32,
    IfxScuCcu_K2divider_33,
    IfxScuCcu_K2divider_34,
    IfxScuCcu_K2divider_35,
    IfxScuCcu_K2divider_36,
    IfxScuCcu_K2divider_37,
    IfxScuCcu_K2divider_38,
    IfxScuCcu_K2divider_39,
    IfxScuCcu_K2divider_40,
    IfxScuCcu_K2divider_41,
    IfxScuCcu_K2divider_42,
    IfxScuCcu_K2divider_43,
    IfxScuCcu_K2divider_44,
    IfxScuCcu_K2divider_45,
    IfxScuCcu_K2divider_46,
    IfxScuCcu_K2divider_47,
    IfxScuCcu_K2divider_48,
    IfxScuCcu_K2divider_49,
    IfxScuCcu_K2divider_50,
    IfxScuCcu_K2divider_51,
    IfxScuCcu_K2divider_52,
    IfxScuCcu_K2divider_53,
    IfxScuCcu_K2divider_54,
    IfxScuCcu_K2divider_55,
    IfxScuCcu_K2divider_56,
    IfxScuCcu_K2divider_57,
    IfxScuCcu_K2divider_58,
    IfxScuCcu_K2divider_59,
    IfxScuCcu_K2divider_60,
    IfxScuCcu_K2divider_61,
    IfxScuCcu_K2divider_62,
    IfxScuCcu_K2divider_63,
    IfxScuCcu_K2divider_64,
    IfxScuCcu_K2divider_65,
    IfxScuCcu_K2divider_66,
    IfxScuCcu_K2divider_67,
    IfxScuCcu_K2divider_68,
    IfxScuCcu_K2divider_69,
    IfxScuCcu_K2divider_70,
    IfxScuCcu_K2divider_71,
    IfxScuCcu_K2divider_72,
    IfxScuCcu_K2divider_73,
    IfxScuCcu_K2divider_74,
    IfxScuCcu_K2divider_75,
    IfxScuCcu_K2divider_76,
    IfxScuCcu_K2divider_77,
    IfxScuCcu_K2divider_78,
    IfxScuCcu_K2divider_79,
    IfxScuCcu_K2divider_80,
    IfxScuCcu_K2divider_81,
    IfxScuCcu_K2divider_82,
    IfxScuCcu_K2divider_83,
    IfxScuCcu_K2divider_84,
    IfxScuCcu_K2divider_85,
    IfxScuCcu_K2divider_86,
    IfxScuCcu_K2divider_87,
    IfxScuCcu_K2divider_88,
    IfxScuCcu_K2divider_89,
    IfxScuCcu_K2divider_90,
    IfxScuCcu_K2divider_91,
    IfxScuCcu_K2divider_92,
    IfxScuCcu_K2divider_93,
    IfxScuCcu_K2divider_94,
    IfxScuCcu_K2divider_95,
    IfxScuCcu_K2divider_96,
    IfxScuCcu_K2divider_97,
    IfxScuCcu_K2divider_98,
    IfxScuCcu_K2divider_99,
    IfxScuCcu_K2divider_100,
    IfxScuCcu_K2divider_101,
    IfxScuCcu_K2divider_102,
    IfxScuCcu_K2divider_103,
    IfxScuCcu_K2divider_104,
    IfxScuCcu_K2divider_105,
    IfxScuCcu_K2divider_106,
    IfxScuCcu_K2divider_107,
    IfxScuCcu_K2divider_108,
    IfxScuCcu_K2divider_109,
    IfxScuCcu_K2divider_110,
    IfxScuCcu_K2divider_111,
    IfxScuCcu_K2divider_112,
    IfxScuCcu_K2divider_113,
    IfxScuCcu_K2divider_114,
    IfxScuCcu_K2divider_115,
    IfxScuCcu_K2divider_116,
    IfxScuCcu_K2divider_117,
    IfxScuCcu_K2divider_118,
    IfxScuCcu_K2divider_119,
    IfxScuCcu_K2divider_120,
    IfxScuCcu_K2divider_121,
    IfxScuCcu_K2divider_122,
    IfxScuCcu_K2divider_123,
    IfxScuCcu_K2divider_124,
    IfxScuCcu_K2divider_125,
    IfxScuCcu_K2divider_126,
    IfxScuCcu_K2divider_127,
    IfxScuCcu_K2divider_128
} IfxScuCcu_K2divider;



typedef enum
{
    IfxScuCcu_K3divider_1 = 0,
    IfxScuCcu_K3divider_2,
    IfxScuCcu_K3divider_3,
    IfxScuCcu_K3divider_4,
    IfxScuCcu_K3divider_5,
    IfxScuCcu_K3divider_6,
    IfxScuCcu_K3divider_7,
    IfxScuCcu_K3divider_8,
    IfxScuCcu_K3divider_9,
    IfxScuCcu_K3divider_10,
    IfxScuCcu_K3divider_11,
    IfxScuCcu_K3divider_12,
    IfxScuCcu_K3divider_13,
    IfxScuCcu_K3divider_14,
    IfxScuCcu_K3divider_15,
    IfxScuCcu_K3divider_16,
    IfxScuCcu_K3divider_17,
    IfxScuCcu_K3divider_18,
    IfxScuCcu_K3divider_19,
    IfxScuCcu_K3divider_20,
    IfxScuCcu_K3divider_21,
    IfxScuCcu_K3divider_22,
    IfxScuCcu_K3divider_23,
    IfxScuCcu_K3divider_24,
    IfxScuCcu_K3divider_25,
    IfxScuCcu_K3divider_26,
    IfxScuCcu_K3divider_27,
    IfxScuCcu_K3divider_28,
    IfxScuCcu_K3divider_29,
    IfxScuCcu_K3divider_30,
    IfxScuCcu_K3divider_31,
    IfxScuCcu_K3divider_32,
    IfxScuCcu_K3divider_33,
    IfxScuCcu_K3divider_34,
    IfxScuCcu_K3divider_35,
    IfxScuCcu_K3divider_36,
    IfxScuCcu_K3divider_37,
    IfxScuCcu_K3divider_38,
    IfxScuCcu_K3divider_39,
    IfxScuCcu_K3divider_40,
    IfxScuCcu_K3divider_41,
    IfxScuCcu_K3divider_42,
    IfxScuCcu_K3divider_43,
    IfxScuCcu_K3divider_44,
    IfxScuCcu_K3divider_45,
    IfxScuCcu_K3divider_46,
    IfxScuCcu_K3divider_47,
    IfxScuCcu_K3divider_48,
    IfxScuCcu_K3divider_49,
    IfxScuCcu_K3divider_50,
    IfxScuCcu_K3divider_51,
    IfxScuCcu_K3divider_52,
    IfxScuCcu_K3divider_53,
    IfxScuCcu_K3divider_54,
    IfxScuCcu_K3divider_55,
    IfxScuCcu_K3divider_56,
    IfxScuCcu_K3divider_57,
    IfxScuCcu_K3divider_58,
    IfxScuCcu_K3divider_59,
    IfxScuCcu_K3divider_60,
    IfxScuCcu_K3divider_61,
    IfxScuCcu_K3divider_62,
    IfxScuCcu_K3divider_63,
    IfxScuCcu_K3divider_64,
    IfxScuCcu_K3divider_65,
    IfxScuCcu_K3divider_66,
    IfxScuCcu_K3divider_67,
    IfxScuCcu_K3divider_68,
    IfxScuCcu_K3divider_69,
    IfxScuCcu_K3divider_70,
    IfxScuCcu_K3divider_71,
    IfxScuCcu_K3divider_72,
    IfxScuCcu_K3divider_73,
    IfxScuCcu_K3divider_74,
    IfxScuCcu_K3divider_75,
    IfxScuCcu_K3divider_76,
    IfxScuCcu_K3divider_77,
    IfxScuCcu_K3divider_78,
    IfxScuCcu_K3divider_79,
    IfxScuCcu_K3divider_80,
    IfxScuCcu_K3divider_81,
    IfxScuCcu_K3divider_82,
    IfxScuCcu_K3divider_83,
    IfxScuCcu_K3divider_84,
    IfxScuCcu_K3divider_85,
    IfxScuCcu_K3divider_86,
    IfxScuCcu_K3divider_87,
    IfxScuCcu_K3divider_88,
    IfxScuCcu_K3divider_89,
    IfxScuCcu_K3divider_90,
    IfxScuCcu_K3divider_91,
    IfxScuCcu_K3divider_92,
    IfxScuCcu_K3divider_93,
    IfxScuCcu_K3divider_94,
    IfxScuCcu_K3divider_95,
    IfxScuCcu_K3divider_96,
    IfxScuCcu_K3divider_97,
    IfxScuCcu_K3divider_98,
    IfxScuCcu_K3divider_99,
    IfxScuCcu_K3divider_100,
    IfxScuCcu_K3divider_101,
    IfxScuCcu_K3divider_102,
    IfxScuCcu_K3divider_103,
    IfxScuCcu_K3divider_104,
    IfxScuCcu_K3divider_105,
    IfxScuCcu_K3divider_106,
    IfxScuCcu_K3divider_107,
    IfxScuCcu_K3divider_108,
    IfxScuCcu_K3divider_109,
    IfxScuCcu_K3divider_110,
    IfxScuCcu_K3divider_111,
    IfxScuCcu_K3divider_112,
    IfxScuCcu_K3divider_113,
    IfxScuCcu_K3divider_114,
    IfxScuCcu_K3divider_115,
    IfxScuCcu_K3divider_116,
    IfxScuCcu_K3divider_117,
    IfxScuCcu_K3divider_118,
    IfxScuCcu_K3divider_119,
    IfxScuCcu_K3divider_120,
    IfxScuCcu_K3divider_121,
    IfxScuCcu_K3divider_122,
    IfxScuCcu_K3divider_123,
    IfxScuCcu_K3divider_124,
    IfxScuCcu_K3divider_125,
    IfxScuCcu_K3divider_126,
    IfxScuCcu_K3divider_127,
    IfxScuCcu_K3divider_128
} IfxScuCcu_K3divider;



typedef enum
{
    IfxScuCcu_Ndivider_1 = 0,
    IfxScuCcu_Ndivider_2,
    IfxScuCcu_Ndivider_3,
    IfxScuCcu_Ndivider_4,
    IfxScuCcu_Ndivider_5,
    IfxScuCcu_Ndivider_6,
    IfxScuCcu_Ndivider_7,
    IfxScuCcu_Ndivider_8,
    IfxScuCcu_Ndivider_9,
    IfxScuCcu_Ndivider_10,
    IfxScuCcu_Ndivider_11,
    IfxScuCcu_Ndivider_12,
    IfxScuCcu_Ndivider_13,
    IfxScuCcu_Ndivider_14,
    IfxScuCcu_Ndivider_15,
    IfxScuCcu_Ndivider_16,
    IfxScuCcu_Ndivider_17,
    IfxScuCcu_Ndivider_18,
    IfxScuCcu_Ndivider_19,
    IfxScuCcu_Ndivider_20,
    IfxScuCcu_Ndivider_21,
    IfxScuCcu_Ndivider_22,
    IfxScuCcu_Ndivider_23,
    IfxScuCcu_Ndivider_24,
    IfxScuCcu_Ndivider_25,
    IfxScuCcu_Ndivider_26,
    IfxScuCcu_Ndivider_27,
    IfxScuCcu_Ndivider_28,
    IfxScuCcu_Ndivider_29,
    IfxScuCcu_Ndivider_30,
    IfxScuCcu_Ndivider_31,
    IfxScuCcu_Ndivider_32,
    IfxScuCcu_Ndivider_33,
    IfxScuCcu_Ndivider_34,
    IfxScuCcu_Ndivider_35,
    IfxScuCcu_Ndivider_36,
    IfxScuCcu_Ndivider_37,
    IfxScuCcu_Ndivider_38,
    IfxScuCcu_Ndivider_39,
    IfxScuCcu_Ndivider_40,
    IfxScuCcu_Ndivider_41,
    IfxScuCcu_Ndivider_42,
    IfxScuCcu_Ndivider_43,
    IfxScuCcu_Ndivider_44,
    IfxScuCcu_Ndivider_45,
    IfxScuCcu_Ndivider_46,
    IfxScuCcu_Ndivider_47,
    IfxScuCcu_Ndivider_48,
    IfxScuCcu_Ndivider_49,
    IfxScuCcu_Ndivider_50,
    IfxScuCcu_Ndivider_51,
    IfxScuCcu_Ndivider_52,
    IfxScuCcu_Ndivider_53,
    IfxScuCcu_Ndivider_54,
    IfxScuCcu_Ndivider_55,
    IfxScuCcu_Ndivider_56,
    IfxScuCcu_Ndivider_57,
    IfxScuCcu_Ndivider_58,
    IfxScuCcu_Ndivider_59,
    IfxScuCcu_Ndivider_60,
    IfxScuCcu_Ndivider_61,
    IfxScuCcu_Ndivider_62,
    IfxScuCcu_Ndivider_63,
    IfxScuCcu_Ndivider_64,
    IfxScuCcu_Ndivider_65,
    IfxScuCcu_Ndivider_66,
    IfxScuCcu_Ndivider_67,
    IfxScuCcu_Ndivider_68,
    IfxScuCcu_Ndivider_69,
    IfxScuCcu_Ndivider_70,
    IfxScuCcu_Ndivider_71,
    IfxScuCcu_Ndivider_72,
    IfxScuCcu_Ndivider_73,
    IfxScuCcu_Ndivider_74,
    IfxScuCcu_Ndivider_75,
    IfxScuCcu_Ndivider_76,
    IfxScuCcu_Ndivider_77,
    IfxScuCcu_Ndivider_78,
    IfxScuCcu_Ndivider_79,
    IfxScuCcu_Ndivider_80,
    IfxScuCcu_Ndivider_81,
    IfxScuCcu_Ndivider_82,
    IfxScuCcu_Ndivider_83,
    IfxScuCcu_Ndivider_84,
    IfxScuCcu_Ndivider_85,
    IfxScuCcu_Ndivider_86,
    IfxScuCcu_Ndivider_87,
    IfxScuCcu_Ndivider_88,
    IfxScuCcu_Ndivider_89,
    IfxScuCcu_Ndivider_90,
    IfxScuCcu_Ndivider_91,
    IfxScuCcu_Ndivider_92,
    IfxScuCcu_Ndivider_93,
    IfxScuCcu_Ndivider_94,
    IfxScuCcu_Ndivider_95,
    IfxScuCcu_Ndivider_96,
    IfxScuCcu_Ndivider_97,
    IfxScuCcu_Ndivider_98,
    IfxScuCcu_Ndivider_99,
    IfxScuCcu_Ndivider_100,
    IfxScuCcu_Ndivider_101,
    IfxScuCcu_Ndivider_102,
    IfxScuCcu_Ndivider_103,
    IfxScuCcu_Ndivider_104,
    IfxScuCcu_Ndivider_105,
    IfxScuCcu_Ndivider_106,
    IfxScuCcu_Ndivider_107,
    IfxScuCcu_Ndivider_108,
    IfxScuCcu_Ndivider_109,
    IfxScuCcu_Ndivider_110,
    IfxScuCcu_Ndivider_111,
    IfxScuCcu_Ndivider_112,
    IfxScuCcu_Ndivider_113,
    IfxScuCcu_Ndivider_114,
    IfxScuCcu_Ndivider_115,
    IfxScuCcu_Ndivider_116,
    IfxScuCcu_Ndivider_117,
    IfxScuCcu_Ndivider_118,
    IfxScuCcu_Ndivider_119,
    IfxScuCcu_Ndivider_120,
    IfxScuCcu_Ndivider_121,
    IfxScuCcu_Ndivider_122,
    IfxScuCcu_Ndivider_123,
    IfxScuCcu_Ndivider_124,
    IfxScuCcu_Ndivider_125,
    IfxScuCcu_Ndivider_126,
    IfxScuCcu_Ndivider_127,
    IfxScuCcu_Ndivider_128
} IfxScuCcu_Ndivider;



typedef enum
{
    IfxScuCcu_Pdivider_1 = 0,
    IfxScuCcu_Pdivider_2,
    IfxScuCcu_Pdivider_3,
    IfxScuCcu_Pdivider_4,
    IfxScuCcu_Pdivider_5,
    IfxScuCcu_Pdivider_6,
    IfxScuCcu_Pdivider_7,
    IfxScuCcu_Pdivider_8,
    IfxScuCcu_Pdivider_9,
    IfxScuCcu_Pdivider_10,
    IfxScuCcu_Pdivider_11,
    IfxScuCcu_Pdivider_12,
    IfxScuCcu_Pdivider_13,
    IfxScuCcu_Pdivider_14,
    IfxScuCcu_Pdivider_15,
    IfxScuCcu_Pdivider_16
} IfxScuCcu_Pdivider;
# 709 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_CcuconRegConfig;




typedef struct
{
    uint8 pDivider;
    uint8 nDivider;
    uint8 k2Initial;
    float32 waitTime;
} IfxScuCcu_InitialStepConfig;



typedef struct
{
    uint8 k2Step;
    float32 waitTime;
    IfxScuCcu_PllStepsFunctionHook hookFunction;
} IfxScuCcu_PllStepsConfig;







typedef struct
{
    IfxScuCcu_CcuconRegConfig ccucon0;
    IfxScuCcu_CcuconRegConfig ccucon1;
    IfxScuCcu_CcuconRegConfig ccucon2;
    IfxScuCcu_CcuconRegConfig ccucon5;
    IfxScuCcu_CcuconRegConfig ccucon6;
    IfxScuCcu_CcuconRegConfig ccucon7;
    IfxScuCcu_CcuconRegConfig ccucon8;
} IfxScuCcu_ClockDistributionConfig;



typedef struct
{
    uint32 value;
    uint32 mask;
} IfxScuCcu_FlashWaitstateConfig;




typedef struct
{
    uint8 numOfPllDividerSteps;
    IfxScuCcu_PllStepsConfig *pllDividerStep;
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_SysPllConfig;







typedef struct
{
    IfxScuCcu_SysPllConfig sysPll;
    IfxScuCcu_ClockDistributionConfig clockDistribution;
    IfxScuCcu_FlashWaitstateConfig flashFconWaitStateConfig;
    uint32 xtalFrequency;
} IfxScuCcu_Config;



typedef struct
{
    IfxScuCcu_InitialStepConfig pllInitialStep;
} IfxScuCcu_ErayPllConfig;
# 804 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2ErayFrequency(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void);




static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void);





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void);
# 837 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_getBaud1Frequency(void);





extern float32 IfxScuCcu_getBaud2Frequency(void);





extern float32 IfxScuCcu_getBbbFrequency(void);





extern float32 IfxScuCcu_getCpuFrequency(const IfxCpu_ResourceCpu cpu);





extern float32 IfxScuCcu_getFsi2Frequency(void);





extern float32 IfxScuCcu_getFsiFrequency(void);





extern float32 IfxScuCcu_getMaxFrequency(void);





extern float32 IfxScuCcu_getModuleFrequency(void);





extern float32 IfxScuCcu_getOsc0Frequency(void);





extern float32 IfxScuCcu_getOscFrequency(void);





extern float32 IfxScuCcu_getPllErayFrequency(void);





extern float32 IfxScuCcu_getPllErayVcoFrequency(void);





extern float32 IfxScuCcu_getPllFrequency(void);





extern float32 IfxScuCcu_getPllVcoFrequency(void);





extern float32 IfxScuCcu_getSourceFrequency(void);





extern float32 IfxScuCcu_getSpbFrequency(void);





extern float32 IfxScuCcu_getSriFrequency(void);







extern float32 IfxScuCcu_setCpuFrequency(IfxCpu_ResourceCpu cpu, float32 cpuFreq);






extern float32 IfxScuCcu_setPll2ErayFrequency(float32 pll2ErayFreq);






extern float32 IfxScuCcu_setPll2Frequency(float32 pll2Freq);






extern float32 IfxScuCcu_setSpbFrequency(float32 spbFreq);






extern float32 IfxScuCcu_setSriFrequency(float32 sriFreq);
# 985 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_calculateSysPllDividers(IfxScuCcu_Config *cfg, uint32 fPll);
# 994 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_init(const IfxScuCcu_Config *cfg);





extern void IfxScuCcu_initConfig(IfxScuCcu_Config *cfg);
# 1009 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern boolean IfxScuCcu_initErayPll(const IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_initErayPllConfig(IfxScuCcu_ErayPllConfig *cfg);





extern void IfxScuCcu_switchToBackupClock(const IfxScuCcu_Config *cfg);
# 1034 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void);
# 1045 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern float32 IfxScuCcu_setGtmFrequency(float32 gtmFreq);
# 1054 "./0_Src/4_McHal/Tricore/Scu/Std/IfxScuCcu.h"
extern const IfxScuCcu_Config IfxScuCcu_defaultClockConfig;




extern const IfxScuCcu_ErayPllConfig IfxScuCcu_defaultErayPllConfig;





static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getEvrFrequency(void)
{
    return (100000000.0);
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getGtmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.GTMDIV;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2ErayFrequency(void)
{
    float32 pll2ErayFrequency;

    pll2ErayFrequency = IfxScuCcu_getPllErayVcoFrequency() / ((*(volatile Ifx_SCU_PLLERAYCON1 *)0xF003602Cu).B.K3DIV + 1);

    return pll2ErayFrequency;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getPll2Frequency(void)
{
    float32 pll2Frequency;
    pll2Frequency = IfxScuCcu_getPllVcoFrequency() / ((*(volatile Ifx_SCU_PLLCON1 *)0xF003601Cu).B.K3DIV + 1);

    return pll2Frequency;
}


static inline __attribute__ ((always_inline)) IfxScu_CCUCON0_CLKSEL IfxScuCcu_getSourceSelection(void)
{
    return (IfxScu_CCUCON0_CLKSEL)(*(volatile Ifx_SCU_CCUCON0 *)0xF0036030u).B.CLKSEL;
}


static inline __attribute__ ((always_inline)) float32 IfxScuCcu_getStmFrequency(void)
{
    return IfxScuCcu_getSourceFrequency() / (*(volatile Ifx_SCU_CCUCON1 *)0xF0036034u).B.STMDIV;
}
# 46 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h" 2
# 1 "./0_Src/4_McHal/Tricore/_PinMap/IfxDsadc_PinMap.h" 1
# 31 "./0_Src/4_McHal/Tricore/_PinMap/IfxDsadc_PinMap.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDsadc_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxDsadc_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDsadc_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxDsadc_regdef.h"
typedef struct _Ifx_DSADC_ACCEN0_Bits
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
} Ifx_DSADC_ACCEN0_Bits;


typedef struct _Ifx_DSADC_ACCPROT_Bits
{
    unsigned int RG00 : 1;
    unsigned int RG01 : 1;
    unsigned int RG02 : 1;
    unsigned int RG03 : 1;
    unsigned int RG04 : 1;
    unsigned int reserved_5 : 9;
    unsigned int RG10 : 1;
    unsigned int RG11 : 1;
    unsigned int RG40 : 1;
    unsigned int RG41 : 1;
    unsigned int RG42 : 1;
    unsigned int RG43 : 1;
    unsigned int RG44 : 1;
    unsigned int reserved_21 : 11;
} Ifx_DSADC_ACCPROT_Bits;


typedef struct _Ifx_DSADC_CGCFG_Bits
{
    unsigned int CGMOD : 2;
    unsigned int BREV : 1;
    unsigned int SIGPOL : 1;
    unsigned int DIVCG : 4;
    unsigned int reserved_8 : 7;
    unsigned int RUN : 1;
    unsigned int BITCOUNT : 5;
    unsigned int reserved_21 : 3;
    unsigned int STEPCOUNT : 4;
    unsigned int STEPS : 1;
    unsigned int STEPD : 1;
    unsigned int SGNCG : 1;
    unsigned int reserved_31 : 1;
} Ifx_DSADC_CGCFG_Bits;


typedef struct _Ifx_DSADC_CH_BOUNDSEL_Bits
{
    unsigned int BOUNDARYL : 16;
    unsigned int BOUNDARYU : 16;
} Ifx_DSADC_CH_BOUNDSEL_Bits;


typedef struct _Ifx_DSADC_CH_CGSYNC_Bits
{
    unsigned int SDCOUNT : 8;
    unsigned int SDCAP : 8;
    unsigned int SDPOS : 8;
    unsigned int SDNEG : 8;
} Ifx_DSADC_CH_CGSYNC_Bits;


typedef struct _Ifx_DSADC_CH_DICFG_Bits
{
    unsigned int DSRC : 4;
    unsigned int reserved_4 : 3;
    unsigned int DSWC : 1;
    unsigned int ITRMODE : 2;
    unsigned int TSTRMODE : 2;
    unsigned int TRSEL : 3;
    unsigned int TRWC : 1;
    unsigned int CSRC : 4;
    unsigned int STROBE : 4;
    unsigned int reserved_24 : 7;
    unsigned int SCWC : 1;
} Ifx_DSADC_CH_DICFG_Bits;


typedef struct _Ifx_DSADC_CH_FCFGA_Bits
{
    unsigned int CFADF : 8;
    unsigned int CFAC : 2;
    unsigned int SRGA : 2;
    unsigned int ESEL : 2;
    unsigned int EGT : 1;
    unsigned int reserved_15 : 1;
    unsigned int AFSC : 2;
    unsigned int reserved_18 : 6;
    unsigned int CFADCNT : 8;
} Ifx_DSADC_CH_FCFGA_Bits;


typedef struct _Ifx_DSADC_CH_FCFGC_Bits
{
    unsigned int CFMDF : 8;
    unsigned int CFMC : 2;
    unsigned int CFEN : 1;
    unsigned int reserved_11 : 1;
    unsigned int MFSC : 2;
    unsigned int SRGM : 2;
    unsigned int CFMSV : 8;
    unsigned int CFMDCNT : 8;
} Ifx_DSADC_CH_FCFGC_Bits;


typedef struct _Ifx_DSADC_CH_FCFGM_Bits
{
    unsigned int FIR0EN : 1;
    unsigned int FIR1EN : 1;
    unsigned int OCEN : 1;
    unsigned int DSH : 2;
    unsigned int FSH : 1;
    unsigned int reserved_6 : 26;
} Ifx_DSADC_CH_FCFGM_Bits;


typedef struct _Ifx_DSADC_CH_IWCTR_Bits
{
    unsigned int NVALCNT : 6;
    unsigned int reserved_6 : 1;
    unsigned int INTEN : 1;
    unsigned int REPCNT : 4;
    unsigned int REPVAL : 4;
    unsigned int NVALDIS : 6;
    unsigned int reserved_22 : 1;
    unsigned int IWS : 1;
    unsigned int NVALINT : 6;
    unsigned int reserved_30 : 2;
} Ifx_DSADC_CH_IWCTR_Bits;


typedef struct _Ifx_DSADC_CH_MODCFG_Bits
{
    unsigned int INCFGP : 2;
    unsigned int INCFGN : 2;
    unsigned int GAINSEL : 4;
    unsigned int INSEL : 2;
    unsigned int INMUX : 2;
    unsigned int INMODE : 2;
    unsigned int INMAC : 1;
    unsigned int INCWC : 1;
    unsigned int DIVM : 4;
    unsigned int reserved_20 : 3;
    unsigned int DWC : 1;
    unsigned int CMVS : 2;
    unsigned int MCFG : 2;
    unsigned int GCEN : 1;
    unsigned int APC : 1;
    unsigned int reserved_30 : 1;
    unsigned int MWC : 1;
} Ifx_DSADC_CH_MODCFG_Bits;


typedef struct _Ifx_DSADC_CH_OFFM_Bits
{
    unsigned int OFFSET : 16;
    unsigned int reserved_16 : 16;
} Ifx_DSADC_CH_OFFM_Bits;


typedef struct _Ifx_DSADC_CH_RECTCFG_Bits
{
    unsigned int RFEN : 1;
    unsigned int reserved_1 : 3;
    unsigned int SSRC : 2;
    unsigned int reserved_6 : 9;
    unsigned int SDCVAL : 1;
    unsigned int reserved_16 : 14;
    unsigned int SGNCS : 1;
    unsigned int SGND : 1;
} Ifx_DSADC_CH_RECTCFG_Bits;


typedef struct _Ifx_DSADC_CH_RESA_Bits
{
    unsigned int RESULT : 16;
    unsigned int reserved_16 : 16;
} Ifx_DSADC_CH_RESA_Bits;


typedef struct _Ifx_DSADC_CH_RESM_Bits
{
    unsigned int RESULT : 16;
    unsigned int reserved_16 : 16;
} Ifx_DSADC_CH_RESM_Bits;


typedef struct _Ifx_DSADC_CH_TSTMP_Bits
{
    unsigned int RESULT : 16;
    unsigned int CFMDCNT : 8;
    unsigned int NVALCNT : 6;
    unsigned int TSVAL : 1;
    unsigned int TSSR : 1;
} Ifx_DSADC_CH_TSTMP_Bits;


typedef struct _Ifx_DSADC_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_DSADC_CLC_Bits;


typedef struct _Ifx_DSADC_EVFLAG_Bits
{
    unsigned int RESEV0 : 1;
    unsigned int RESEV1 : 1;
    unsigned int RESEV2 : 1;
    unsigned int RESEV3 : 1;
    unsigned int RESEV4 : 1;
    unsigned int RESEV5 : 1;
    unsigned int reserved_6 : 10;
    unsigned int ALEV0 : 1;
    unsigned int ALEV1 : 1;
    unsigned int ALEV2 : 1;
    unsigned int ALEV3 : 1;
    unsigned int ALEV4 : 1;
    unsigned int ALEV5 : 1;
    unsigned int reserved_22 : 10;
} Ifx_DSADC_EVFLAG_Bits;


typedef struct _Ifx_DSADC_EVFLAGCLR_Bits
{
    unsigned int RESEC0 : 1;
    unsigned int RESEC1 : 1;
    unsigned int RESEC2 : 1;
    unsigned int RESEC3 : 1;
    unsigned int RESEC4 : 1;
    unsigned int RESEC5 : 1;
    unsigned int reserved_6 : 10;
    unsigned int ALEC0 : 1;
    unsigned int ALEC1 : 1;
    unsigned int ALEC2 : 1;
    unsigned int ALEC3 : 1;
    unsigned int ALEC4 : 1;
    unsigned int ALEC5 : 1;
    unsigned int reserved_22 : 10;
} Ifx_DSADC_EVFLAGCLR_Bits;


typedef struct _Ifx_DSADC_GLOBCFG_Bits
{
    unsigned int MCSEL : 3;
    unsigned int reserved_3 : 8;
    unsigned int IRM0 : 1;
    unsigned int IRM2 : 1;
    unsigned int IRM4 : 1;
    unsigned int reserved_14 : 2;
    unsigned int IBSEL : 4;
    unsigned int LOSUP : 1;
    unsigned int reserved_21 : 1;
    unsigned int ICT : 1;
    unsigned int PSWC : 1;
    unsigned int reserved_24 : 8;
} Ifx_DSADC_GLOBCFG_Bits;


typedef struct _Ifx_DSADC_GLOBRC_Bits
{
    unsigned int CH0RUN : 1;
    unsigned int CH1RUN : 1;
    unsigned int CH2RUN : 1;
    unsigned int CH3RUN : 1;
    unsigned int CH4RUN : 1;
    unsigned int CH5RUN : 1;
    unsigned int reserved_6 : 10;
    unsigned int M0RUN : 1;
    unsigned int M1RUN : 1;
    unsigned int M2RUN : 1;
    unsigned int M3RUN : 1;
    unsigned int M4RUN : 1;
    unsigned int M5RUN : 1;
    unsigned int reserved_22 : 10;
} Ifx_DSADC_GLOBRC_Bits;


typedef struct _Ifx_DSADC_GLOBVCMH0_Bits
{
    unsigned int IN0PVC0 : 1;
    unsigned int reserved_1 : 3;
    unsigned int IN0NVC0 : 1;
    unsigned int reserved_5 : 3;
    unsigned int IN1PVC0 : 1;
    unsigned int reserved_9 : 3;
    unsigned int IN1NVC0 : 1;
    unsigned int reserved_13 : 3;
    unsigned int IN2PVC0 : 1;
    unsigned int IN2PVC1 : 1;
    unsigned int reserved_18 : 2;
    unsigned int IN2NVC0 : 1;
    unsigned int IN2NVC1 : 1;
    unsigned int reserved_22 : 2;
    unsigned int IN3PVC0 : 1;
    unsigned int IN3PVC1 : 1;
    unsigned int IN3PVC2 : 1;
    unsigned int IN3PVC3 : 1;
    unsigned int IN3NVC0 : 1;
    unsigned int IN3NVC1 : 1;
    unsigned int IN3NVC2 : 1;
    unsigned int IN3NVC3 : 1;
} Ifx_DSADC_GLOBVCMH0_Bits;


typedef struct _Ifx_DSADC_GLOBVCMH1_Bits
{
    unsigned int IN4PVC0 : 1;
    unsigned int reserved_1 : 3;
    unsigned int IN4NVC0 : 1;
    unsigned int reserved_5 : 3;
    unsigned int IN5PVC0 : 1;
    unsigned int reserved_9 : 3;
    unsigned int IN5NVC0 : 1;
    unsigned int reserved_13 : 19;
} Ifx_DSADC_GLOBVCMH1_Bits;


typedef struct _Ifx_DSADC_GLOBVCMH2_Bits
{
    unsigned int reserved_0 : 29;
    unsigned int VHON : 1;
    unsigned int VCMHS : 2;
} Ifx_DSADC_GLOBVCMH2_Bits;


typedef struct _Ifx_DSADC_ID_Bits
{
    unsigned int MOD_REV : 8;
    unsigned int MOD_TYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_DSADC_ID_Bits;


typedef struct _Ifx_DSADC_KRST0_Bits
{
    unsigned int RST : 1;
    unsigned int RSTSTAT : 1;
    unsigned int reserved_2 : 30;
} Ifx_DSADC_KRST0_Bits;


typedef struct _Ifx_DSADC_KRST1_Bits
{
    unsigned int RST : 1;
    unsigned int reserved_1 : 31;
} Ifx_DSADC_KRST1_Bits;


typedef struct _Ifx_DSADC_KRSTCLR_Bits
{
    unsigned int CLR : 1;
    unsigned int reserved_1 : 31;
} Ifx_DSADC_KRSTCLR_Bits;


typedef struct _Ifx_DSADC_OCS_Bits
{
    unsigned int reserved_0 : 24;
    unsigned int SUS : 4;
    unsigned int SUS_P : 1;
    unsigned int SUSSTA : 1;
    unsigned int reserved_30 : 2;
} Ifx_DSADC_OCS_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_ACCEN0_Bits B;
} Ifx_DSADC_ACCEN0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_ACCPROT_Bits B;
} Ifx_DSADC_ACCPROT;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CGCFG_Bits B;
} Ifx_DSADC_CGCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_BOUNDSEL_Bits B;
} Ifx_DSADC_CH_BOUNDSEL;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_CGSYNC_Bits B;
} Ifx_DSADC_CH_CGSYNC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_DICFG_Bits B;
} Ifx_DSADC_CH_DICFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_FCFGA_Bits B;
} Ifx_DSADC_CH_FCFGA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_FCFGC_Bits B;
} Ifx_DSADC_CH_FCFGC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_FCFGM_Bits B;
} Ifx_DSADC_CH_FCFGM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_IWCTR_Bits B;
} Ifx_DSADC_CH_IWCTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_MODCFG_Bits B;
} Ifx_DSADC_CH_MODCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_OFFM_Bits B;
} Ifx_DSADC_CH_OFFM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_RECTCFG_Bits B;
} Ifx_DSADC_CH_RECTCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_RESA_Bits B;
} Ifx_DSADC_CH_RESA;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_RESM_Bits B;
} Ifx_DSADC_CH_RESM;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CH_TSTMP_Bits B;
} Ifx_DSADC_CH_TSTMP;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_CLC_Bits B;
} Ifx_DSADC_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_EVFLAG_Bits B;
} Ifx_DSADC_EVFLAG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_EVFLAGCLR_Bits B;
} Ifx_DSADC_EVFLAGCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_GLOBCFG_Bits B;
} Ifx_DSADC_GLOBCFG;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_GLOBRC_Bits B;
} Ifx_DSADC_GLOBRC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_GLOBVCMH0_Bits B;
} Ifx_DSADC_GLOBVCMH0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_GLOBVCMH1_Bits B;
} Ifx_DSADC_GLOBVCMH1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_GLOBVCMH2_Bits B;
} Ifx_DSADC_GLOBVCMH2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_ID_Bits B;
} Ifx_DSADC_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_KRST0_Bits B;
} Ifx_DSADC_KRST0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_KRST1_Bits B;
} Ifx_DSADC_KRST1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_KRSTCLR_Bits B;
} Ifx_DSADC_KRSTCLR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DSADC_OCS_Bits B;
} Ifx_DSADC_OCS;
# 774 "./0_Src/4_McHal/Tricore/_Reg/IfxDsadc_regdef.h"
typedef volatile struct _Ifx_DSADC_CH
{
    Ifx_DSADC_CH_MODCFG MODCFG;
    unsigned char reserved_4[4];
    Ifx_DSADC_CH_DICFG DICFG;
    unsigned char reserved_C[4];
    Ifx_DSADC_CH_FCFGM FCFGM;
    Ifx_DSADC_CH_FCFGC FCFGC;
    Ifx_DSADC_CH_FCFGA FCFGA;
    unsigned char reserved_1C[4];
    Ifx_DSADC_CH_IWCTR IWCTR;
    unsigned char reserved_24[4];
    Ifx_DSADC_CH_BOUNDSEL BOUNDSEL;
    unsigned char reserved_2C[4];
    Ifx_DSADC_CH_RESM RESM;
    unsigned char reserved_34[4];
    Ifx_DSADC_CH_OFFM OFFM;
    unsigned char reserved_3C[4];
    Ifx_DSADC_CH_RESA RESA;
    unsigned char reserved_44[12];
    Ifx_DSADC_CH_TSTMP TSTMP;
    unsigned char reserved_54[76];
    Ifx_DSADC_CH_CGSYNC CGSYNC;
    unsigned char reserved_A4[4];
    Ifx_DSADC_CH_RECTCFG RECTCFG;
    unsigned char reserved_AC[84];
} Ifx_DSADC_CH;
# 813 "./0_Src/4_McHal/Tricore/_Reg/IfxDsadc_regdef.h"
typedef volatile struct _Ifx_DSADC
{
    Ifx_DSADC_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_DSADC_ID ID;
    unsigned char reserved_C[28];
    Ifx_DSADC_OCS OCS;
    Ifx_DSADC_KRSTCLR KRSTCLR;
    Ifx_DSADC_KRST1 KRST1;
    Ifx_DSADC_KRST0 KRST0;
    unsigned char reserved_38[4];
    Ifx_DSADC_ACCEN0 ACCEN0;
    unsigned char reserved_40[64];
    Ifx_DSADC_GLOBCFG GLOBCFG;
    unsigned char reserved_84[4];
    Ifx_DSADC_GLOBRC GLOBRC;
    unsigned char reserved_8C[4];
    Ifx_DSADC_ACCPROT ACCPROT;
    unsigned char reserved_94[12];
    Ifx_DSADC_CGCFG CGCFG;
    unsigned char reserved_A4[12];
    Ifx_DSADC_GLOBVCMH0 GLOBVCMH0;
    Ifx_DSADC_GLOBVCMH1 GLOBVCMH1;
    Ifx_DSADC_GLOBVCMH2 GLOBVCMH2;
    unsigned char reserved_BC[36];
    Ifx_DSADC_EVFLAG EVFLAG;
    Ifx_DSADC_EVFLAGCLR EVFLAGCLR;
    unsigned char reserved_E8[24];
    Ifx_DSADC_CH CH[6];
    unsigned char reserved_700[2304];
} Ifx_DSADC;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxDsadc_reg.h" 2
# 32 "./0_Src/4_McHal/Tricore/_PinMap/IfxDsadc_PinMap.h" 2







typedef const struct
{
    Ifx_DSADC* module;
    uint8 channel;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxDsadc_Dsn_In;


typedef const struct
{
    Ifx_DSADC* module;
    uint8 channel;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxDsadc_Dsp_In;


typedef const struct
{
    Ifx_DSADC* module;
    uint8 channel;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxDsadc_Cin_In;


typedef const struct
{
    Ifx_DSADC* module;
    uint8 channel;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxDsadc_Din_In;


typedef const struct
{
    Ifx_DSADC* module;
    uint8 channel;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxDsadc_Itr_In;


typedef const struct
{
    Ifx_DSADC* module;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxDsadc_Cgpwm_Out;


typedef const struct
{
    Ifx_DSADC* module;
    IfxPort_Pin pin;
    Ifx_RxSel select;
} IfxDsadc_Sg_In;


typedef const struct
{
    Ifx_DSADC* module;
    uint8 channel;
    IfxPort_Pin pin;
    IfxPort_OutputIdx select;
} IfxDsadc_Cout_Out;

extern IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P00_5_OUT;
extern IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P02_0_OUT;
extern IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMN_P33_11_OUT;
extern IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P00_6_OUT;
extern IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P02_1_OUT;
extern IfxDsadc_Cgpwm_Out IfxDsadc_CGPWMP_P33_12_OUT;
extern IfxDsadc_Cin_In IfxDsadc_CIN0A_P00_11_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN0B_P33_5_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN1A_P00_9_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN1B_P33_3_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN2A_P00_5_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN2B_P33_1_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN3A_P00_3_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN3B_P02_7_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN4A_P00_7_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN4B_P02_5_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN5A_P00_1_IN;
extern IfxDsadc_Cin_In IfxDsadc_CIN5B_P02_3_IN;
extern IfxDsadc_Cout_Out IfxDsadc_COUT0_P00_11_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT0_P33_5_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT1_P00_9_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT1_P33_3_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT2_P00_5_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT2_P33_1_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT3_P00_3_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT3_P02_7_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT4_P00_7_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT4_P02_5_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT5_P00_1_OUT;
extern IfxDsadc_Cout_Out IfxDsadc_COUT5_P02_3_OUT;
extern IfxDsadc_Din_In IfxDsadc_DIN0A_P00_12_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN0B_P33_6_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN1A_P00_10_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN1B_P33_4_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN2A_P00_6_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN2B_P33_2_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN3A_P00_4_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN3B_P02_8_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN4A_P00_8_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN4B_P02_6_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN5A_P00_2_IN;
extern IfxDsadc_Din_In IfxDsadc_DIN5B_P02_4_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS0NA_AN3_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS1NA_AN1_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS2NA_AN21_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS2NB_AN25_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS2NB_P40_1_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS3NA_AN37_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS3NA_P40_7_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS3NB_AN39_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS3NB_P40_9_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS3NC_AN45_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS3ND_AN47_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS4NA_P00_7_IN;
extern IfxDsadc_Dsn_In IfxDsadc_DS5NA_P00_1_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS0PA_AN2_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS1PA_AN0_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS2PA_AN20_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS2PB_AN24_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS2PB_P40_0_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS3PA_AN36_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS3PA_P40_6_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS3PB_AN38_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS3PB_P40_8_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS3PC_AN44_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS3PD_AN46_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS4PA_P00_8_IN;
extern IfxDsadc_Dsp_In IfxDsadc_DS5PA_P00_2_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR0E_P33_0_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR0F_P33_4_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR1E_P33_1_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR1F_P33_5_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR2E_P33_2_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR2F_P33_6_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR3E_P02_8_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR3F_P00_9_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR4E_P02_7_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR4F_P00_6_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR5E_P02_6_IN;
extern IfxDsadc_Itr_In IfxDsadc_ITR5F_P00_3_IN;
extern IfxDsadc_Sg_In IfxDsadc_SGNA_P00_4_IN;
extern IfxDsadc_Sg_In IfxDsadc_SGNB_P33_13_IN;
# 205 "./0_Src/4_McHal/Tricore/_PinMap/IfxDsadc_PinMap.h"
extern const IfxDsadc_Cgpwm_Out *IfxDsadc_Cgpwm_Out_pinTable[1][6];


extern const IfxDsadc_Cin_In *IfxDsadc_Cin_In_pinTable[1][6][2];


extern const IfxDsadc_Cout_Out *IfxDsadc_Cout_Out_pinTable[1][6][2];


extern const IfxDsadc_Din_In *IfxDsadc_Din_In_pinTable[1][6][2];


extern const IfxDsadc_Dsn_In *IfxDsadc_Dsn_In_pinTable[1][6][4];


extern const IfxDsadc_Dsp_In *IfxDsadc_Dsp_In_pinTable[1][6][4];


extern const IfxDsadc_Itr_In *IfxDsadc_Itr_In_pinTable[1][6][6];


extern const IfxDsadc_Sg_In *IfxDsadc_Sg_In_pinTable[1][2];
# 47 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h" 2
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDsadc_reg.h" 1
# 48 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h" 2
# 59 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
typedef enum
{
    IfxDsadc_AuxCombFilterShift_noShift = 0,
    IfxDsadc_AuxCombFilterShift_shiftBy1 = 1,
    IfxDsadc_AuxCombFilterShift_shiftBy2 = 2,
    IfxDsadc_AuxCombFilterShift_shiftBy3 = 3
} IfxDsadc_AuxCombFilterShift;




typedef enum
{
    IfxDsadc_AuxCombFilterType_comb1 = 0,
    IfxDsadc_AuxCombFilterType_comb2 = 1,
    IfxDsadc_AuxCombFilterType_comb3 = 2,
    IfxDsadc_AuxCombFilterType_combF = 3
} IfxDsadc_AuxCombFilterType;




typedef enum
{
    IfxDsadc_AuxEvent_everyNewResult = 0,
    IfxDsadc_AuxEvent_insideBoundary = 1,
    IfxDsadc_AuxEvent_outsideBoundary = 2
} IfxDsadc_AuxEvent;




typedef enum
{
    IfxDsadc_AuxGate_definedByESEL = 0,
    IfxDsadc_AuxGate_coupledToIntegrator = 1
} IfxDsadc_AuxGate;




typedef enum
{
    IfxDsadc_AuxServiceRequest_never = 0,
    IfxDsadc_AuxServiceRequest_auxFilter = 1,
    IfxDsadc_AuxServiceRequest_altSource = 2
} IfxDsadc_AuxServiceRequest;




typedef enum
{
    IfxDsadc_CarrierWaveformMode_stopped = 0,
    IfxDsadc_CarrierWaveformMode_square = 1,
    IfxDsadc_CarrierWaveformMode_triangle = 2,
    IfxDsadc_CarrierWaveformMode_sine = 3
} IfxDsadc_CarrierWaveformMode;



typedef enum
{
    IfxDsadc_ChannelId_0 = 0,
    IfxDsadc_ChannelId_1 = 1,
    IfxDsadc_ChannelId_2 = 2,
    IfxDsadc_ChannelId_3 = 3,
    IfxDsadc_ChannelId_4 = 4,
    IfxDsadc_ChannelId_5 = 5
} IfxDsadc_ChannelId;




typedef enum
{
    IfxDsadc_CommonModeVoltage_a = 0,
    IfxDsadc_CommonModeVoltage_b = 1,
    IfxDsadc_CommonModeVoltage_c = 2
} IfxDsadc_CommonModeVoltage;





typedef enum
{
    IfxDsadc_FirDataShift_noShift = 0,
    IfxDsadc_FirDataShift_shiftBy1 = 1,
    IfxDsadc_FirDataShift_shiftBy2 = 2,
    IfxDsadc_FirDataShift_shiftBy3 = 3
} IfxDsadc_FirDataShift;





typedef enum
{
    IfxDsadc_FirInternalShift_noShift = 0,
    IfxDsadc_FirInternalShift_shiftBy1 = 1
} IfxDsadc_FirInternalShift;




typedef enum
{
    IfxDsadc_InputConfig_inputPin = 0,
    IfxDsadc_InputConfig_supplyVoltage = 1,
    IfxDsadc_InputConfig_commonModeVoltage = 2,
    IfxDsadc_InputConfig_referenceGround = 3
} IfxDsadc_InputConfig;




typedef enum
{
    IfxDsadc_InputDataSource_onChipStandAlone = 0,
    IfxDsadc_InputDataSource_onChipCombined = 1,
    IfxDsadc_InputDataSource_directInputA = 2,
    IfxDsadc_InputDataSource_invertedInputA = 3,
    IfxDsadc_InputDataSource_directInputB = 4,
    IfxDsadc_InputDataSource_invertedInputB = 5
} IfxDsadc_InputDataSource;




typedef enum
{
    IfxDsadc_InputGain_factor1 = 0,
    IfxDsadc_InputGain_factor2 = 1,
    IfxDsadc_InputGain_factor4 = 2,
    IfxDsadc_InputGain_factor8 = 3,
    IfxDsadc_InputGain_factor16 = 4
} IfxDsadc_InputGain;




typedef enum
{
    IfxDsadc_InputPin_a = 0,
    IfxDsadc_InputPin_b = 1,
    IfxDsadc_InputPin_c = 2,
    IfxDsadc_InputPin_d = 3
} IfxDsadc_InputPin;




typedef enum
{
    IfxDsadc_IntegrationWindowSize_internalControl = 0,
    IfxDsadc_IntegrationWindowSize_externalControl = 1
} IfxDsadc_IntegrationWindowSize;





typedef enum
{
    IfxDsadc_IntegratorTrigger_bypassed = 0,
    IfxDsadc_IntegratorTrigger_fallingEdge = 1,
    IfxDsadc_IntegratorTrigger_risingEdge = 2,
    IfxDsadc_IntegratorTrigger_alwaysActive = 3
} IfxDsadc_IntegratorTrigger;




typedef enum
{
    IfxDsadc_LowPowerSupply_5V = 0,
    IfxDsadc_LowPowerSupply_3_3V = 1
} IfxDsadc_LowPowerSupply;




typedef enum
{
    IfxDsadc_MainCombFilterShift_noShift = 0,
    IfxDsadc_MainCombFilterShift_shiftBy1 = 1,
    IfxDsadc_MainCombFilterShift_shiftBy2 = 2,
    IfxDsadc_MainCombFilterShift_shiftBy3 = 3
} IfxDsadc_MainCombFilterShift;




typedef enum
{
    IfxDsadc_MainCombFilterType_comb1 = 0,
    IfxDsadc_MainCombFilterType_comb2 = 1,
    IfxDsadc_MainCombFilterType_comb3 = 2,
    IfxDsadc_MainCombFilterType_combF = 3
} IfxDsadc_MainCombFilterType;




typedef enum
{
    IfxDsadc_MainServiceRequest_never = 0,
    IfxDsadc_MainServiceRequest_highGateSignal = 1,
    IfxDsadc_MainServiceRequest_lowGateSignal = 2,
    IfxDsadc_MainServiceRequest_everyNewResult = 3
} IfxDsadc_MainServiceRequest;




typedef enum
{
    IfxDsadc_ModulatorClock_off = 0,
    IfxDsadc_ModulatorClock_fDSD = 1,
    IfxDsadc_ModulatorClock_fERAY = 2,
    IfxDsadc_ModulatorClock_fOSC0 = 3
} IfxDsadc_ModulatorClock;




typedef enum
{
    IfxDsadc_ModulatorClockDivider_div2 = 0,
    IfxDsadc_ModulatorClockDivider_div4,
    IfxDsadc_ModulatorClockDivider_div6,
    IfxDsadc_ModulatorClockDivider_div8,
    IfxDsadc_ModulatorClockDivider_div10,
    IfxDsadc_ModulatorClockDivider_div12,
    IfxDsadc_ModulatorClockDivider_div14,
    IfxDsadc_ModulatorClockDivider_div16,
    IfxDsadc_ModulatorClockDivider_div18,
    IfxDsadc_ModulatorClockDivider_div20,
    IfxDsadc_ModulatorClockDivider_div22,
    IfxDsadc_ModulatorClockDivider_div24,
    IfxDsadc_ModulatorClockDivider_div26,
    IfxDsadc_ModulatorClockDivider_div28,
    IfxDsadc_ModulatorClockDivider_div30,
    IfxDsadc_ModulatorClockDivider_div32
} IfxDsadc_ModulatorClockDivider;





typedef enum
{
    IfxDsadc_RectifierSignSource_onChipGenerator = 0,
    IfxDsadc_RectifierSignSource_nextChannel = 1,
    IfxDsadc_RectifierSignSource_externalA = 2,
    IfxDsadc_RectifierSignSource_externalB = 3
} IfxDsadc_RectifierSignSource;




typedef enum
{
    IfxDsadc_SampleClockSource_internal = 0,
    IfxDsadc_SampleClockSource_inputA = 1,
    IfxDsadc_SampleClockSource_inputB = 2,
    IfxDsadc_SampleClockSource_inputC = 3
} IfxDsadc_SampleClockSource;




typedef enum
{
    IfxDsadc_SampleStrobe_noDataStrobe = 0,
    IfxDsadc_SampleStrobe_sampleOnRisingEdge = 1,
    IfxDsadc_SampleStrobe_sampleOnFallingEdge = 2,
    IfxDsadc_SampleStrobe_sampleOnBothEdges = 3,
    IfxDsadc_SampleStrobe_reserved = 4,
    IfxDsadc_SampleStrobe_sampleOnTwoRisingEdges = 5,
    IfxDsadc_SampleStrobe_sampleOnTwoFallingEdges = 6
} IfxDsadc_SampleStrobe;




typedef enum
{
    IfxDsadc_SleepMode_enable = 0,
    IfxDsadc_SleepMode_disable = 1
} IfxDsadc_SleepMode;




typedef enum
{
    IfxDsadc_TimestampTrigger_noTrigger = 0,
    IfxDsadc_TimestampTrigger_fallingEdge = 1,
    IfxDsadc_TimestampTrigger_risingEdge = 2,
    IfxDsadc_TimestampTrigger_eachEdge = 3
} IfxDsadc_TimestampTrigger;




typedef enum
{
    IfxDsadc_TriggerInput_a = 0,
    IfxDsadc_TriggerInput_b = 1,
    IfxDsadc_TriggerInput_c = 2,
    IfxDsadc_TriggerInput_d = 3,
    IfxDsadc_TriggerInput_e = 4,
    IfxDsadc_TriggerInput_f = 5,
    IfxDsadc_TriggerInput_g = 6,
    IfxDsadc_TriggerInput_h = 7
} IfxDsadc_TriggerInput;
# 392 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
static inline __attribute__ ((always_inline)) void IfxDsadc_setSleepMode(Ifx_DSADC *dsadc, IfxDsadc_SleepMode mode);
# 407 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
static inline __attribute__ ((always_inline)) void IfxDsadc_startScan(Ifx_DSADC *dsadc, uint32 modulatorMask, uint32 channelMask);
# 420 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
static inline __attribute__ ((always_inline)) void IfxDsadc_stopScan(Ifx_DSADC *dsadc, uint32 modulatorMask);
# 430 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
extern void IfxDsadc_resetModule(Ifx_DSADC *dsadc);
# 446 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
static inline __attribute__ ((always_inline)) sint16 IfxDsadc_getAuxResult(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);






static inline __attribute__ ((always_inline)) uint16 IfxDsadc_getMainCombDecimation(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);






static inline __attribute__ ((always_inline)) sint16 IfxDsadc_getMainResult(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);





static inline __attribute__ ((always_inline)) boolean IfxDsadc_isModuleEnabled(Ifx_DSADC *dsadc);






static inline __attribute__ ((always_inline)) void IfxDsadc_setCarrierMode(Ifx_DSADC *dsadc, IfxDsadc_CarrierWaveformMode waveformMode);
# 484 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
extern float32 IfxDsadc_getIntegratorOutFreq(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);






extern float32 IfxDsadc_getMainCombOutFreq(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);






extern float32 IfxDsadc_getMainGroupDelay(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);






extern float32 IfxDsadc_getModulatorClockFreq(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);





extern float32 IfxDsadc_getModulatorInputClockFreq(Ifx_DSADC *dsadc);
# 527 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
extern volatile Ifx_SRC_SRCR *IfxDsadc_getAuxSrc(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);






extern volatile Ifx_SRC_SRCR *IfxDsadc_getMainSrc(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel);
# 551 "./0_Src/4_McHal/Tricore/Dsadc/Std/IfxDsadc.h"
static inline __attribute__ ((always_inline)) void IfxDsadc_initCgPwmPin(const IfxDsadc_Cgpwm_Out *cgPwm, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxDsadc_initCinPin(const IfxDsadc_Cin_In *cIn, IfxPort_InputMode cInMode);







static inline __attribute__ ((always_inline)) void IfxDsadc_initCoutPin(const IfxDsadc_Cout_Out *cout, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver);






static inline __attribute__ ((always_inline)) void IfxDsadc_initDinPin(const IfxDsadc_Din_In *dIn, IfxPort_InputMode dInMode);






static inline __attribute__ ((always_inline)) void IfxDsadc_initDsnPin(const IfxDsadc_Dsn_In *dsn, IfxPort_InputMode pinMode);






static inline __attribute__ ((always_inline)) void IfxDsadc_initDspPin(const IfxDsadc_Dsp_In *dsp, IfxPort_InputMode pinMode);






static inline __attribute__ ((always_inline)) void IfxDsadc_initItrPin(const IfxDsadc_Itr_In *itr, IfxPort_InputMode itrMode);






static inline __attribute__ ((always_inline)) void IfxDsadc_initSgPin(const IfxDsadc_Sg_In *sg, IfxPort_InputMode pinMode);







static inline __attribute__ ((always_inline)) sint16 IfxDsadc_getAuxResult(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel)
{
    return (sint16)(dsadc->CH[channel].RESA.B.RESULT);
}


static inline __attribute__ ((always_inline)) uint16 IfxDsadc_getMainCombDecimation(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel)
{
    return (uint16)(1U + dsadc->CH[channel].FCFGC.B.CFMDF);
}


static inline __attribute__ ((always_inline)) sint16 IfxDsadc_getMainResult(Ifx_DSADC *dsadc, IfxDsadc_ChannelId channel)
{
    return (sint16)(dsadc->CH[channel].RESM.B.RESULT);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_initCgPwmPin(const IfxDsadc_Cgpwm_Out *cgPwm, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(cgPwm->pin.port, cgPwm->pin.pinIndex, pinMode, cgPwm->select);
    IfxPort_setPinPadDriver(cgPwm->pin.port, cgPwm->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_initCinPin(const IfxDsadc_Cin_In *cIn, IfxPort_InputMode cInMode)
{
    IfxPort_setPinModeInput(cIn->pin.port, cIn->pin.pinIndex, cInMode);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_initCoutPin(const IfxDsadc_Cout_Out *cout, IfxPort_OutputMode pinMode, IfxPort_PadDriver padDriver)
{
    IfxPort_setPinModeOutput(cout->pin.port, cout->pin.pinIndex, pinMode, cout->select);
    IfxPort_setPinPadDriver(cout->pin.port, cout->pin.pinIndex, padDriver);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_initDinPin(const IfxDsadc_Din_In *dIn, IfxPort_InputMode dInMode)
{
    IfxPort_setPinModeInput(dIn->pin.port, dIn->pin.pinIndex, dInMode);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_initDsnPin(const IfxDsadc_Dsn_In *dsn, IfxPort_InputMode pinMode)
{
    if (dsn->pin.port != ((void *)0))
    {
        IfxPort_setPinModeInput(dsn->pin.port, dsn->pin.pinIndex, pinMode);
    }
}


static inline __attribute__ ((always_inline)) void IfxDsadc_initDspPin(const IfxDsadc_Dsp_In *dsp, IfxPort_InputMode pinMode)
{
    if (dsp->pin.port != ((void *)0))
    {
        IfxPort_setPinModeInput(dsp->pin.port, dsp->pin.pinIndex, pinMode);
    }
}


static inline __attribute__ ((always_inline)) void IfxDsadc_initItrPin(const IfxDsadc_Itr_In *itr, IfxPort_InputMode itrMode)
{
    IfxPort_setPinModeInput(itr->pin.port, itr->pin.pinIndex, itrMode);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_initSgPin(const IfxDsadc_Sg_In *sg, IfxPort_InputMode pinMode)
{
    IfxPort_setPinModeInput(sg->pin.port, sg->pin.pinIndex, pinMode);
}


static inline __attribute__ ((always_inline)) boolean IfxDsadc_isModuleEnabled(Ifx_DSADC *dsadc)
{
    return dsadc->CLC.B.DISS == 0;
}


static inline __attribute__ ((always_inline)) void IfxDsadc_setCarrierMode(Ifx_DSADC *dsadc, IfxDsadc_CarrierWaveformMode waveformMode)
{
    dsadc->CGCFG.B.CGMOD = waveformMode;
}


static inline __attribute__ ((always_inline)) void IfxDsadc_setSleepMode(Ifx_DSADC *dsadc, IfxDsadc_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    dsadc->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_startScan(Ifx_DSADC *dsadc, uint32 modulatorMask, uint32 channelMask)
{
    dsadc->GLOBRC.U = dsadc->GLOBRC.U | ((modulatorMask << 16) | (channelMask));
}


static inline __attribute__ ((always_inline)) void IfxDsadc_stopScan(Ifx_DSADC *dsadc, uint32 modulatorMask)
{
    dsadc->GLOBRC.U &= ~(modulatorMask << 16);
}
# 165 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h" 2
# 175 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
typedef struct
{
    boolean bypassed;
    IfxDsadc_AuxCombFilterType combFilterType;
    IfxDsadc_AuxCombFilterShift combFilterShift;
    IfxDsadc_AuxServiceRequest serviceRequest;
    IfxDsadc_AuxEvent eventSelect;
    IfxDsadc_AuxGate eventGate;
    uint8 decimationFactor;
} IfxDsadc_Dsadc_AuxFilterConfig;



typedef struct
{
    const IfxDsadc_Cin_In *cin;
    IfxPort_InputMode cinMode;
    const IfxDsadc_Din_In *din;
    IfxPort_InputMode dinMode;
    const IfxDsadc_Itr_In *itr;
    IfxPort_InputMode itrMode;
    const IfxDsadc_Dsn_In *dsn;
    IfxPort_InputMode dsnMode;
    const IfxDsadc_Dsp_In *dsp;
    IfxPort_InputMode dspMode;
} IfxDsadc_Dsadc_ChannelPins;



typedef struct
{
    boolean bypassed;
    IfxDsadc_MainCombFilterType combFilterType;
    IfxDsadc_MainCombFilterShift combFilterShift;
    IfxDsadc_MainServiceRequest serviceRequest;
    uint16 decimationFactor;
    uint16 startValue;
} IfxDsadc_Dsadc_CombFilterConfig;



typedef struct
{
    IfxDsadc_InputDataSource inputDataSource;
    IfxDsadc_TriggerInput triggerInput;
    IfxDsadc_IntegratorTrigger integrationTrigger;
    IfxDsadc_TimestampTrigger timestampTrigger;
    IfxDsadc_SampleClockSource sampleClockSource;
    IfxDsadc_SampleStrobe sampleStrobe;
} IfxDsadc_Dsadc_DemodulatorConfig;



typedef struct
{
    boolean fir0Enabled;
    boolean fir1Enabled;
    boolean offsetCompensation;
    IfxDsadc_FirDataShift dataShift;
    IfxDsadc_FirInternalShift internalShift;
} IfxDsadc_Dsadc_FirFilterConfig;



typedef struct
{
    IfxDsadc_IntegrationWindowSize windowSize;
    uint16 discardCount;
    uint16 integrationCount;
    uint16 integrationCycles;
} IfxDsadc_Dsadc_IntegratorConfig;



typedef struct
{
    IfxDsadc_InputConfig positiveInput;
    IfxDsadc_InputConfig negativeInput;
    IfxDsadc_InputGain inputGain;
    IfxDsadc_InputPin inputPin;
    float32 modulatorClockFreq;
    IfxDsadc_CommonModeVoltage commonModeVoltage;
} IfxDsadc_Dsadc_ModulatorConfig;



typedef struct
{
    boolean enabled;
    IfxDsadc_RectifierSignSource signSource;
    uint8 signDelay;
    uint8 signPeriod;
} IfxDsadc_Dsadc_RectifierConfig;







typedef struct
{
    Ifx_DSADC *dsadc;
} IfxDsadc_Dsadc;



typedef struct
{
    IfxDsadc_CarrierWaveformMode carrierWaveformMode;
    boolean inverted;
    boolean bitReversed;
    float32 frequency;
    const IfxDsadc_Cgpwm_Out *pinPos;
    const IfxDsadc_Cgpwm_Out *pinNeg;
    IfxPort_OutputMode pinMode;
    IfxPort_PadDriver pinDriver;
} IfxDsadc_Dsadc_CarrierGenConfig;



typedef struct
{
    Ifx_DSADC *module;
    Ifx_DSADC_CH *channel;
    IfxDsadc_ChannelId channelId;
} IfxDsadc_Dsadc_Channel;



typedef struct
{
    Ifx_DSADC *module;
    IfxDsadc_ChannelId channelId;
    IfxDsadc_Dsadc_ModulatorConfig modulator;
    IfxDsadc_Dsadc_DemodulatorConfig demodulator;
    IfxDsadc_Dsadc_CombFilterConfig combFilter;
    IfxDsadc_Dsadc_FirFilterConfig firFilter;
    IfxDsadc_Dsadc_IntegratorConfig integrator;
    IfxDsadc_Dsadc_AuxFilterConfig auxFilter;
    IfxDsadc_Dsadc_RectifierConfig rectifier;
    const IfxDsadc_Dsadc_ChannelPins *channelPins;
} IfxDsadc_Dsadc_ChannelConfig;



typedef struct
{
    Ifx_DSADC *dsadc;
    IfxDsadc_ModulatorClock modulatorClockSelect;
    IfxDsadc_LowPowerSupply lowPowerSupply;
} IfxDsadc_Dsadc_Config;
# 342 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
extern void IfxDsadc_Dsadc_initCarrierGen(IfxDsadc_Dsadc *dsadc, IfxDsadc_Dsadc_CarrierGenConfig *config);
# 352 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
extern void IfxDsadc_Dsadc_initModule(IfxDsadc_Dsadc *dsadc, IfxDsadc_Dsadc_Config *config);
# 362 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
extern void IfxDsadc_Dsadc_initModuleConfig(IfxDsadc_Dsadc_Config *config, Ifx_DSADC *dsadc);
# 381 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
extern void IfxDsadc_Dsadc_initChannel(IfxDsadc_Dsadc_Channel *channel, const IfxDsadc_Dsadc_ChannelConfig *config);
# 391 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
extern void IfxDsadc_Dsadc_initChannelConfig(IfxDsadc_Dsadc_ChannelConfig *config, IfxDsadc_Dsadc *dsadc);
# 411 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
static inline __attribute__ ((always_inline)) void IfxDsadc_Dsadc_startScan(IfxDsadc_Dsadc *dsadc, uint32 modulatorMask, uint32 channelMask);
# 424 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
static inline __attribute__ ((always_inline)) void IfxDsadc_Dsadc_stopScan(IfxDsadc_Dsadc *dsadc, uint32 modulatorMask);
# 439 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
static inline __attribute__ ((always_inline)) sint16 IfxDsadc_Dsadc_getMainResult(IfxDsadc_Dsadc_Channel *channel);
# 449 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
extern sint16 IfxDsadc_Dsadc_getAuxResult(IfxDsadc_Dsadc_Channel *channel);
# 464 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDsadc_Dsadc_getAuxSrc(IfxDsadc_Dsadc_Channel *channel);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDsadc_Dsadc_getMainSrc(IfxDsadc_Dsadc_Channel *channel);
# 482 "./0_Src/4_McHal/Tricore/Dsadc/Dsadc/IfxDsadc_Dsadc.h"
extern void IfxDsadc_Dsadc_initCarrierGenConfig(IfxDsadc_Dsadc_CarrierGenConfig *config);





static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDsadc_Dsadc_getAuxSrc(IfxDsadc_Dsadc_Channel *channel)
{
    return IfxDsadc_getAuxSrc(channel->module, channel->channelId);
}


static inline __attribute__ ((always_inline)) sint16 IfxDsadc_Dsadc_getMainResult(IfxDsadc_Dsadc_Channel *channel)
{
    return IfxDsadc_getMainResult(channel->module, channel->channelId);
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDsadc_Dsadc_getMainSrc(IfxDsadc_Dsadc_Channel *channel)
{
    return IfxDsadc_getMainSrc(channel->module, channel->channelId);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_Dsadc_startScan(IfxDsadc_Dsadc *dsadc, uint32 modulatorMask, uint32 channelMask)
{
    IfxDsadc_startScan(dsadc->dsadc, modulatorMask, channelMask);
}


static inline __attribute__ ((always_inline)) void IfxDsadc_Dsadc_stopScan(IfxDsadc_Dsadc *dsadc, uint32 modulatorMask)
{
    IfxDsadc_stopScan(dsadc->dsadc, modulatorMask);
}
# 9 "0_Src/0_AppSw/Tricore/ADC/DSADCinit.c" 2
# 1 "./0_Src/0_AppSw/Tricore/Main/IntPrio.h" 1
# 10 "0_Src/0_AppSw/Tricore/ADC/DSADCinit.c" 2
# 1 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h" 1
# 431 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
# 1 "./0_Src/4_McHal/Tricore/_Impl/IfxDma_cfg.h" 1
# 83 "./0_Src/4_McHal/Tricore/_Impl/IfxDma_cfg.h"
typedef enum
{
    IfxDma_ChannelId_none = -1,
    IfxDma_ChannelId_0 = 0,
    IfxDma_ChannelId_1,
    IfxDma_ChannelId_2,
    IfxDma_ChannelId_3,
    IfxDma_ChannelId_4,
    IfxDma_ChannelId_5,
    IfxDma_ChannelId_6,
    IfxDma_ChannelId_7,
    IfxDma_ChannelId_8,
    IfxDma_ChannelId_9,
    IfxDma_ChannelId_10,
    IfxDma_ChannelId_11,
    IfxDma_ChannelId_12,
    IfxDma_ChannelId_13,
    IfxDma_ChannelId_14,
    IfxDma_ChannelId_15,
    IfxDma_ChannelId_16,
    IfxDma_ChannelId_17,
    IfxDma_ChannelId_18,
    IfxDma_ChannelId_19,
    IfxDma_ChannelId_20,
    IfxDma_ChannelId_21,
    IfxDma_ChannelId_22,
    IfxDma_ChannelId_23,
    IfxDma_ChannelId_24,
    IfxDma_ChannelId_25,
    IfxDma_ChannelId_26,
    IfxDma_ChannelId_27,
    IfxDma_ChannelId_28,
    IfxDma_ChannelId_29,
    IfxDma_ChannelId_30,
    IfxDma_ChannelId_31,
    IfxDma_ChannelId_32,
    IfxDma_ChannelId_33,
    IfxDma_ChannelId_34,
    IfxDma_ChannelId_35,
    IfxDma_ChannelId_36,
    IfxDma_ChannelId_37,
    IfxDma_ChannelId_38,
    IfxDma_ChannelId_39,
    IfxDma_ChannelId_40,
    IfxDma_ChannelId_41,
    IfxDma_ChannelId_42,
    IfxDma_ChannelId_43,
    IfxDma_ChannelId_44,
    IfxDma_ChannelId_45,
    IfxDma_ChannelId_46,
    IfxDma_ChannelId_47,
    IfxDma_ChannelId_48,
    IfxDma_ChannelId_49,
    IfxDma_ChannelId_50,
    IfxDma_ChannelId_51,
    IfxDma_ChannelId_52,
    IfxDma_ChannelId_53,
    IfxDma_ChannelId_54,
    IfxDma_ChannelId_55,
    IfxDma_ChannelId_56,
    IfxDma_ChannelId_57,
    IfxDma_ChannelId_58,
    IfxDma_ChannelId_59,
    IfxDma_ChannelId_60,
    IfxDma_ChannelId_61,
    IfxDma_ChannelId_62,
    IfxDma_ChannelId_63
} IfxDma_ChannelId;
# 432 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h" 2
# 1 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h" 1
# 50 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_bf.h" 1
# 51 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h" 2

# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_reg.h" 1
# 36 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_reg.h"
# 1 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h" 1
# 45 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h"
typedef struct _Ifx_DMA_ACCEN00_Bits
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
} Ifx_DMA_ACCEN00_Bits;


typedef struct _Ifx_DMA_ACCEN01_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN01_Bits;


typedef struct _Ifx_DMA_ACCEN10_Bits
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
} Ifx_DMA_ACCEN10_Bits;


typedef struct _Ifx_DMA_ACCEN11_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN11_Bits;


typedef struct _Ifx_DMA_ACCEN20_Bits
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
} Ifx_DMA_ACCEN20_Bits;


typedef struct _Ifx_DMA_ACCEN21_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN21_Bits;


typedef struct _Ifx_DMA_ACCEN30_Bits
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
} Ifx_DMA_ACCEN30_Bits;


typedef struct _Ifx_DMA_ACCEN31_Bits
{
    unsigned int reserved_0 : 32;
} Ifx_DMA_ACCEN31_Bits;


typedef struct _Ifx_DMA_BLK_CLRE_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int CSER : 1;
    unsigned int CDER : 1;
    unsigned int reserved_18 : 2;
    unsigned int CSPBER : 1;
    unsigned int CSRIER : 1;
    unsigned int reserved_22 : 2;
    unsigned int CRAMER : 1;
    unsigned int CSLLER : 1;
    unsigned int CDLLER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_CLRE_Bits;


typedef struct _Ifx_DMA_BLK_EER_Bits
{
    unsigned int reserved_0 : 16;
    unsigned int ESER : 1;
    unsigned int EDER : 1;
    unsigned int reserved_18 : 6;
    unsigned int ERER : 1;
    unsigned int reserved_25 : 1;
    unsigned int ELER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_EER_Bits;


typedef struct _Ifx_DMA_BLK_ERRSR_Bits
{
    unsigned int LEC : 7;
    unsigned int reserved_7 : 9;
    unsigned int SER : 1;
    unsigned int DER : 1;
    unsigned int reserved_18 : 2;
    unsigned int SPBER : 1;
    unsigned int SRIER : 1;
    unsigned int reserved_22 : 2;
    unsigned int RAMER : 1;
    unsigned int SLLER : 1;
    unsigned int DLLER : 1;
    unsigned int reserved_27 : 5;
} Ifx_DMA_BLK_ERRSR_Bits;


typedef struct _Ifx_DMA_BLK_ME_ADICR_Bits
{
    unsigned int SMF : 3;
    unsigned int INCS : 1;
    unsigned int DMF : 3;
    unsigned int INCD : 1;
    unsigned int CBLS : 4;
    unsigned int CBLD : 4;
    unsigned int SHCT : 4;
    unsigned int SCBE : 1;
    unsigned int DCBE : 1;
    unsigned int STAMP : 1;
    unsigned int ETRL : 1;
    unsigned int WRPSE : 1;
    unsigned int WRPDE : 1;
    unsigned int INTCT : 2;
    unsigned int IRDV : 4;
} Ifx_DMA_BLK_ME_ADICR_Bits;


typedef struct _Ifx_DMA_BLK_ME_CHCR_Bits
{
    unsigned int TREL : 14;
    unsigned int reserved_14 : 2;
    unsigned int BLKM : 3;
    unsigned int RROAT : 1;
    unsigned int CHMODE : 1;
    unsigned int CHDW : 3;
    unsigned int PATSEL : 3;
    unsigned int reserved_27 : 1;
    unsigned int PRSEL : 1;
    unsigned int reserved_29 : 1;
    unsigned int DMAPRIO : 2;
} Ifx_DMA_BLK_ME_CHCR_Bits;


typedef struct _Ifx_DMA_BLK_ME_CHSR_Bits
{
    unsigned int TCOUNT : 14;
    unsigned int reserved_14 : 1;
    unsigned int LXO : 1;
    unsigned int WRPS : 1;
    unsigned int WRPD : 1;
    unsigned int ICH : 1;
    unsigned int IPM : 1;
    unsigned int reserved_20 : 2;
    unsigned int BUFFER : 1;
    unsigned int FROZEN : 1;
    unsigned int reserved_24 : 8;
} Ifx_DMA_BLK_ME_CHSR_Bits;


typedef struct _Ifx_DMA_BLK_ME_DADR_Bits
{
    unsigned int DADR : 32;
} Ifx_DMA_BLK_ME_DADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_R0_Bits
{
    unsigned int RD00 : 8;
    unsigned int RD01 : 8;
    unsigned int RD02 : 8;
    unsigned int RD03 : 8;
} Ifx_DMA_BLK_ME_R0_Bits;


typedef struct _Ifx_DMA_BLK_ME_R1_Bits
{
    unsigned int RD10 : 8;
    unsigned int RD11 : 8;
    unsigned int RD12 : 8;
    unsigned int RD13 : 8;
} Ifx_DMA_BLK_ME_R1_Bits;


typedef struct _Ifx_DMA_BLK_ME_R2_Bits
{
    unsigned int RD20 : 8;
    unsigned int RD21 : 8;
    unsigned int RD22 : 8;
    unsigned int RD23 : 8;
} Ifx_DMA_BLK_ME_R2_Bits;


typedef struct _Ifx_DMA_BLK_ME_R3_Bits
{
    unsigned int RD30 : 8;
    unsigned int RD31 : 8;
    unsigned int RD32 : 8;
    unsigned int RD33 : 8;
} Ifx_DMA_BLK_ME_R3_Bits;


typedef struct _Ifx_DMA_BLK_ME_R4_Bits
{
    unsigned int RD40 : 8;
    unsigned int RD41 : 8;
    unsigned int RD42 : 8;
    unsigned int RD43 : 8;
} Ifx_DMA_BLK_ME_R4_Bits;


typedef struct _Ifx_DMA_BLK_ME_R5_Bits
{
    unsigned int RD50 : 8;
    unsigned int RD51 : 8;
    unsigned int RD52 : 8;
    unsigned int RD53 : 8;
} Ifx_DMA_BLK_ME_R5_Bits;


typedef struct _Ifx_DMA_BLK_ME_R6_Bits
{
    unsigned int RD60 : 8;
    unsigned int RD61 : 8;
    unsigned int RD62 : 8;
    unsigned int RD63 : 8;
} Ifx_DMA_BLK_ME_R6_Bits;


typedef struct _Ifx_DMA_BLK_ME_R7_Bits
{
    unsigned int RD70 : 8;
    unsigned int RD71 : 8;
    unsigned int RD72 : 8;
    unsigned int RD73 : 8;
} Ifx_DMA_BLK_ME_R7_Bits;


typedef struct _Ifx_DMA_BLK_ME_RDCRC_Bits
{
    unsigned int RDCRC : 32;
} Ifx_DMA_BLK_ME_RDCRC_Bits;


typedef struct _Ifx_DMA_BLK_ME_SADR_Bits
{
    unsigned int SADR : 32;
} Ifx_DMA_BLK_ME_SADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_SDCRC_Bits
{
    unsigned int SDCRC : 32;
} Ifx_DMA_BLK_ME_SDCRC_Bits;


typedef struct _Ifx_DMA_BLK_ME_SHADR_Bits
{
    unsigned int SHADR : 32;
} Ifx_DMA_BLK_ME_SHADR_Bits;


typedef struct _Ifx_DMA_BLK_ME_SR_Bits
{
    unsigned int RS : 1;
    unsigned int reserved_1 : 3;
    unsigned int WS : 1;
    unsigned int reserved_5 : 11;
    unsigned int CH : 7;
    unsigned int reserved_23 : 9;
} Ifx_DMA_BLK_ME_SR_Bits;


typedef struct _Ifx_DMA_CH_ADICR_Bits
{
    unsigned int SMF : 3;
    unsigned int INCS : 1;
    unsigned int DMF : 3;
    unsigned int INCD : 1;
    unsigned int CBLS : 4;
    unsigned int CBLD : 4;
    unsigned int SHCT : 4;
    unsigned int SCBE : 1;
    unsigned int DCBE : 1;
    unsigned int STAMP : 1;
    unsigned int ETRL : 1;
    unsigned int WRPSE : 1;
    unsigned int WRPDE : 1;
    unsigned int INTCT : 2;
    unsigned int IRDV : 4;
} Ifx_DMA_CH_ADICR_Bits;


typedef struct _Ifx_DMA_CH_CHCFGR_Bits
{
    unsigned int TREL : 14;
    unsigned int reserved_14 : 2;
    unsigned int BLKM : 3;
    unsigned int RROAT : 1;
    unsigned int CHMODE : 1;
    unsigned int CHDW : 3;
    unsigned int PATSEL : 3;
    unsigned int reserved_27 : 1;
    unsigned int PRSEL : 1;
    unsigned int reserved_29 : 1;
    unsigned int DMAPRIO : 2;
} Ifx_DMA_CH_CHCFGR_Bits;


typedef struct _Ifx_DMA_CH_CHCSR_Bits
{
    unsigned int TCOUNT : 14;
    unsigned int reserved_14 : 1;
    unsigned int LXO : 1;
    unsigned int WRPS : 1;
    unsigned int WRPD : 1;
    unsigned int ICH : 1;
    unsigned int IPM : 1;
    unsigned int reserved_20 : 2;
    unsigned int BUFFER : 1;
    unsigned int FROZEN : 1;
    unsigned int SWB : 1;
    unsigned int CWRP : 1;
    unsigned int CICH : 1;
    unsigned int SIT : 1;
    unsigned int reserved_28 : 3;
    unsigned int SCH : 1;
} Ifx_DMA_CH_CHCSR_Bits;


typedef struct _Ifx_DMA_CH_DADR_Bits
{
    unsigned int DADR : 32;
} Ifx_DMA_CH_DADR_Bits;


typedef struct _Ifx_DMA_CH_RDCRCR_Bits
{
    unsigned int RDCRC : 32;
} Ifx_DMA_CH_RDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SADR_Bits
{
    unsigned int SADR : 32;
} Ifx_DMA_CH_SADR_Bits;


typedef struct _Ifx_DMA_CH_SDCRCR_Bits
{
    unsigned int SDCRC : 32;
} Ifx_DMA_CH_SDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SHADR_Bits
{
    unsigned int SHADR : 32;
} Ifx_DMA_CH_SHADR_Bits;


typedef struct _Ifx_DMA_CLC_Bits
{
    unsigned int DISR : 1;
    unsigned int DISS : 1;
    unsigned int reserved_2 : 1;
    unsigned int EDIS : 1;
    unsigned int reserved_4 : 28;
} Ifx_DMA_CLC_Bits;


typedef struct _Ifx_DMA_ERRINTR_Bits
{
    unsigned int SIT : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_ERRINTR_Bits;


typedef struct _Ifx_DMA_HRR_Bits
{
    unsigned int HRP : 2;
    unsigned int reserved_2 : 30;
} Ifx_DMA_HRR_Bits;


typedef struct _Ifx_DMA_ID_Bits
{
    unsigned int MOD_REV : 8;
    unsigned int MOD_TYPE : 8;
    unsigned int MODNUMBER : 16;
} Ifx_DMA_ID_Bits;


typedef struct _Ifx_DMA_MEMCON_Bits
{
    unsigned int reserved_0 : 2;
    unsigned int INTERR : 1;
    unsigned int reserved_3 : 1;
    unsigned int RMWERR : 1;
    unsigned int reserved_5 : 1;
    unsigned int DATAERR : 1;
    unsigned int reserved_7 : 1;
    unsigned int PMIC : 1;
    unsigned int ERRDIS : 1;
    unsigned int reserved_10 : 22;
} Ifx_DMA_MEMCON_Bits;


typedef struct _Ifx_DMA_MODE_Bits
{
    unsigned int MODE : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_MODE_Bits;


typedef struct _Ifx_DMA_OTSS_Bits
{
    unsigned int TGS : 4;
    unsigned int reserved_4 : 3;
    unsigned int BS : 1;
    unsigned int reserved_8 : 24;
} Ifx_DMA_OTSS_Bits;


typedef struct _Ifx_DMA_PRR0_Bits
{
    unsigned int PAT00 : 8;
    unsigned int PAT01 : 8;
    unsigned int PAT02 : 8;
    unsigned int PAT03 : 8;
} Ifx_DMA_PRR0_Bits;


typedef struct _Ifx_DMA_PRR1_Bits
{
    unsigned int PAT10 : 8;
    unsigned int PAT11 : 8;
    unsigned int PAT12 : 8;
    unsigned int PAT13 : 8;
} Ifx_DMA_PRR1_Bits;


typedef struct _Ifx_DMA_SUSACR_Bits
{
    unsigned int SUSAC : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_SUSACR_Bits;


typedef struct _Ifx_DMA_SUSENR_Bits
{
    unsigned int SUSEN : 1;
    unsigned int reserved_1 : 31;
} Ifx_DMA_SUSENR_Bits;


typedef struct _Ifx_DMA_TIME_Bits
{
    unsigned int COUNT : 32;
} Ifx_DMA_TIME_Bits;


typedef struct _Ifx_DMA_TSR_Bits
{
    unsigned int RST : 1;
    unsigned int HTRE : 1;
    unsigned int TRL : 1;
    unsigned int CH : 1;
    unsigned int reserved_4 : 4;
    unsigned int HLTREQ : 1;
    unsigned int HLTACK : 1;
    unsigned int reserved_10 : 6;
    unsigned int ECH : 1;
    unsigned int DCH : 1;
    unsigned int CTL : 1;
    unsigned int reserved_19 : 5;
    unsigned int HLTCLR : 1;
    unsigned int reserved_25 : 7;
} Ifx_DMA_TSR_Bits;







typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN00_Bits B;
} Ifx_DMA_ACCEN00;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN01_Bits B;
} Ifx_DMA_ACCEN01;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN10_Bits B;
} Ifx_DMA_ACCEN10;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN11_Bits B;
} Ifx_DMA_ACCEN11;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN20_Bits B;
} Ifx_DMA_ACCEN20;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN21_Bits B;
} Ifx_DMA_ACCEN21;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN30_Bits B;
} Ifx_DMA_ACCEN30;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ACCEN31_Bits B;
} Ifx_DMA_ACCEN31;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_CLRE_Bits B;
} Ifx_DMA_BLK_CLRE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_EER_Bits B;
} Ifx_DMA_BLK_EER;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ERRSR_Bits B;
} Ifx_DMA_BLK_ERRSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_ADICR_Bits B;
} Ifx_DMA_BLK_ME_ADICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_CHCR_Bits B;
} Ifx_DMA_BLK_ME_CHCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_CHSR_Bits B;
} Ifx_DMA_BLK_ME_CHSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_DADR_Bits B;
} Ifx_DMA_BLK_ME_DADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R0_Bits B;
} Ifx_DMA_BLK_ME_R0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R1_Bits B;
} Ifx_DMA_BLK_ME_R1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R2_Bits B;
} Ifx_DMA_BLK_ME_R2;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R3_Bits B;
} Ifx_DMA_BLK_ME_R3;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R4_Bits B;
} Ifx_DMA_BLK_ME_R4;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R5_Bits B;
} Ifx_DMA_BLK_ME_R5;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R6_Bits B;
} Ifx_DMA_BLK_ME_R6;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_R7_Bits B;
} Ifx_DMA_BLK_ME_R7;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_RDCRC_Bits B;
} Ifx_DMA_BLK_ME_RDCRC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_SADR_Bits B;
} Ifx_DMA_BLK_ME_SADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_SDCRC_Bits B;
} Ifx_DMA_BLK_ME_SDCRC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_SHADR_Bits B;
} Ifx_DMA_BLK_ME_SHADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_BLK_ME_SR_Bits B;
} Ifx_DMA_BLK_ME_SR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_ADICR_Bits B;
} Ifx_DMA_CH_ADICR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_CHCFGR_Bits B;
} Ifx_DMA_CH_CHCFGR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_CHCSR_Bits B;
} Ifx_DMA_CH_CHCSR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_DADR_Bits B;
} Ifx_DMA_CH_DADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_RDCRCR_Bits B;
} Ifx_DMA_CH_RDCRCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_SADR_Bits B;
} Ifx_DMA_CH_SADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_SDCRCR_Bits B;
} Ifx_DMA_CH_SDCRCR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CH_SHADR_Bits B;
} Ifx_DMA_CH_SHADR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_CLC_Bits B;
} Ifx_DMA_CLC;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ERRINTR_Bits B;
} Ifx_DMA_ERRINTR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_HRR_Bits B;
} Ifx_DMA_HRR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_ID_Bits B;
} Ifx_DMA_ID;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_MEMCON_Bits B;
} Ifx_DMA_MEMCON;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_MODE_Bits B;
} Ifx_DMA_MODE;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_OTSS_Bits B;
} Ifx_DMA_OTSS;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_PRR0_Bits B;
} Ifx_DMA_PRR0;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_PRR1_Bits B;
} Ifx_DMA_PRR1;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_SUSACR_Bits B;
} Ifx_DMA_SUSACR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_SUSENR_Bits B;
} Ifx_DMA_SUSENR;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_TIME_Bits B;
} Ifx_DMA_TIME;


typedef union
{

    unsigned int U;

    signed int I;

    Ifx_DMA_TSR_Bits B;
} Ifx_DMA_TSR;
# 1187 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_BLK_ME
{
    Ifx_DMA_BLK_ME_SR SR;
    unsigned char reserved_4[12];
    Ifx_DMA_BLK_ME_R0 R0;
    Ifx_DMA_BLK_ME_R1 R1;
    Ifx_DMA_BLK_ME_R2 R2;
    Ifx_DMA_BLK_ME_R3 R3;
    Ifx_DMA_BLK_ME_R4 R4;
    Ifx_DMA_BLK_ME_R5 R5;
    Ifx_DMA_BLK_ME_R6 R6;
    Ifx_DMA_BLK_ME_R7 R7;
    unsigned char reserved_30[32];
    Ifx_DMA_BLK_ME_RDCRC RDCRC;
    Ifx_DMA_BLK_ME_SDCRC SDCRC;
    Ifx_DMA_BLK_ME_SADR SADR;
    Ifx_DMA_BLK_ME_DADR DADR;
    Ifx_DMA_BLK_ME_ADICR ADICR;
    Ifx_DMA_BLK_ME_CHCR CHCR;
    Ifx_DMA_BLK_ME_SHADR SHADR;
    Ifx_DMA_BLK_ME_CHSR CHSR;
} Ifx_DMA_BLK_ME;
# 1221 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_BLK
{
    Ifx_DMA_BLK_EER EER;
    Ifx_DMA_BLK_ERRSR ERRSR;
    Ifx_DMA_BLK_CLRE CLRE;
    unsigned char reserved_C[4];
    Ifx_DMA_BLK_ME ME;
} Ifx_DMA_BLK;


typedef volatile struct _Ifx_DMA_CH
{
    Ifx_DMA_CH_RDCRCR RDCRCR;
    Ifx_DMA_CH_SDCRCR SDCRCR;
    Ifx_DMA_CH_SADR SADR;
    Ifx_DMA_CH_DADR DADR;
    Ifx_DMA_CH_ADICR ADICR;
    Ifx_DMA_CH_CHCFGR CHCFGR;
    Ifx_DMA_CH_SHADR SHADR;
    Ifx_DMA_CH_CHCSR CHCSR;
} Ifx_DMA_CH;
# 1254 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA
{
    Ifx_DMA_CLC CLC;
    unsigned char reserved_4[4];
    Ifx_DMA_ID ID;
    unsigned char reserved_C[20];
    Ifx_DMA_MEMCON MEMCON;
    unsigned char reserved_24[28];
    Ifx_DMA_ACCEN00 ACCEN00;
    Ifx_DMA_ACCEN01 ACCEN01;
    Ifx_DMA_ACCEN10 ACCEN10;
    Ifx_DMA_ACCEN11 ACCEN11;
    Ifx_DMA_ACCEN20 ACCEN20;
    Ifx_DMA_ACCEN21 ACCEN21;
    Ifx_DMA_ACCEN30 ACCEN30;
    Ifx_DMA_ACCEN31 ACCEN31;
    unsigned char reserved_60[192];
    Ifx_DMA_BLK BLK0;
    unsigned char reserved_1A0[3968];
    Ifx_DMA_BLK BLK1;
    unsigned char reserved_11A0[96];
    Ifx_DMA_OTSS OTSS;
    Ifx_DMA_ERRINTR ERRINTR;
    Ifx_DMA_PRR0 PRR0;
    Ifx_DMA_PRR1 PRR1;
    Ifx_DMA_TIME TIME;
    unsigned char reserved_1214[236];
    Ifx_DMA_MODE MODE[4];
    unsigned char reserved_1310[1264];
    Ifx_DMA_HRR HRR[64];
    unsigned char reserved_1900[256];
    Ifx_DMA_SUSENR SUSENR[64];
    unsigned char reserved_1B00[256];
    Ifx_DMA_SUSACR SUSACR[64];
    unsigned char reserved_1D00[256];
    Ifx_DMA_TSR TSR[64];
    unsigned char reserved_1F00[256];
    Ifx_DMA_CH CH[64];
    unsigned char reserved_2800[6144];
} Ifx_DMA;
# 37 "./0_Src/4_McHal/Tricore/_Reg/IfxDma_reg.h" 2
# 53 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h" 2
# 66 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
typedef enum
{
    IfxDma_BusMasterMode_user = 0,
    IfxDma_BusMasterMode_supervisor = 1
} IfxDma_BusMasterMode;



typedef enum
{
    IfxDma_ChannelBusPriority_low = 0,
    IfxDma_ChannelBusPriority_medium = 1,
    IfxDma_ChannelBusPriority_high = 2
} IfxDma_ChannelBusPriority;




typedef enum
{
    IfxDma_ChannelIncrementCircular_none = 0,
    IfxDma_ChannelIncrementCircular_2 = 1,
    IfxDma_ChannelIncrementCircular_4 = 2,
    IfxDma_ChannelIncrementCircular_8 = 3,
    IfxDma_ChannelIncrementCircular_16 = 4,
    IfxDma_ChannelIncrementCircular_32 = 5,
    IfxDma_ChannelIncrementCircular_64 = 6,
    IfxDma_ChannelIncrementCircular_128 = 7,
    IfxDma_ChannelIncrementCircular_256 = 8,
    IfxDma_ChannelIncrementCircular_512 = 9,
    IfxDma_ChannelIncrementCircular_1024 = 10,
    IfxDma_ChannelIncrementCircular_2048 = 11,
    IfxDma_ChannelIncrementCircular_4096 = 12,
    IfxDma_ChannelIncrementCircular_8192 = 13,
    IfxDma_ChannelIncrementCircular_16384 = 14,
    IfxDma_ChannelIncrementCircular_32768 = 15
} IfxDma_ChannelIncrementCircular;




typedef enum
{
    IfxDma_ChannelIncrementDirection_negative = 0,
    IfxDma_ChannelIncrementDirection_positive = 1
} IfxDma_ChannelIncrementDirection;




typedef enum
{
    IfxDma_ChannelIncrementStep_1 = 0,
    IfxDma_ChannelIncrementStep_2 = 1,
    IfxDma_ChannelIncrementStep_4 = 2,
    IfxDma_ChannelIncrementStep_8 = 3,
    IfxDma_ChannelIncrementStep_16 = 4,
    IfxDma_ChannelIncrementStep_32 = 5,
    IfxDma_ChannelIncrementStep_64 = 6,
    IfxDma_ChannelIncrementStep_128 = 7
} IfxDma_ChannelIncrementStep;




typedef enum
{
    IfxDma_ChannelInterruptControl_thresholdLimitMatch = 0,
    IfxDma_ChannelInterruptControl_transferCountDecremented = 1
} IfxDma_ChannelInterruptControl;




typedef enum
{
    IfxDma_ChannelMove_1 = 0,
    IfxDma_ChannelMove_2 = 1,
    IfxDma_ChannelMove_4 = 2,
    IfxDma_ChannelMove_8 = 3,
    IfxDma_ChannelMove_16 = 4,
    IfxDma_ChannelMove_3 = 5,
    IfxDma_ChannelMove_5 = 6,
    IfxDma_ChannelMove_9 = 7
} IfxDma_ChannelMove;




typedef enum
{
    IfxDma_ChannelMoveSize_8bit = 0,
    IfxDma_ChannelMoveSize_16bit = 1,
    IfxDma_ChannelMoveSize_32bit = 2,
    IfxDma_ChannelMoveSize_64bit = 3,
    IfxDma_ChannelMoveSize_128bit = 4,
    IfxDma_ChannelMoveSize_256bit = 5
} IfxDma_ChannelMoveSize;




typedef enum
{
    IfxDma_ChannelOperationMode_single = 0,
    IfxDma_ChannelOperationMode_continuous = 1
} IfxDma_ChannelOperationMode;




typedef enum
{
    IfxDma_ChannelPattern_0_disable = 0,
    IfxDma_ChannelPattern_0_mode1 = 1,
    IfxDma_ChannelPattern_0_mode2 = 2,
    IfxDma_ChannelPattern_0_mode3 = 3,
    IfxDma_ChannelPattern_1_disable = 4,
    IfxDma_ChannelPattern_1_mode1 = 5,
    IfxDma_ChannelPattern_1_mode2 = 6,
    IfxDma_ChannelPattern_1_mode3 = 7
} IfxDma_ChannelPattern;



typedef enum
{
    IfxDma_ChannelPriority_low = 0,
    IfxDma_ChannelPriority_medium = 1,
    IfxDma_ChannelPriority_high = 2
} IfxDma_ChannelPriority;




typedef enum
{
    IfxDma_ChannelRequestMode_oneTransferPerRequest = 0,
    IfxDma_ChannelRequestMode_completeTransactionPerRequest = 1
} IfxDma_ChannelRequestMode;




typedef enum
{
    IfxDma_ChannelRequestSource_peripheral = 0,
    IfxDma_ChannelRequestSource_daisyChain = 1
} IfxDma_ChannelRequestSource;




typedef enum
{
    IfxDma_ChannelShadow_none = 0,
    IfxDma_ChannelShadow_src = 1,
    IfxDma_ChannelShadow_dst = 2,
    IfxDma_ChannelShadow_srcDirectWrite = 5,
    IfxDma_ChannelShadow_dstDirectWrite = 6,
    IfxDma_ChannelShadow_doubleSourceBufferingSwSwitch = 8,
    IfxDma_ChannelShadow_doubleSourceBufferingHwSwSwitch = 9,
    IfxDma_ChannelShadow_doubleDestinationBufferingSwSwitch = 10,
    IfxDma_ChannelShadow_doubleDestinationBufferingHwSwSwitch = 11,
    IfxDma_ChannelShadow_linkedList = 12,
    IfxDma_ChannelShadow_accumulatedLinkedList = 13,
    IfxDma_ChannelShadow_safeLinkedList = 14,
    IfxDma_ChannelShadow_conditionalLinkedList = 15
} IfxDma_ChannelShadow;

typedef enum
{
    IfxDma_HardwareResourcePartition_0 = 0,
    IfxDma_HardwareResourcePartition_1,
    IfxDma_HardwareResourcePartition_2,
    IfxDma_HardwareResourcePartition_3
} IfxDma_HardwareResourcePartition;



typedef enum
{
    IfxDma_MoveEngine_0 = 0,
    IfxDma_MoveEngine_1 = 1
} IfxDma_MoveEngine;




typedef enum
{
    IfxDma_SleepMode_enable = 0,
    IfxDma_SleepMode_disable = 1
} IfxDma_SleepMode;
# 287 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelReset(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 300 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_resetChannel(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 322 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 332 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 345 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 386 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 399 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 415 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId);





static inline __attribute__ ((always_inline)) IfxDma_ChannelIncrementCircular IfxDma_getCircularRangeCode(uint16 range);
# 432 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelTransactionEnabled(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 448 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelTransactionPending(Ifx_DMA *dma, IfxDma_ChannelId channelId);






static inline __attribute__ ((always_inline)) void IfxDma_setSleepMode(Ifx_DMA *dma, IfxDma_SleepMode mode);
# 465 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_startChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 495 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine, uint32 mask);
# 505 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 519 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 529 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 543 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 585 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine);
# 607 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 619 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 640 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 651 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) uint32 IfxDma_getTimestamp(Ifx_DMA *dma);
# 662 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelBlockMode(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMove blockMode);
# 673 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelContinuousMode(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 684 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, void *address);
# 697 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size);
# 708 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelMoveSize(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMoveSize moveSize);
# 723 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelShadow(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelShadow shadow);
# 734 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleMode(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 745 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 756 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransfer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 781 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, const void *address);
# 799 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size);
# 837 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint32 transferCount);
# 850 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowDisable(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 863 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowEnable(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 885 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 898 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 911 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 934 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getDoubleBufferRead(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 950 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getDoubleBufferSelection(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 962 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_keepDoubleBufferActive(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 975 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_switchDoubleBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 994 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_clearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1006 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_disableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1018 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_enableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1036 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1053 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelPatternDetectionInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1070 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelWrapDestinationBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1087 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelWrapSourceBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1098 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1114 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelPatternDetectionOldValue(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1126 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_getSrcPointer(Ifx_DMA *dma, IfxDma_ChannelId channelId);
# 1139 "./0_Src/4_McHal/Tricore/Dma/Std/IfxDma.h"
static inline __attribute__ ((always_inline)) void IfxDma_setChannelInterruptServiceRequest(Ifx_DMA *dma, IfxDma_ChannelId channelId);







static inline __attribute__ ((always_inline)) void IfxDma_clearChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.HLTCLR = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.CICH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.CTL = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_clearErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine, uint32 mask)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.CLRE.U = mask;
    }
    else
    {
        dma->BLK0.CLRE.U = mask;
    }
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.INTCT &= ~(1 << 1);
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.DCH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_disableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.ETRL = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.EER.B.EDER = 0;
    }
    else
    {
        dma->BLK0.EER.B.EDER = 0;
    }
}


static inline __attribute__ ((always_inline)) void IfxDma_disableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.EER.B.ESER = 0;
    }
    else
    {
        dma->BLK0.EER.B.ESER = 0;
    }
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.INTCT |= (1 << 1);
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.ECH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableChannelTransactionLostError(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.ETRL = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineDestinationError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.EER.B.EDER = 1;
    }
    else
    {
        dma->BLK0.EER.B.EDER = 1;
    }
}


static inline __attribute__ ((always_inline)) void IfxDma_enableMoveEngineSourceError(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        dma->BLK1.EER.B.ESER = 1;
    }
    else
    {
        dma->BLK0.EER.B.ESER = 1;
    }
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.ICH != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CICH = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelPatternDetectionInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.IPM != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CICH = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelWrapDestinationBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.WRPD != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CWRP = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getAndClearChannelWrapSourceBufferInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.WRPS != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.CWRP = 1;
    }

    return result;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].DADR.U;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.HLTACK != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelInterrupt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.ICH;

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelPatternDetectionOldValue(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.LXO != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].SADR.U;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getChannelTransactionRequestLost(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.TRL != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.TCOUNT;
}


static inline __attribute__ ((always_inline)) IfxDma_ChannelIncrementCircular IfxDma_getCircularRangeCode(uint16 range)
{
    return (IfxDma_ChannelIncrementCircular)(31 - __builtin_clz((uint32)range));
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getDoubleBufferRead(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    boolean result;

    result = dma->CH[channelId].CHCSR.B.FROZEN != 0;

    if (result == 1)
    {
        dma->CH[channelId].CHCSR.B.FROZEN = 0;
    }

    return result;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_getDoubleBufferSelection(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->CH[channelId].CHCSR.B.BUFFER != 0;
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getErrorFlags(Ifx_DMA *dma, IfxDma_MoveEngine moveEngine)
{
    if (moveEngine == IfxDma_MoveEngine_1)
    {
        return dma->BLK1.ERRSR.U;
    }
    else
    {
        return dma->BLK0.ERRSR.U;
    }
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_getSrcPointer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{

    return &((*(Ifx_SRC *)0xF0038000u)).DMA.DMA[0].CH[channelId];
}


static inline __attribute__ ((always_inline)) uint32 IfxDma_getTimestamp(Ifx_DMA *dma)
{
    return dma->TIME.U;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelReset(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.RST != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelTransactionEnabled(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.HTRE != 0;
}


static inline __attribute__ ((always_inline)) boolean IfxDma_isChannelTransactionPending(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    return dma->TSR[channelId].B.CH != 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_keepDoubleBufferActive(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.U = 0U << (23);
}


static inline __attribute__ ((always_inline)) void IfxDma_resetChannel(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.RST = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelBlockMode(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMove blockMode)
{
    dma->CH[channelId].CHCFGR.B.BLKM = blockMode;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelContinuousMode(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.CHMODE = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, void *address)
{
    dma->CH[channelId].DADR.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelDestinationIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size)
{
    Ifx_DMA_CH_ADICR adicr;
    adicr.U = dma->CH[channelId].ADICR.U;
    adicr.B.DMF = incStep;
    adicr.B.INCD = direction;
    adicr.B.CBLD = size;
    dma->CH[channelId].ADICR.U = adicr.U;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelHalt(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->TSR[channelId].B.HLTREQ = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelInterruptServiceRequest(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SIT = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelMoveSize(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelMoveSize moveSize)
{
    dma->CH[channelId].CHCFGR.B.CHDW = moveSize;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelShadow(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelShadow shadow)
{
    dma->CH[channelId].ADICR.B.SHCT = shadow;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleMode(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.CHMODE = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.RROAT = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSingleTransfer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCFGR.B.RROAT = 0;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceAddress(Ifx_DMA *dma, IfxDma_ChannelId channelId, const void *address)
{
    dma->CH[channelId].SADR.U = (uint32)address;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelSourceIncrementStep(Ifx_DMA *dma, IfxDma_ChannelId channelId, IfxDma_ChannelIncrementStep incStep, IfxDma_ChannelIncrementDirection direction, IfxDma_ChannelIncrementCircular size)
{
    Ifx_DMA_CH_ADICR adicr;
    adicr.U = dma->CH[channelId].ADICR.U;
    adicr.B.SMF = incStep;
    adicr.B.INCS = direction;
    adicr.B.CBLS = size;
    dma->CH[channelId].ADICR.U = adicr.U;
}


static inline __attribute__ ((always_inline)) void IfxDma_setChannelTransferCount(Ifx_DMA *dma, IfxDma_ChannelId channelId, uint32 transferCount)
{
    dma->CH[channelId].CHCFGR.B.TREL = transferCount;
}


static inline __attribute__ ((always_inline)) void IfxDma_setSleepMode(Ifx_DMA *dma, IfxDma_SleepMode mode)
{
    uint16 passwd = IfxScuWdt_getCpuWatchdogPassword();
    IfxScuWdt_clearCpuEndinit(passwd);
    dma->CLC.B.EDIS = mode;
    IfxScuWdt_setCpuEndinit(passwd);
}


static inline __attribute__ ((always_inline)) void IfxDma_startChannelTransaction(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SCH = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_switchDoubleBuffer(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].CHCSR.B.SWB = 1;
}


static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowDisable(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.SHCT &= ~(3 << 2);
}


static inline __attribute__ ((always_inline)) void IfxDma_writeChannelShadowEnable(Ifx_DMA *dma, IfxDma_ChannelId channelId)
{
    dma->CH[channelId].ADICR.B.SHCT |= (1 << 2);
    dma->CH[channelId].ADICR.B.SHCT &= ~(1 << 3);
}
# 433 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h" 2
# 443 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
typedef struct
{
    Ifx_DMA *dma;
} IfxDma_Dma;







typedef struct
{
    Ifx_DMA *dma;
    IfxDma_ChannelId channelId;
    Ifx_DMA_CH *channel;
} IfxDma_Dma_Channel;



typedef struct
{
    IfxDma_Dma *module;
    IfxDma_ChannelId channelId;
    uint32 sourceAddress;
    uint32 destinationAddress;
    uint32 shadowAddress;
    uint32 readDataCrc;
    uint32 sourceDestinationAddressCrc;
    uint16 transferCount;
    IfxDma_ChannelMove blockMode;
    IfxDma_ChannelRequestMode requestMode;
    IfxDma_ChannelOperationMode operationMode;
    IfxDma_ChannelMoveSize moveSize;
    IfxDma_ChannelPattern pattern;
    IfxDma_ChannelRequestSource requestSource;
    IfxDma_ChannelBusPriority busPriority;
    boolean hardwareRequestEnabled;
    IfxDma_ChannelIncrementStep sourceAddressIncrementStep;
    IfxDma_ChannelIncrementDirection sourceAddressIncrementDirection;
    IfxDma_ChannelIncrementCircular sourceAddressCircularRange;
    IfxDma_ChannelIncrementStep destinationAddressIncrementStep;
    IfxDma_ChannelIncrementDirection destinationAddressIncrementDirection;
    IfxDma_ChannelIncrementCircular destinationAddressCircularRange;
    IfxDma_ChannelShadow shadowControl;
    boolean sourceCircularBufferEnabled;
    boolean destinationCircularBufferEnabled;
    boolean timestampEnabled;
    boolean wrapSourceInterruptEnabled;
    boolean wrapDestinationInterruptEnabled;
    boolean channelInterruptEnabled;
    IfxDma_ChannelInterruptControl channelInterruptControl;
    uint8 interruptRaiseThreshold;
    boolean transactionRequestLostInterruptEnabled;
    Ifx_Priority channelInterruptPriority;
    IfxSrc_Tos channelInterruptTypeOfService;
} IfxDma_Dma_ChannelConfig;



typedef struct
{
    Ifx_DMA *dma;
} IfxDma_Dma_Config;
# 529 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_createModuleHandle(IfxDma_Dma *dmaHandle, Ifx_DMA *dma);





extern void IfxDma_Dma_deInitModule(IfxDma_Dma *dma);
# 545 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initModule(IfxDma_Dma *dma, IfxDma_Dma_Config *config);
# 555 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initModuleConfig(IfxDma_Dma_Config *config, Ifx_DMA *dma);
# 574 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initChannel(IfxDma_Dma_Channel *channel, IfxDma_Dma_ChannelConfig *config);
# 584 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initChannelConfig(IfxDma_Dma_ChannelConfig *config, IfxDma_Dma *dma);
# 599 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_Dma_getSrcPointer(IfxDma_Dma_Channel *channel);
# 613 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
extern void IfxDma_Dma_initLinkedListEntry(void *ptrToAddress, IfxDma_Dma_ChannelConfig *config);
# 628 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_clearChannelInterrupt(IfxDma_Dma_Channel *channel);







static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_getAndClearChannelInterrupt(IfxDma_Dma_Channel *channel);






static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_getChannelInterrupt(IfxDma_Dma_Channel *channel);
# 652 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_isChannelTransactionPending(IfxDma_Dma_Channel *channel);
# 662 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelDestinationAddress(IfxDma_Dma_Channel *channel, uint32 address);
# 672 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelSourceAddress(IfxDma_Dma_Channel *channel, uint32 address);
# 682 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelTransferCount(IfxDma_Dma_Channel *channel, uint32 transferCount);
# 691 "./0_Src/4_McHal/Tricore/Dma/Dma/IfxDma_Dma.h"
static inline __attribute__ ((always_inline)) void IfxDma_Dma_startChannelTransaction(IfxDma_Dma_Channel *channel);







static inline __attribute__ ((always_inline)) void IfxDma_Dma_clearChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    IfxDma_clearChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_getAndClearChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getAndClearChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_getChannelInterrupt(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getChannelInterrupt(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) volatile Ifx_SRC_SRCR *IfxDma_Dma_getSrcPointer(IfxDma_Dma_Channel *channel)
{
    return IfxDma_getSrcPointer(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) boolean IfxDma_Dma_isChannelTransactionPending(IfxDma_Dma_Channel *channel)
{
    return IfxDma_isChannelTransactionPending(channel->dma, channel->channelId);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelDestinationAddress(IfxDma_Dma_Channel *channel, uint32 address)
{
    IfxDma_setChannelDestinationAddress(channel->dma, channel->channelId, (void *)address);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelSourceAddress(IfxDma_Dma_Channel *channel, uint32 address)
{
    IfxDma_setChannelSourceAddress(channel->dma, channel->channelId, (void *)address);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_setChannelTransferCount(IfxDma_Dma_Channel *channel, uint32 transferCount)
{
    IfxDma_setChannelTransferCount(channel->dma, channel->channelId, transferCount);
}


static inline __attribute__ ((always_inline)) void IfxDma_Dma_startChannelTransaction(IfxDma_Dma_Channel *channel)
{
    channel->channel->CHCSR.U = 0;
    IfxDma_startChannelTransaction(channel->dma, channel->channelId);
}
# 11 "0_Src/0_AppSw/Tricore/ADC/DSADCinit.c" 2
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
# 12 "0_Src/0_AppSw/Tricore/ADC/DSADCinit.c" 2

 IfxDsadc_Dsadc dsadc;
IfxDsadc_Dsadc_Channel dsadcChannel[6];
uint8 dsadcChannelAvailable[6] = { 1, 0, 1, 1 };
# 30 "0_Src/0_AppSw/Tricore/ADC/DSADCinit.c"
void initDSADC(void)
{

   int chn;

  IfxDsadc_Dsadc_Config dsadcConfig;
  IfxDsadc_Dsadc_initModuleConfig(&dsadcConfig, &((*(Ifx_DSADC *)0xF0024000u)));

  IfxDsadc_Dsadc_initModule(&dsadc, &dsadcConfig);

  IfxDsadc_Dsadc_ChannelConfig dsadcChannelConfig;

  IfxDsadc_Dsadc_initChannelConfig(&dsadcChannelConfig, &dsadc);

  dsadcChannelConfig.modulator.positiveInput = IfxDsadc_InputConfig_inputPin;
  dsadcChannelConfig.modulator.negativeInput = IfxDsadc_InputConfig_inputPin;
  dsadcChannelConfig.modulator.inputGain = IfxDsadc_InputGain_factor16;
  dsadcChannelConfig.modulator.inputPin = IfxDsadc_InputPin_b;
  dsadcChannelConfig.modulator.modulatorClockFreq = 12.5e6;
  dsadcChannelConfig.modulator.commonModeVoltage = IfxDsadc_CommonModeVoltage_c;
  dsadcChannelConfig.combFilter.bypassed = 0;
  dsadcChannelConfig.combFilter.combFilterType = IfxDsadc_MainCombFilterType_comb3;
  dsadcChannelConfig.combFilter.combFilterShift = IfxDsadc_MainCombFilterShift_noShift;
  dsadcChannelConfig.combFilter.serviceRequest = 0;

  dsadcChannelConfig.combFilter.decimationFactor = 32;
  dsadcChannelConfig.combFilter.startValue = 32;
  dsadcChannelConfig.firFilter.fir0Enabled = 1;
  dsadcChannelConfig.firFilter.fir1Enabled = 1;
  dsadcChannelConfig.firFilter.offsetCompensation = 0;
  dsadcChannelConfig.firFilter.dataShift = IfxDsadc_FirDataShift_shiftBy3;
  dsadcChannelConfig.firFilter.internalShift = IfxDsadc_FirInternalShift_shiftBy1;

  dsadcChannelConfig.demodulator.triggerInput = IfxDsadc_TriggerInput_b;


     {
    chn=2;
       if( dsadcChannelAvailable[chn] )
       {
        dsadcChannelConfig.channelId = (IfxDsadc_ChannelId)chn;
        IfxDsadc_Dsadc_initChannel(&dsadcChannel[chn], &dsadcChannelConfig);
       }
     }



   IfxDsadc_Dsadc_initChannelConfig(&dsadcChannelConfig, &dsadc);

   dsadcChannelConfig.modulator.positiveInput = IfxDsadc_InputConfig_inputPin;
   dsadcChannelConfig.modulator.negativeInput = IfxDsadc_InputConfig_inputPin;
   dsadcChannelConfig.modulator.inputGain = IfxDsadc_InputGain_factor16;
   dsadcChannelConfig.modulator.inputPin = IfxDsadc_InputPin_c;
   dsadcChannelConfig.modulator.modulatorClockFreq = 12.5e6;
   dsadcChannelConfig.modulator.commonModeVoltage = IfxDsadc_CommonModeVoltage_c;
   dsadcChannelConfig.combFilter.bypassed = 0;
   dsadcChannelConfig.combFilter.combFilterType = IfxDsadc_MainCombFilterType_comb3;
   dsadcChannelConfig.combFilter.combFilterShift = IfxDsadc_MainCombFilterShift_noShift;
   dsadcChannelConfig.combFilter.serviceRequest = 0;

   dsadcChannelConfig.combFilter.decimationFactor = 32;
   dsadcChannelConfig.combFilter.startValue = 32;
   dsadcChannelConfig.firFilter.fir0Enabled = 1;
   dsadcChannelConfig.firFilter.fir1Enabled = 1;
   dsadcChannelConfig.firFilter.offsetCompensation = 0;
   dsadcChannelConfig.firFilter.dataShift = IfxDsadc_FirDataShift_shiftBy3;
   dsadcChannelConfig.firFilter.internalShift = IfxDsadc_FirInternalShift_shiftBy1;

   dsadcChannelConfig.demodulator.triggerInput = IfxDsadc_TriggerInput_b;


      {
     chn=3;
        if( dsadcChannelAvailable[chn] )
        {
         dsadcChannelConfig.channelId = (IfxDsadc_ChannelId)chn;
         IfxDsadc_Dsadc_initChannel(&dsadcChannel[chn], &dsadcChannelConfig);
        }
      }



   IfxDsadc_Dsadc_startScan(&dsadc, 0xC, 0xC);

   dsadcChannel[2].channel->DICFG.B.TRSEL=1;
   (*(volatile Ifx_GTM_INOUTSEL_DSADC_OUTSEL0 *)0xF019FD90u).B.SEL2=4;



     dsadcChannel[2].channel->FCFGC.B.SRGM=2;
     dsadcChannel[3].channel->FCFGC.B.SRGM=2;




     IfxSrc_init((Ifx_SRC_SRCR*)&((*(Ifx_SRC *)0xF0038000u)).DSADC.DSADC[2].SRM, IfxSrc_Tos_dma, 9);


}

volatile __attribute__((aligned(8192))) signed short dsadcResultBufferCH2[256];
volatile __attribute__((aligned(256))) signed short dsadcBuffer0CH2[256];
volatile __attribute__((aligned(256))) signed short dsadcBuffer1CH2[256];
IfxDma_Dma_Config DSADC_dmaConfig;
IfxDma_Dma DSADC_dma;


void init_DSADC_DMA(void)
{


 IfxDma_Dma_initModuleConfig(&DSADC_dmaConfig, &((*(Ifx_DMA *)0xF0010000u)));


 IfxDma_Dma_initModule(&DSADC_dma, &DSADC_dmaConfig);




 IfxDma_Dma_ChannelConfig chnCfg;
 IfxDma_Dma_initChannelConfig(&chnCfg, &DSADC_dma);



   IfxDma_Dma_initChannelConfig(&chnCfg, &DSADC_dma);

  chnCfg.channelId = 9;
  chnCfg.hardwareRequestEnabled = 1;


  chnCfg.sourceAddress = (unsigned int)&dsadc.dsadc->CH[2].RESM;
  chnCfg.destinationAddress = (unsigned int)&dsadcBuffer0CH2[0];
  chnCfg.shadowAddress = (unsigned int)&dsadcBuffer1CH2[0];
  chnCfg.shadowControl = IfxDma_ChannelShadow_doubleDestinationBufferingHwSwSwitch;

  chnCfg.sourceCircularBufferEnabled = 1;
  chnCfg.sourceAddressCircularRange = IfxDma_ChannelIncrementCircular_2;
  chnCfg.sourceAddressIncrementStep = IfxDma_ChannelIncrementStep_1;

     chnCfg.destinationCircularBufferEnabled = 0;
     chnCfg.destinationAddressCircularRange = IfxDma_ChannelIncrementCircular_256;
     chnCfg.destinationAddressIncrementStep = IfxDma_ChannelIncrementStep_1;


  chnCfg.moveSize = IfxDma_ChannelMoveSize_16bit;
  chnCfg.transferCount = 128;
  chnCfg.requestMode = IfxDma_ChannelRequestMode_oneTransferPerRequest;
  chnCfg.operationMode = IfxDma_ChannelOperationMode_continuous;




  chnCfg.channelInterruptEnabled = 1;
  chnCfg.channelInterruptControl = IfxDma_ChannelInterruptControl_thresholdLimitMatch;
  chnCfg.interruptRaiseThreshold = 0;

  chnCfg.transactionRequestLostInterruptEnabled=1;


  IfxDma_Dma_Channel chn;
  IfxDma_Dma_initChannel(&chn, &chnCfg);


  IfxSrc_enable((Ifx_SRC_SRCR*)&((*(Ifx_SRC *)0xF0038000u)).DSADC.DSADC[2].SRM);
        IfxDma_enableChannelTransaction( DSADC_dma.dma, chnCfg.channelId);


       IfxSrc_init((Ifx_SRC_SRCR*)&((*(Ifx_SRC *)0xF0038000u)).DMA.DMA[0].CH[9] , IfxSrc_Tos_cpu2, 30);
       IfxSrc_enable((Ifx_SRC_SRCR*)&((*(Ifx_SRC *)0xF0038000u)).DMA.DMA[0].CH[9]);

}
