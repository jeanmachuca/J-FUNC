/*
 * Harbour Compiler, 0.36  (Build 36) (2001.02.20) (Flex)
 * Generated C source code
 */

#include "hb\hbvmpub.h"
#include "hb\hbpcode.h"
#include "hb\hbinit.h"


       HB_FUNC( PRUEBA );
extern HB_FUNC( QOUT );


HB_INIT_SYMBOLS_BEGIN( hb_vm_SymbolInit_PRUEBA )
{ "PRUEBA", HB_FS_PUBLIC | HB_FS_FIRST, HB_FUNCNAME( PRUEBA ), NULL },
{ "QOUT", HB_FS_PUBLIC, HB_FUNCNAME( QOUT ), NULL }
HB_INIT_SYMBOLS_END( hb_vm_SymbolInit_PRUEBA )
#if defined(_MSC_VER)
   #if _MSC_VER >= 1010
      #pragma data_seg( ".CRT$XIY" )
      #pragma comment( linker, "/Merge:.CRT=.data" )
   #else
      #pragma data_seg( "XIY" )
   #endif
   static HB_$INITSYM hb_vm_auto_SymbolInit_PRUEBA = hb_vm_SymbolInit_PRUEBA;
   #pragma data_seg()
#elif ! defined(__GNUC__)
   #pragma startup hb_vm_SymbolInit_PRUEBA
#endif

HB_FUNC( PRUEBA )
{
   static const BYTE pcode[] =
   {
/* 00000 */ HB_P_LINE, 1, 0,	/* 1 */
	HB_P_PUSHSYMNEAR, 1,	/* QOUT */
	HB_P_PUSHNIL,
	HB_P_PUSHSTRSHORT, 4,	/* 4 */
	'H', 'O', 'L', 'A', 
	HB_P_DOSHORT, 1,
	HB_P_ENDPROC
/* 00015 */
   };

   hb_vmExecute( pcode, symbols );
}

