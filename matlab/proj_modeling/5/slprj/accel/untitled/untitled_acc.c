#include "__cf_untitled.h"
#include <math.h>
#include "untitled_acc.h"
#include "untitled_acc_private.h"
#include <stdio.h>
#include "simstruc.h"
#include "fixedpoint.h"
#define CodeFormat S-Function
#define AccDefine1 Accelerator_S-Function
static void mdlOutputs ( SimStruct * S , int_T tid ) { real_T currentTime ;
NeslSimulationData * simulationData ; real_T time ; boolean_T tmp ; real_T
tmp_p [ 4 ] ; int_T tmp_e [ 2 ] ; NeslSimulator * simulator ;
NeuDiagnosticManager * diagnosticManager ; NeuDiagnosticTree * diagnosticTree
; int32_T tmp_i ; char * msg ; fsg2leehhc * _rtB ; g0szqdi43g * _rtP ;
duq1u2s0wi * _rtX ; kywlqvr0yp * _rtDW ; _rtDW = ( ( kywlqvr0yp * )
ssGetRootDWork ( S ) ) ; _rtX = ( ( duq1u2s0wi * ) ssGetContStates ( S ) ) ;
_rtP = ( ( g0szqdi43g * ) ssGetDefaultParam ( S ) ) ; _rtB = ( ( fsg2leehhc *
) _ssGetBlockIO ( S ) ) ; if ( ssIsSampleHit ( S , 1 , 0 ) ) { currentTime =
ssGetTaskTime ( S , 1 ) ; _rtDW -> m5qxmbnevo = ( currentTime >= _rtP -> P_0
) ; if ( _rtDW -> m5qxmbnevo == 1 ) { _rtB -> hphfpp2mbh = _rtP -> P_2 ; }
else { _rtB -> hphfpp2mbh = _rtP -> P_1 ; } } _rtB -> avvp3vhosm [ 0 ] = _rtB
-> hphfpp2mbh ; _rtB -> avvp3vhosm [ 1 ] = 0.0 ; _rtB -> avvp3vhosm [ 2 ] =
0.0 ; if ( ssIsMajorTimeStep ( S ) ) { _rtDW -> ls2ucqkdpn [ 0 ] = ! ( _rtB
-> avvp3vhosm [ 0 ] == _rtDW -> ls2ucqkdpn [ 1 ] ) ; _rtDW -> ls2ucqkdpn [ 1
] = _rtB -> avvp3vhosm [ 0 ] ; } _rtB -> avvp3vhosm [ 3 ] = _rtDW ->
ls2ucqkdpn [ 0 ] ; if ( _rtDW -> hs332eiouo ) { simulationData =
nesl_create_simulation_data ( ) ; time = ssGetT ( S ) ; simulationData ->
mData -> mTime . mN = 1 ; simulationData -> mData -> mTime . mX = & time ;
simulationData -> mData -> mContStates . mN = 2 ; simulationData -> mData ->
mContStates . mX = ( real_T * ) & _rtX -> goapxrw4ru ; simulationData ->
mData -> mDiscStates . mN = 0 ; simulationData -> mData -> mDiscStates . mX =
NULL ; simulationData -> mData -> mModeVector . mN = 0 ; simulationData ->
mData -> mModeVector . mX = NULL ; tmp = ( ssIsMajorTimeStep ( S ) &&
ssGetRTWSolverInfo ( S ) -> foundContZcEvents ) ; simulationData -> mData ->
mFoundZcEvents = tmp ; simulationData -> mData -> mIsMajorTimeStep =
ssIsMajorTimeStep ( S ) ; tmp = ( ssGetMdlInfoPtr ( S ) -> mdlFlags .
solverAssertCheck == 1U ) ; simulationData -> mData -> mIsSolverAssertCheck =
tmp ; tmp = ssIsSolverCheckingCIC ( S ) ; simulationData -> mData ->
mIsSolverCheckingCIC = tmp ; tmp = ssIsSolverComputingJacobian ( S ) ;
simulationData -> mData -> mIsComputingJacobian = tmp ; tmp =
ssIsSolverRequestingReset ( S ) ; simulationData -> mData ->
mIsSolverRequestingReset = tmp ; tmp_e [ 0 ] = 0 ; tmp_p [ 0 ] = _rtB ->
avvp3vhosm [ 0 ] ; tmp_p [ 1 ] = _rtB -> avvp3vhosm [ 1 ] ; tmp_p [ 2 ] =
_rtB -> avvp3vhosm [ 2 ] ; tmp_p [ 3 ] = _rtB -> avvp3vhosm [ 3 ] ; tmp_e [ 1
] = 4 ; simulationData -> mData -> mInputValues . mN = 4 ; simulationData ->
mData -> mInputValues . mX = & tmp_p [ 0 ] ; simulationData -> mData ->
mInputOffsets . mN = 2 ; simulationData -> mData -> mInputOffsets . mX = &
tmp_e [ 0 ] ; simulationData -> mData -> mOutputs . mN = 2 ; simulationData
-> mData -> mOutputs . mX = & _rtB -> c5jivnfxhh [ 0 ] ; simulationData ->
mData -> mSampleHits . mN = 0 ; simulationData -> mData -> mSampleHits . mX =
NULL ; simulationData -> mData -> mIsFundamentalSampleHit = false ; simulator
= ( NeslSimulator * ) _rtDW -> lp5rtv00uc ; diagnosticManager = (
NeuDiagnosticManager * ) _rtDW -> amtdmokqhr ; diagnosticTree =
neu_diagnostic_manager_get_initial_tree ( diagnosticManager ) ; tmp_i =
ne_simulator_method ( simulator , NESL_SIM_OUTPUTS , simulationData ,
diagnosticManager ) ; if ( tmp_i != 0 ) { tmp = error_buffer_is_empty (
ssGetErrorStatus ( S ) ) ; if ( tmp ) { msg = rtw_diagnostics_msg (
diagnosticTree ) ; ssSetErrorStatus ( S , msg ) ; } }
nesl_destroy_simulation_data ( simulationData ) ; _rtDW -> hs332eiouo = false
; } else { _rtB -> c5jivnfxhh [ 0 ] = _rtX -> goapxrw4ru [ 0 ] ; _rtB ->
c5jivnfxhh [ 1 ] = _rtX -> goapxrw4ru [ 1 ] ; } _rtB -> c121eaksvy = 0.0 ;
_rtB -> c121eaksvy += _rtB -> c5jivnfxhh [ 0 ] ; _rtB -> c121eaksvy += -
1.0E+6 * _rtB -> c5jivnfxhh [ 1 ] ; _rtB -> c121eaksvy += 1.000001000001E+6 *
_rtB -> avvp3vhosm [ 0 ] ; ssCallAccelRunBlock ( S , 0 , 4 ,
SS_CALL_MDL_OUTPUTS ) ; UNUSED_PARAMETER ( tid ) ; }
#define MDL_UPDATE
static void mdlUpdate ( SimStruct * S , int_T tid ) { UNUSED_PARAMETER ( tid
) ; }
#define MDL_DERIVATIVES
static void mdlDerivatives ( SimStruct * S ) { fsg2leehhc * _rtB ; duq1u2s0wi
* _rtX ; d1e4i05lcy * _rtXdot ; _rtXdot = ( ( d1e4i05lcy * ) ssGetdX ( S ) )
; _rtX = ( ( duq1u2s0wi * ) ssGetContStates ( S ) ) ; _rtB = ( ( fsg2leehhc *
) _ssGetBlockIO ( S ) ) ; _rtXdot -> goapxrw4ru [ 0 ] = 0.0 ; _rtXdot ->
goapxrw4ru [ 1 ] = 0.0 ; _rtXdot -> goapxrw4ru [ 1 ] += - 1.0E+12 * _rtX ->
goapxrw4ru [ 1 ] ; _rtXdot -> goapxrw4ru [ 0 ] += 1.0E+6 * _rtB -> avvp3vhosm
[ 0 ] ; _rtXdot -> goapxrw4ru [ 1 ] += 1.0E+12 * _rtB -> avvp3vhosm [ 0 ] ; }
#define MDL_ZERO_CROSSINGS
static void mdlZeroCrossings ( SimStruct * S ) { g0szqdi43g * _rtP ;
avyyf1we1b * _rtZCSV ; _rtZCSV = ( ( avyyf1we1b * ) ssGetSolverZcSignalVector
( S ) ) ; _rtP = ( ( g0szqdi43g * ) ssGetDefaultParam ( S ) ) ; _rtZCSV ->
cadw4ftdsa = ssGetT ( S ) - _rtP -> P_0 ; } static void mdlInitializeSizes (
SimStruct * S ) { ssSetChecksumVal ( S , 0 , 2510468763U ) ; ssSetChecksumVal
( S , 1 , 2797765565U ) ; ssSetChecksumVal ( S , 2 , 1995400262U ) ;
ssSetChecksumVal ( S , 3 , 979271466U ) ; { mxArray * slVerStructMat = NULL ;
mxArray * slStrMat = mxCreateString ( "simulink" ) ; char slVerChar [ 10 ] ;
int status = mexCallMATLAB ( 1 , & slVerStructMat , 1 , & slStrMat , "ver" )
; if ( status == 0 ) { mxArray * slVerMat = mxGetField ( slVerStructMat , 0 ,
"Version" ) ; if ( slVerMat == NULL ) { status = 1 ; } else { status =
mxGetString ( slVerMat , slVerChar , 10 ) ; } } mxDestroyArray ( slStrMat ) ;
mxDestroyArray ( slVerStructMat ) ; if ( ( status == 1 ) || ( strcmp (
slVerChar , "8.5" ) != 0 ) ) { return ; } } ssSetOptions ( S ,
SS_OPTION_EXCEPTION_FREE_CODE ) ; if ( ssGetSizeofDWork ( S ) != sizeof (
kywlqvr0yp ) ) { ssSetErrorStatus ( S ,
"Unexpected error: Internal DWork sizes do "
"not match for accelerator mex file." ) ; } if ( ssGetSizeofGlobalBlockIO ( S
) != sizeof ( fsg2leehhc ) ) { ssSetErrorStatus ( S ,
"Unexpected error: Internal BlockIO sizes do "
"not match for accelerator mex file." ) ; } { int ssSizeofParams ;
ssGetSizeofParams ( S , & ssSizeofParams ) ; if ( ssSizeofParams != sizeof (
g0szqdi43g ) ) { static char msg [ 256 ] ; sprintf ( msg ,
"Unexpected error: Internal Parameters sizes do "
"not match for accelerator mex file." ) ; } } _ssSetDefaultParam ( S , (
real_T * ) & lxkrdcync0 ) ; } static void mdlInitializeSampleTimes (
SimStruct * S ) { } static void mdlTerminate ( SimStruct * S ) { }
#include "simulink.c"
