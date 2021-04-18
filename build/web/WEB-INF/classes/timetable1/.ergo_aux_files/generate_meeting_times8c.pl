
:-(compiler_options([xpp_on,canonical])).

/********** Tabling and Trailer Control Variables ************/

#define EQUALITYnone
#define INHERITANCEflogic
#define TABLINGreactive
#define TABLINGvariant
#define CUSTOMnone

#define FLORA_INCREMENTAL_TABLING 

/************************************************************************
  file: headerinc/flrheader_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader.flh"
#include "flora_porting.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrheader_prog_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).
#mode standard Prolog

#include "flrheader_prog.flh"

/***********************************************************************/

#define FLORA_COMPILATION_ID 1

/************************************************************************
  file: headerinc/flrheader2_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
  It has files that must be included in the header and typically
  contain some Prolog statements. Such files cannot appear
  in flrheader.flh because flrheader.flh is included in various restricted
  contexts where Prolog statements are not allowed.

  NOT included in ADDED files (compiled for addition) -- only in LOADED
  ones and in trailers/patch
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

%% flora_tabling_methods is included here to affect preprocessing of
%% flrtable/flrhilogtable.flh dynamically
#include "flora_tabling_methods.flh"

/* note: inside flrtable.flh there are checks for FLORA_NONTABLED_DATA_MODULE
   that exclude tabling non-signature molecules
*/
#ifndef FLORA_NONTABLED_MODULE
#include "flrtable.flh"
#endif

/* if normal tabled module, then table hilog */
#if !defined(FLORA_NONTABLED_DATA_MODULE) && !defined(FLORA_NONTABLED_MODULE)
#include "flrhilogtable.flh"
#endif

#include "flrtable_always.flh"

#include "flrauxtables.flh"

%% include list of tabled predicates
#mode save
#mode nocomment "%"
#if defined(FLORA_FLT_FILENAME)
#include FLORA_FLT_FILENAME
#endif
#mode restore

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdyna_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#define TABLING_CONNECTIVE  :-

#include "flrdyndeclare.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrindex_P_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrindex_P.flh"

/***********************************************************************/

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'generate_meeting_times8c.ergo'
#mode restore
/************************************************************************
  file: headerinc/flrdefinition_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrdefinition.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrtrailerregistry_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailerregistry.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrrefreshtable_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrrefreshtable.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrdynamic_connectors_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrdynamic_connectors.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrimportedcalls_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

%% Loads the file with all the import statements for predicates
%% that must be known everywhere

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBIMPORTEDCALLS))).

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpatch_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrexportcheck.flh"
#include "flrpatch.flh"
/***********************************************************************/

/************************************************************************
  file: headerinc/flropposes_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flropposes.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrhead_dispatch_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrhead_dispatch.flh"

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrbtdbop_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBBTDBOP))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrbtdbop_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBBTDBOP))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrdbop_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBDBOP))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrcontrol_inc.flh

  Author(s): Michael Kifer
	     Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCONTROL))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrclause_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCLAUSE))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrload_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBLOAD))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrdynmod_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBDYNMOD))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrcolset_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBCOLLECTSET))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrmetaops_inh.flh

  Author(s): Michael Kifer

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif


?-(:(flrlibman,flora_load_library(FLLIBMETAOPS))).

/***********************************************************************/

 
#if !defined(FLORA_FDB_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FDB_FILENAME  'generate_meeting_times8c.fdb'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FDB_FILENAME,FLORA_THIS_MODULE_NAME,'fdb'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FDB_FILENAME,FLORA_THIS_FDB_STORAGE))).
#endif

 
#if !defined(FLORA_FLM_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLM_FILENAME  'generate_meeting_times8c.flm'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLM_FILENAME,FLORA_THIS_MODULE_NAME,'flm'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_descriptor_metafacts_canonical_and_insert(generate_meeting_times8c,_ErrNum))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'generate_meeting_times8c.fld'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLD_FILENAME,FLORA_THIS_MODULE_NAME,'fld'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FLD_FILENAME,FLORA_THIS_FLD_STORAGE))).
#endif

 
#if !defined(FLORA_FLS_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS_FILENAME  'generate_meeting_times8c.fls'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS_FILENAME,FLORA_THIS_MODULE_NAME,'fls'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rules %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(r,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(4,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//classroom_instances')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[15,6]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//Concepts')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[16,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//address_instances')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[17,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//course_instances')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[18,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//instances')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[20,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//CourseCodes')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[22,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//utilities')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[23,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//course_opening_requests')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[24,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//constraints')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[25,5]),fllibload([>>(+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//empty'),m1)],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[26,5])))))))))))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(t_single_insert4,__ModuleName,','(__COR,','([__Room1,__Day1,__Period1],','([__Room2,__Day2,__Period2],','([__Room3,__Day3,__Period3],[__Room4,__Day4,__Period4])))),'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(6,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,groupNumber,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6)),FLORA_THIS_WORKSPACE(d^mvd)(__COR,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,6))))),','(:(flrnewoid,fllibnewoid(__CO)),','(:(flrnewoid,fllibnewoid(__RDPD1)),','(:(flrnewoid,fllibnewoid(__RDPD2)),','(:(flrnewoid,fllibnewoid(__RDPD3)),','(:(flrnewoid,fllibnewoid(__RDPD4)),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD1,room,__Room1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar6,__newcontextvar7)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newcontextvar8)),fllibmodlit(mvd,[__RDPD1,day,__Day1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar10,__newcontextvar11)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,__newcontextvar12)),fllibmodlit(mvd,[__RDPD1,period,__Period1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar14,__newcontextvar15)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,__newcontextvar16)),fllibmodlit(mvd,[__RDPD1,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar18,__newcontextvar19)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,__newcontextvar20)),fllibmodlit(isa,[__RDPD1,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar22,__newcontextvar23)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,__newcontextvar24))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD2,room,__Room2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar26,__newcontextvar27)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,__newcontextvar28)),fllibmodlit(mvd,[__RDPD2,day,__Day2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar30,__newcontextvar31)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,__newcontextvar32)),fllibmodlit(mvd,[__RDPD2,period,__Period2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar34,__newcontextvar35)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,__newcontextvar36)),fllibmodlit(mvd,[__RDPD2,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar38,__newcontextvar39)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,__newcontextvar40)),fllibmodlit(isa,[__RDPD2,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar42,__newcontextvar43)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,__newcontextvar44))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD3,room,__Room3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar46,__newcontextvar47)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,__newcontextvar48)),fllibmodlit(mvd,[__RDPD3,day,__Day3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar50,__newcontextvar51)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,__newcontextvar52)),fllibmodlit(mvd,[__RDPD3,period,__Period3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar54,__newcontextvar55)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,__newcontextvar56)),fllibmodlit(mvd,[__RDPD3,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar58,__newcontextvar59)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar61,__newcontextvar60)),fllibmodlit(isa,[__RDPD3,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar62,__newcontextvar63)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar65,__newcontextvar64))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD4,room,__Room4,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar66,__newcontextvar67)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar69,__newcontextvar68)),fllibmodlit(mvd,[__RDPD4,day,__Day4,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar70,__newcontextvar71)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar73,__newcontextvar72)),fllibmodlit(mvd,[__RDPD4,period,__Period4,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar74,__newcontextvar75)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar77,__newcontextvar76)),fllibmodlit(mvd,[__RDPD4,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar78,__newcontextvar79)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar81,__newcontextvar80)),fllibmodlit(isa,[__RDPD4,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar82,__newcontextvar83)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar85,__newcontextvar84))]),fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__CO,groupNo,__GN,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar86,__newcontextvar87)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar89,__newcontextvar88)),fllibmodlit(mvd,[__CO,ofCourse,__Course,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar90,__newcontextvar91)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar93,__newcontextvar92)),fllibmodlit(mvd,[__CO,year,__Year,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar94,__newcontextvar95)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar97,__newcontextvar96)),fllibmodlit(mvd,[__CO,semester,__Sem,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar98,__newcontextvar99)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar101,__newcontextvar100)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar102,__newcontextvar103)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar105,__newcontextvar104)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar106,__newcontextvar107)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar109,__newcontextvar108)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar110,__newcontextvar111)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar113,__newcontextvar112)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD4,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar114,__newcontextvar115)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar117,__newcontextvar116)),fllibmodlit(isa,[__CO,'CourseOpening','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar118,__newcontextvar119)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar121,__newcontextvar120))]))))))))))),fllibexecute_delayed_calls([__CO,__COR,__Course,__Day1,__Day2,__Day3,__Day4,__GN,__ModuleName,__Period1,__Period2,__Period3,__Period4,__RDPD1,__RDPD2,__RDPD3,__RDPD4,__Room1,__Room2,__Room3,__Room4,__Sem,__Year],[__COR,__Day1,__Day2,__Day3,__Day4,__ModuleName,__Period1,__Period2,__Period3,__Period4,__Room1,__Room2,__Room3,__Room4])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(t_single_insert3,__ModuleName,','(__COR,','([__Room1,__Day1,__Period1],','([__Room2,__Day2,__Period2],[__Room3,__Day3,__Period3]))),'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(8,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,groupNumber,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8)),FLORA_THIS_WORKSPACE(d^mvd)(__COR,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8))))),','(:(flrnewoid,fllibnewoid(__CO)),','(:(flrnewoid,fllibnewoid(__RDPD1)),','(:(flrnewoid,fllibnewoid(__RDPD2)),','(:(flrnewoid,fllibnewoid(__RDPD3)),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD1,room,__Room1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar6,__newcontextvar7)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newcontextvar8)),fllibmodlit(mvd,[__RDPD1,day,__Day1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar10,__newcontextvar11)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,__newcontextvar12)),fllibmodlit(mvd,[__RDPD1,period,__Period1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar14,__newcontextvar15)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,__newcontextvar16)),fllibmodlit(mvd,[__RDPD1,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar18,__newcontextvar19)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,__newcontextvar20)),fllibmodlit(isa,[__RDPD1,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar22,__newcontextvar23)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,__newcontextvar24))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD2,room,__Room2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar26,__newcontextvar27)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,__newcontextvar28)),fllibmodlit(mvd,[__RDPD2,day,__Day2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar30,__newcontextvar31)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,__newcontextvar32)),fllibmodlit(mvd,[__RDPD2,period,__Period2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar34,__newcontextvar35)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,__newcontextvar36)),fllibmodlit(mvd,[__RDPD2,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar38,__newcontextvar39)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,__newcontextvar40)),fllibmodlit(isa,[__RDPD2,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar42,__newcontextvar43)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,__newcontextvar44))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD3,room,__Room3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar46,__newcontextvar47)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,__newcontextvar48)),fllibmodlit(mvd,[__RDPD3,day,__Day3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar50,__newcontextvar51)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,__newcontextvar52)),fllibmodlit(mvd,[__RDPD3,period,__Period3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar54,__newcontextvar55)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,__newcontextvar56)),fllibmodlit(mvd,[__RDPD3,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar58,__newcontextvar59)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar61,__newcontextvar60)),fllibmodlit(isa,[__RDPD3,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar62,__newcontextvar63)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar65,__newcontextvar64))]),fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__CO,groupNo,__GN,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar66,__newcontextvar67)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar69,__newcontextvar68)),fllibmodlit(mvd,[__CO,ofCourse,__Course,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar70,__newcontextvar71)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar73,__newcontextvar72)),fllibmodlit(mvd,[__CO,year,__Year,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar74,__newcontextvar75)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar77,__newcontextvar76)),fllibmodlit(mvd,[__CO,semester,__Sem,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar78,__newcontextvar79)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar81,__newcontextvar80)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar82,__newcontextvar83)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar85,__newcontextvar84)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar86,__newcontextvar87)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar89,__newcontextvar88)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar90,__newcontextvar91)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar93,__newcontextvar92)),fllibmodlit(isa,[__CO,'CourseOpening','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar94,__newcontextvar95)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar97,__newcontextvar96))]))))))))),fllibexecute_delayed_calls([__CO,__COR,__Course,__Day1,__Day2,__Day3,__GN,__ModuleName,__Period1,__Period2,__Period3,__RDPD1,__RDPD2,__RDPD3,__Room1,__Room2,__Room3,__Sem,__Year],[__COR,__Day1,__Day2,__Day3,__ModuleName,__Period1,__Period2,__Period3,__Room1,__Room2,__Room3])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(t_single_insert0,__ModuleName,__COR,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(10,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,groupNumber,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10)),FLORA_THIS_WORKSPACE(d^mvd)(__COR,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10))))),','(:(flrnewoid,fllibnewoid(__CO)),fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__CO,groupNo,__GN,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar6,__newcontextvar7)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newcontextvar8)),fllibmodlit(mvd,[__CO,ofCourse,__Course,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar10,__newcontextvar11)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,__newcontextvar12)),fllibmodlit(mvd,[__CO,year,__Year,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar14,__newcontextvar15)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,__newcontextvar16)),fllibmodlit(mvd,[__CO,semester,__Sem,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar18,__newcontextvar19)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,__newcontextvar20)),fllibmodlit(isa,[__CO,'CourseOpening','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar22,__newcontextvar23)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,__newcontextvar24))]))),fllibexecute_delayed_calls([__CO,__COR,__Course,__GN,__ModuleName,__Sem,__Year],[__COR,__ModuleName])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(t_single_insert2,__ModuleName,','(__COR,','([__Room1,__Day1,__Period1],[__Room2,__Day2,__Period2])),'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(12,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,groupNumber,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),FLORA_THIS_WORKSPACE(d^mvd)(__COR,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12))))),','(:(flrnewoid,fllibnewoid(__CO)),','(:(flrnewoid,fllibnewoid(__RDPD1)),','(:(flrnewoid,fllibnewoid(__RDPD2)),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD1,room,__Room1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar6,__newcontextvar7)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newcontextvar8)),fllibmodlit(mvd,[__RDPD1,day,__Day1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar10,__newcontextvar11)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,__newcontextvar12)),fllibmodlit(mvd,[__RDPD1,period,__Period1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar14,__newcontextvar15)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,__newcontextvar16)),fllibmodlit(mvd,[__RDPD1,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar18,__newcontextvar19)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,__newcontextvar20)),fllibmodlit(isa,[__RDPD1,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar22,__newcontextvar23)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,__newcontextvar24))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD2,room,__Room2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar26,__newcontextvar27)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,__newcontextvar28)),fllibmodlit(mvd,[__RDPD2,day,__Day2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar30,__newcontextvar31)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,__newcontextvar32)),fllibmodlit(mvd,[__RDPD2,period,__Period2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar34,__newcontextvar35)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,__newcontextvar36)),fllibmodlit(mvd,[__RDPD2,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar38,__newcontextvar39)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,__newcontextvar40)),fllibmodlit(isa,[__RDPD2,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar42,__newcontextvar43)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,__newcontextvar44))]),fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__CO,groupNo,__GN,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar46,__newcontextvar47)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,__newcontextvar48)),fllibmodlit(mvd,[__CO,ofCourse,__Course,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar50,__newcontextvar51)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,__newcontextvar52)),fllibmodlit(mvd,[__CO,year,__Year,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar54,__newcontextvar55)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,__newcontextvar56)),fllibmodlit(mvd,[__CO,semester,__Sem,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar58,__newcontextvar59)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar61,__newcontextvar60)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar62,__newcontextvar63)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar65,__newcontextvar64)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar66,__newcontextvar67)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar69,__newcontextvar68)),fllibmodlit(isa,[__CO,'CourseOpening','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar70,__newcontextvar71)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar73,__newcontextvar72))]))))))),fllibexecute_delayed_calls([__CO,__COR,__Course,__Day1,__Day2,__GN,__ModuleName,__Period1,__Period2,__RDPD1,__RDPD2,__Room1,__Room2,__Sem,__Year],[__COR,__Day1,__Day2,__ModuleName,__Period1,__Period2,__Room1,__Room2])))).
:-(FLORA_THIS_WORKSPACE(static^tblflapply)(requested_courses,__RQL,__Year,__Semester,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(14,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(fllibsetof(__newdontcarevar5,[],','(','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar5,'CourseOpeningRequest','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),','(FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar5,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar5,semester,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14)))),fllibexecute_delayed_calls([__newdontcarevar5,__Semester,__Year],[])),__newvar6),=(__RQL,__newvar6)))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(generateOneByOne,__Year,__Semester,__Course,__GN,__Room,__Day,__Period,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(16,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'RoomDayPeriodDuration','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(requested_courses,__CourseRequests,__Year,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(writeln(-(courserequests,__CourseRequests)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CourseRequests,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,16)),','(!,','(','(FLORA_WORKSPACE(m1,d^isa)(___X,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,16)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,groupNo,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,16)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,16)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,16)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,semester,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,16)),FLORA_WORKSPACE(m1,d^mvd)(___X,teachingTimes,__RDPD,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,16))))))),','(FLORA_WORKSPACE(m1,d^mvd)(__RDPD,room,__Room,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,16)),','(FLORA_WORKSPACE(m1,d^mvd)(__RDPD,day,__Day,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,16)),FLORA_WORKSPACE(m1,d^mvd)(__RDPD,period,__Period,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,16))))))))))),fllibexecute_delayed_calls([__Course,__CourseRequests,__Day,__GN,__Period,__RDPD,__Room,__Semester,__Year,___X],[__Course,__Day,__GN,__Period,__Room,__Semester,__Year])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(runFirstSolution,__TA,__Year,__Semester,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(18,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),writeln('RFS1'),209,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'RoomDayPeriodDuration','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,18)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,18)),writeln('RFS2'),211,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,18)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,18)),writeln('RFS3'),213,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^tblflapply)(requested_courses,__CourseRequests,__Year,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,18)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,18)),','(writeln('RFS4'),writeln(-(courserequests,__CourseRequests))),215,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CourseRequests,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,18)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,18)),writeln('RFS5'),217,'generate_meeting_times8c.flr'),','(!,','(FLORA_THIS_WORKSPACE(d^nontblflapply)(gen,__TA,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,18)),fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,18)),writeln('RFS6'),220,'generate_meeting_times8c.flr')))))))))))),fllibexecute_delayed_calls([__CourseRequests,__Semester,__TA,__Year],[__Semester,__TA,__Year])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(runAllSolutions,__TA,__Year,__Semester,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(20,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'RoomDayPeriodDuration','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(requested_courses,__CourseRequests,__Year,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,20)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CourseRequests,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,20)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(gen,__TA,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,20)),FLORA_THIS_WORKSPACE(d^nontblflapply)(printlist,__TA,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,20))))))),fllibexecute_delayed_calls([__CourseRequests,__Semester,__TA,__Year],[__Semester,__TA,__Year])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(gen,__TA,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(22,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(fllibsetof(__newdontcarevar11,[],','(','(','(FLORA_WORKSPACE(m1,d^isa)(___X,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,22)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,groupNo,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,22)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,22)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,22)),FLORA_WORKSPACE(m1,d^mvd)(___X,teachingTimes,__RDPD,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,22))))))),','(','(FLORA_WORKSPACE(m1,d^mvd)(__RDPD,room,__Room,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,22)),','(FLORA_WORKSPACE(m1,d^mvd)(__RDPD,day,__Day,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,22)),FLORA_WORKSPACE(m1,d^mvd)(__RDPD,period,__Period,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,22)))),=(__newdontcarevar11,[__Course,__GN,__Year,__Sem,__Room,__Day,__Period]))),fllibexecute_delayed_calls([__Course,__Day,__GN,__Period,__RDPD,__Room,__Sem,__Year,__newdontcarevar11,___X],[])),__newvar12),=(__TA,__newvar12)),fllibexecute_delayed_calls([__Course,__Day,__GN,__Period,__RDPD,__Room,__Sem,__TA,__Year,___X],[__TA])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(generate_times,[__CR|__CRs],'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(24,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(','(FLORA_THIS_WORKSPACE(d^mvd)(__CR,ofCourse,___CRSE,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,24)),FLORA_THIS_WORKSPACE(d^mvd)(___CRSE,lecture_hours,__LectureHours,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24))),','(=(__LectureHours,0),','(!,','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert0,m1,__CR,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,24)),FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CRs,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,24)))))),fllibexecute_delayed_calls([__CR,__CRs,__LectureHours,___CRSE],[__CR,__CRs])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(generate_times,[__CR|__CRs],'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(26,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),writeln('GT1'),250,'generate_meeting_times8c.flr'),','(','(FLORA_THIS_WORKSPACE(d^isa)(__CR,'CourseOpeningRequest','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,26)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__CR,ofCourse,__CRSE,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,26)),','(FLORA_THIS_WORKSPACE(d^isa)(__CRSE,'Course','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,26)),FLORA_THIS_WORKSPACE(d^mvd)(__CRSE,lecture_hours,__LectureHours,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,26)))),','(FLORA_THIS_WORKSPACE(d^mvd)(__CR,maxStudentSize,__MaxStudentSize,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,26)),FLORA_THIS_WORKSPACE(d^mvd)(__CR,forProgram,__Program,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,26))))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,26)),writeln('GT2'),256,'generate_meeting_times8c.flr'),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__ClassRoom1,capacity,__Capacity1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,26)),FLORA_THIS_WORKSPACE(d^isa)(__ClassRoom1,'Classroom','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,26))),','(fllibdelayedliteral(=<,'generate_meeting_times8c.flr',259,[__MaxStudentSize,__Capacity1]),','(fllibifthen(FLORA_THIS_MODULE_NAME,=(__LectureHours,2),FLORA_THIS_WORKSPACE(d^isa)(__Day1,'Day','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,26)),261,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,';'(=(__LectureHours,3),=(__LectureHours,4)),FLORA_THIS_WORKSPACE(d^tblflapply)(before,__Day1,__Day2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,26)),262,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,26)),writeln('GT3'),264,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^tblflapply)(doublePeriod,__Period11,__Period12,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,26)),','(=(__PossibleAllocation1a,[__ClassRoom1,__Day1,__Period11]),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom1,__Day1,__Period11,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day1,__Period11]),get(___X2)),271,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day1,__Period11,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day1,__Period11]),get(___X2)),276,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day1,__Period11,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,26))),','(=(__PossibleAllocation1b,[__ClassRoom1,__Day1,__Period12]),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom1,__Day1,__Period12,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day1,__Period12]),get(___X2)),287,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day1,__Period12,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day1,__Period12]),get(___X2)),292,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day1,__Period12,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,26)),writeln('GT4'),299,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,=(__LectureHours,2),FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert2,m1,','(__CR,','(__PossibleAllocation1a,__PossibleAllocation1b)),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,26)),301,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,';'(=(__LectureHours,3),=(__LectureHours,4)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__ClassRoom2,capacity,__Capacity2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,26)),FLORA_THIS_WORKSPACE(d^isa)(__ClassRoom2,'Classroom','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,26))),fllibdelayedliteral(=<,'generate_meeting_times8c.flr',309,[__MaxStudentSize,__Capacity2])),306,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,26)),writeln('GT5'),312,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,=(__LectureHours,3),','(FLORA_THIS_WORKSPACE(d^tblflapply)(period,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,26)),','(=(__PossibleAllocation2a,[__ClassRoom2,__Day2,__Period21]),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom2,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period21]),get(___X2)),320,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period21]),get(___X2)),325,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,26))),FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert3,m1,','(__CR,','(__PossibleAllocation1a,','(__PossibleAllocation1b,__PossibleAllocation2a))),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,26))))))))),314,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,26)),writeln('GT6'),335,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,=(__LectureHours,4),','(FLORA_THIS_WORKSPACE(d^tblflapply)(doublePeriod,__Period21,__Period22,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,26)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,26)),writeln('GT61'),341,'generate_meeting_times8c.flr'),','(=(__PossibleAllocation2a,[__ClassRoom2,__Day2,__Period21]),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,26)),writeln('GT62'),345,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom2,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,26)),writeln('GT63'),349,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period21]),get(___X2)),352,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period21]),get(___X2)),357,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,26)),writeln('GT64'),361,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,26)),writeln('GT65'),365,'generate_meeting_times8c.flr'),','(=(__PossibleAllocation2b,[__ClassRoom2,__Day2,__Period22]),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom2,__Day2,__Period22,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period22]),get(___X2)),371,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day2,__Period22,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period22]),get(___X2)),377,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day2,__Period22,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,26))),FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert4,m1,','(__CR,','(__PossibleAllocation1a,','(__PossibleAllocation1b,','(__PossibleAllocation2a,__PossibleAllocation2b)))),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar55,26)))))))))))))))))))),337,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar56,26)),writeln('GT7'),386,'generate_meeting_times8c.flr'),FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CRs,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,26))))))))))))))))))))))))))))))),fllibexecute_delayed_calls([__CR,__CRSE,__CRs,__Capacity1,__Capacity2,__ClassRoom1,__ClassRoom2,__Day1,__Day2,__LectureHours,__MaxStudentSize,__Period11,__Period12,__Period21,__Period22,__PossibleAllocation1a,__PossibleAllocation1b,__PossibleAllocation2a,__PossibleAllocation2b,__Program,___X2],[__CR,__CRs])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(t_del,__ModuleName,__ConceptName,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(28,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(fllibbtdeleteall(FLORA_THIS_MODULE_NAME,[fllibmodlit(isa,[__newdontcarevar2,__ConceptName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar9)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,__newcontextvar11)),fllibmodlit(mvd,[__newdontcarevar2,__newdontcarevar3,__newdontcarevar4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar5)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newcontextvar7))]),fllibexecute_delayed_calls([__ConceptName,__ModuleName,__newdontcarevar13],[__ConceptName,__ModuleName])))).
:-(FLORA_THIS_WORKSPACE(static^nontblflapply)(del,__ModuleName,__ConceptName,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),','('_$_$_ergo''rule_enabled'(30,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),','(fllibdeleteall(FLORA_THIS_MODULE_NAME,[fllibmodlit(isa,[__newdontcarevar2,__ConceptName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar9)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,__newcontextvar11)),fllibmodlit(mvd,[__newdontcarevar2,__newdontcarevar3,__newdontcarevar4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar5)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newcontextvar7))]),fllibexecute_delayed_calls([__ConceptName,__ModuleName,__newdontcarevar13],[__ConceptName,__ModuleName])))).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule signatures %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(fllibinsrulesig(4,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,4,FLORA_THIS_WORKSPACE(d^nontblflapply)(r,'_$ctxt'(_CallerModuleVar,4,__newcontextvar1)),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//classroom_instances')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[15,6]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//Concepts')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[16,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//address_instances')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[17,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//course_instances')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[18,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//instances')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[20,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//CourseCodes')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[22,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//utilities')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[23,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//course_opening_requests')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[24,5]),','(fllibload([+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//constraints')],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[25,5]),fllibload([>>(+('C://Users//reslab//Documents//NetBeansProjects//pamthesis//src//java//timetable1//empty'),m1)],'C:/Users/reslab/Documents/NetBeansProjects/pamthesis/src/java/timetable1/generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME,[26,5])))))))))),null,'_$_$_ergo''rule_enabled'(4,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(6,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,6,FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert4,__ModuleName,','(__COR,','([__Room1,__Day1,__Period1],','([__Room2,__Day2,__Period2],','([__Room3,__Day3,__Period3],[__Room4,__Day4,__Period4])))),'_$ctxt'(_CallerModuleVar,6,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,groupNumber,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,6)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,6)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,6)),FLORA_THIS_WORKSPACE(d^mvd)(__COR,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,6))))),','(:(flrnewoid,fllibnewoid(__CO)),','(:(flrnewoid,fllibnewoid(__RDPD1)),','(:(flrnewoid,fllibnewoid(__RDPD2)),','(:(flrnewoid,fllibnewoid(__RDPD3)),','(:(flrnewoid,fllibnewoid(__RDPD4)),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD1,room,__Room1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar6,__newcontextvar7)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newcontextvar8)),fllibmodlit(mvd,[__RDPD1,day,__Day1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar10,__newcontextvar11)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,__newcontextvar12)),fllibmodlit(mvd,[__RDPD1,period,__Period1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar14,__newcontextvar15)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,__newcontextvar16)),fllibmodlit(mvd,[__RDPD1,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar18,__newcontextvar19)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,__newcontextvar20)),fllibmodlit(isa,[__RDPD1,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar22,__newcontextvar23)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,__newcontextvar24))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD2,room,__Room2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar26,__newcontextvar27)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,__newcontextvar28)),fllibmodlit(mvd,[__RDPD2,day,__Day2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar30,__newcontextvar31)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,__newcontextvar32)),fllibmodlit(mvd,[__RDPD2,period,__Period2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar34,__newcontextvar35)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,__newcontextvar36)),fllibmodlit(mvd,[__RDPD2,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar38,__newcontextvar39)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,__newcontextvar40)),fllibmodlit(isa,[__RDPD2,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar42,__newcontextvar43)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,__newcontextvar44))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD3,room,__Room3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar46,__newcontextvar47)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,__newcontextvar48)),fllibmodlit(mvd,[__RDPD3,day,__Day3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar50,__newcontextvar51)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,__newcontextvar52)),fllibmodlit(mvd,[__RDPD3,period,__Period3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar54,__newcontextvar55)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,__newcontextvar56)),fllibmodlit(mvd,[__RDPD3,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar58,__newcontextvar59)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar61,__newcontextvar60)),fllibmodlit(isa,[__RDPD3,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar62,__newcontextvar63)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar65,__newcontextvar64))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD4,room,__Room4,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar66,__newcontextvar67)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar69,__newcontextvar68)),fllibmodlit(mvd,[__RDPD4,day,__Day4,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar70,__newcontextvar71)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar73,__newcontextvar72)),fllibmodlit(mvd,[__RDPD4,period,__Period4,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar74,__newcontextvar75)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar77,__newcontextvar76)),fllibmodlit(mvd,[__RDPD4,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar78,__newcontextvar79)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar81,__newcontextvar80)),fllibmodlit(isa,[__RDPD4,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar82,__newcontextvar83)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar85,__newcontextvar84))]),fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__CO,groupNo,__GN,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar86,__newcontextvar87)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar89,__newcontextvar88)),fllibmodlit(mvd,[__CO,ofCourse,__Course,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar90,__newcontextvar91)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar93,__newcontextvar92)),fllibmodlit(mvd,[__CO,year,__Year,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar94,__newcontextvar95)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar97,__newcontextvar96)),fllibmodlit(mvd,[__CO,semester,__Sem,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar98,__newcontextvar99)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar101,__newcontextvar100)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar102,__newcontextvar103)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar105,__newcontextvar104)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar106,__newcontextvar107)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar109,__newcontextvar108)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar110,__newcontextvar111)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar113,__newcontextvar112)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD4,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar114,__newcontextvar115)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar117,__newcontextvar116)),fllibmodlit(isa,[__CO,'CourseOpening','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar118,__newcontextvar119)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar121,__newcontextvar120))]))))))))))),null,'_$_$_ergo''rule_enabled'(6,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CO,__COR,__Course,__Day1,__Day2,__Day3,__Day4,__GN,__ModuleName,__Period1,__Period2,__Period3,__Period4,__RDPD1,__RDPD2,__RDPD3,__RDPD4,__Room1,__Room2,__Room3,__Room4,__Sem,__Year],[__COR,__Day1,__Day2,__Day3,__Day4,__ModuleName,__Period1,__Period2,__Period3,__Period4,__Room1,__Room2,__Room3,__Room4]),true)).
?-(fllibinsrulesig(8,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,7,FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert3,__ModuleName,','(__COR,','([__Room1,__Day1,__Period1],','([__Room2,__Day2,__Period2],[__Room3,__Day3,__Period3]))),'_$ctxt'(_CallerModuleVar,8,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,groupNumber,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,8)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,8)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,8)),FLORA_THIS_WORKSPACE(d^mvd)(__COR,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,8))))),','(:(flrnewoid,fllibnewoid(__CO)),','(:(flrnewoid,fllibnewoid(__RDPD1)),','(:(flrnewoid,fllibnewoid(__RDPD2)),','(:(flrnewoid,fllibnewoid(__RDPD3)),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD1,room,__Room1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar6,__newcontextvar7)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newcontextvar8)),fllibmodlit(mvd,[__RDPD1,day,__Day1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar10,__newcontextvar11)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,__newcontextvar12)),fllibmodlit(mvd,[__RDPD1,period,__Period1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar14,__newcontextvar15)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,__newcontextvar16)),fllibmodlit(mvd,[__RDPD1,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar18,__newcontextvar19)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,__newcontextvar20)),fllibmodlit(isa,[__RDPD1,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar22,__newcontextvar23)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,__newcontextvar24))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD2,room,__Room2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar26,__newcontextvar27)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,__newcontextvar28)),fllibmodlit(mvd,[__RDPD2,day,__Day2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar30,__newcontextvar31)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,__newcontextvar32)),fllibmodlit(mvd,[__RDPD2,period,__Period2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar34,__newcontextvar35)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,__newcontextvar36)),fllibmodlit(mvd,[__RDPD2,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar38,__newcontextvar39)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,__newcontextvar40)),fllibmodlit(isa,[__RDPD2,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar42,__newcontextvar43)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,__newcontextvar44))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD3,room,__Room3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar46,__newcontextvar47)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,__newcontextvar48)),fllibmodlit(mvd,[__RDPD3,day,__Day3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar50,__newcontextvar51)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,__newcontextvar52)),fllibmodlit(mvd,[__RDPD3,period,__Period3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar54,__newcontextvar55)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,__newcontextvar56)),fllibmodlit(mvd,[__RDPD3,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar58,__newcontextvar59)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar61,__newcontextvar60)),fllibmodlit(isa,[__RDPD3,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar62,__newcontextvar63)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar65,__newcontextvar64))]),fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__CO,groupNo,__GN,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar66,__newcontextvar67)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar69,__newcontextvar68)),fllibmodlit(mvd,[__CO,ofCourse,__Course,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar70,__newcontextvar71)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar73,__newcontextvar72)),fllibmodlit(mvd,[__CO,year,__Year,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar74,__newcontextvar75)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar77,__newcontextvar76)),fllibmodlit(mvd,[__CO,semester,__Sem,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar78,__newcontextvar79)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar81,__newcontextvar80)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar82,__newcontextvar83)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar85,__newcontextvar84)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar86,__newcontextvar87)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar89,__newcontextvar88)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD3,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar90,__newcontextvar91)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar93,__newcontextvar92)),fllibmodlit(isa,[__CO,'CourseOpening','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar94,__newcontextvar95)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar97,__newcontextvar96))]))))))))),null,'_$_$_ergo''rule_enabled'(8,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CO,__COR,__Course,__Day1,__Day2,__Day3,__GN,__ModuleName,__Period1,__Period2,__Period3,__RDPD1,__RDPD2,__RDPD3,__Room1,__Room2,__Room3,__Sem,__Year],[__COR,__Day1,__Day2,__Day3,__ModuleName,__Period1,__Period2,__Period3,__Room1,__Room2,__Room3]),true)).
?-(fllibinsrulesig(10,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,8,FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert0,__ModuleName,__COR,'_$ctxt'(_CallerModuleVar,10,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,groupNumber,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,10)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,10)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,10)),FLORA_THIS_WORKSPACE(d^mvd)(__COR,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,10))))),','(:(flrnewoid,fllibnewoid(__CO)),fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__CO,groupNo,__GN,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar6,__newcontextvar7)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newcontextvar8)),fllibmodlit(mvd,[__CO,ofCourse,__Course,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar10,__newcontextvar11)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,__newcontextvar12)),fllibmodlit(mvd,[__CO,year,__Year,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar14,__newcontextvar15)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,__newcontextvar16)),fllibmodlit(mvd,[__CO,semester,__Sem,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar18,__newcontextvar19)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,__newcontextvar20)),fllibmodlit(isa,[__CO,'CourseOpening','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar22,__newcontextvar23)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,__newcontextvar24))]))),null,'_$_$_ergo''rule_enabled'(10,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CO,__COR,__Course,__GN,__ModuleName,__Sem,__Year],[__COR,__ModuleName]),true)).
?-(fllibinsrulesig(12,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,9,FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert2,__ModuleName,','(__COR,','([__Room1,__Day1,__Period1],[__Room2,__Day2,__Period2])),'_$ctxt'(_CallerModuleVar,12,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,groupNumber,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,12)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,12)),','(FLORA_THIS_WORKSPACE(d^mvd)(__COR,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,12)),FLORA_THIS_WORKSPACE(d^mvd)(__COR,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,12))))),','(:(flrnewoid,fllibnewoid(__CO)),','(:(flrnewoid,fllibnewoid(__RDPD1)),','(:(flrnewoid,fllibnewoid(__RDPD2)),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD1,room,__Room1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar6,__newcontextvar7)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newcontextvar8)),fllibmodlit(mvd,[__RDPD1,day,__Day1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar10,__newcontextvar11)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,__newcontextvar12)),fllibmodlit(mvd,[__RDPD1,period,__Period1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar14,__newcontextvar15)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,__newcontextvar16)),fllibmodlit(mvd,[__RDPD1,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar18,__newcontextvar19)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,__newcontextvar20)),fllibmodlit(isa,[__RDPD1,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar22,__newcontextvar23)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,__newcontextvar24))]),','(fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__RDPD2,room,__Room2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar26,__newcontextvar27)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,__newcontextvar28)),fllibmodlit(mvd,[__RDPD2,day,__Day2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar30,__newcontextvar31)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,__newcontextvar32)),fllibmodlit(mvd,[__RDPD2,period,__Period2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar34,__newcontextvar35)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,__newcontextvar36)),fllibmodlit(mvd,[__RDPD2,duration,1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar38,__newcontextvar39)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,__newcontextvar40)),fllibmodlit(isa,[__RDPD2,'RoomDayPeriodDuration','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar42,__newcontextvar43)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,__newcontextvar44))]),fllibbtinsert(FLORA_THIS_MODULE_NAME,[fllibmodlit(mvd,[__CO,groupNo,__GN,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar46,__newcontextvar47)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,__newcontextvar48)),fllibmodlit(mvd,[__CO,ofCourse,__Course,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar50,__newcontextvar51)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,__newcontextvar52)),fllibmodlit(mvd,[__CO,year,__Year,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar54,__newcontextvar55)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,__newcontextvar56)),fllibmodlit(mvd,[__CO,semester,__Sem,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar58,__newcontextvar59)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar61,__newcontextvar60)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar62,__newcontextvar63)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar65,__newcontextvar64)),fllibmodlit(mvd,[__CO,teachingTimes,__RDPD2,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar66,__newcontextvar67)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar69,__newcontextvar68)),fllibmodlit(isa,[__CO,'CourseOpening','_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar70,__newcontextvar71)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar73,__newcontextvar72))]))))))),null,'_$_$_ergo''rule_enabled'(12,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CO,__COR,__Course,__Day1,__Day2,__GN,__ModuleName,__Period1,__Period2,__RDPD1,__RDPD2,__Room1,__Room2,__Sem,__Year],[__COR,__Day1,__Day2,__ModuleName,__Period1,__Period2,__Room1,__Room2]),true)).
?-(fllibinsrulesig(14,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,10,FLORA_THIS_WORKSPACE(d^tblflapply)(requested_courses,__RQL,__Year,__Semester,'_$ctxt'(_CallerModuleVar,14,__newcontextvar1)),','(fllibsetof(__newdontcarevar5,[],','(','(FLORA_THIS_WORKSPACE(d^isa)(__newdontcarevar5,'CourseOpeningRequest','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,14)),','(FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar5,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,14)),FLORA_THIS_WORKSPACE(d^mvd)(__newdontcarevar5,semester,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,14)))),fllibexecute_delayed_calls([__newdontcarevar5,__Semester,__Year],[])),__newvar6),=(__RQL,__newvar6)),null,'_$_$_ergo''rule_enabled'(14,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),null,true)).
?-(fllibinsrulesig(16,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,11,FLORA_THIS_WORKSPACE(d^nontblflapply)(generateOneByOne,__Year,__Semester,__Course,__GN,__Room,__Day,__Period,'_$ctxt'(_CallerModuleVar,16,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'RoomDayPeriodDuration','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,16)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,16)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(requested_courses,__CourseRequests,__Year,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,16)),','(writeln(-(courserequests,__CourseRequests)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CourseRequests,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,16)),','(!,','(','(FLORA_WORKSPACE(m1,d^isa)(___X,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,16)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,groupNo,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,16)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,16)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,16)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,semester,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,16)),FLORA_WORKSPACE(m1,d^mvd)(___X,teachingTimes,__RDPD,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,16))))))),','(FLORA_WORKSPACE(m1,d^mvd)(__RDPD,room,__Room,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,16)),','(FLORA_WORKSPACE(m1,d^mvd)(__RDPD,day,__Day,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,16)),FLORA_WORKSPACE(m1,d^mvd)(__RDPD,period,__Period,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,16))))))))))),null,'_$_$_ergo''rule_enabled'(16,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Course,__CourseRequests,__Day,__GN,__Period,__RDPD,__Room,__Semester,__Year,___X],[__Course,__Day,__GN,__Period,__Room,__Semester,__Year]),true)).
?-(fllibinsrulesig(18,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,12,FLORA_THIS_WORKSPACE(d^nontblflapply)(runFirstSolution,__TA,__Year,__Semester,'_$ctxt'(_CallerModuleVar,18,__newcontextvar1)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,18)),writeln('RFS1'),209,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'RoomDayPeriodDuration','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,18)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,18)),writeln('RFS2'),211,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,18)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,18)),writeln('RFS3'),213,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^tblflapply)(requested_courses,__CourseRequests,__Year,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,18)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,18)),','(writeln('RFS4'),writeln(-(courserequests,__CourseRequests))),215,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CourseRequests,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,18)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,18)),writeln('RFS5'),217,'generate_meeting_times8c.flr'),','(!,','(FLORA_THIS_WORKSPACE(d^nontblflapply)(gen,__TA,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,18)),fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,18)),writeln('RFS6'),220,'generate_meeting_times8c.flr')))))))))))),null,'_$_$_ergo''rule_enabled'(18,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CourseRequests,__Semester,__TA,__Year],[__Semester,__TA,__Year]),true)).
?-(fllibinsrulesig(20,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,13,FLORA_THIS_WORKSPACE(d^nontblflapply)(runAllSolutions,__TA,__Year,__Semester,'_$ctxt'(_CallerModuleVar,20,__newcontextvar1)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'RoomDayPeriodDuration','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,20)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,m1,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,20)),','(FLORA_THIS_WORKSPACE(d^tblflapply)(requested_courses,__CourseRequests,__Year,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,20)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CourseRequests,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,20)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(gen,__TA,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,20)),FLORA_THIS_WORKSPACE(d^nontblflapply)(printlist,__TA,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,20))))))),null,'_$_$_ergo''rule_enabled'(20,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CourseRequests,__Semester,__TA,__Year],[__Semester,__TA,__Year]),true)).
?-(fllibinsrulesig(22,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,14,FLORA_THIS_WORKSPACE(d^nontblflapply)(gen,__TA,'_$ctxt'(_CallerModuleVar,22,__newcontextvar1)),','(fllibsetof(__newdontcarevar11,[],','(','(','(FLORA_WORKSPACE(m1,d^isa)(___X,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,22)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,groupNo,__GN,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,22)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,ofCourse,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,22)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,year,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,22)),','(FLORA_WORKSPACE(m1,d^mvd)(___X,semester,__Sem,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,22)),FLORA_WORKSPACE(m1,d^mvd)(___X,teachingTimes,__RDPD,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,22))))))),','(','(FLORA_WORKSPACE(m1,d^mvd)(__RDPD,room,__Room,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,22)),','(FLORA_WORKSPACE(m1,d^mvd)(__RDPD,day,__Day,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,22)),FLORA_WORKSPACE(m1,d^mvd)(__RDPD,period,__Period,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,22)))),=(__newdontcarevar11,[__Course,__GN,__Year,__Sem,__Room,__Day,__Period]))),fllibexecute_delayed_calls([__Course,__Day,__GN,__Period,__RDPD,__Room,__Sem,__Year,__newdontcarevar11,___X],[])),__newvar12),=(__TA,__newvar12)),null,'_$_$_ergo''rule_enabled'(22,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__Course,__Day,__GN,__Period,__RDPD,__Room,__Sem,__TA,__Year,___X],[__TA]),true)).
?-(fllibinsrulesig(24,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,16,FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,[__CR|__CRs],'_$ctxt'(_CallerModuleVar,24,__newcontextvar1)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__CR,ofCourse,___CRSE,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,24)),FLORA_THIS_WORKSPACE(d^mvd)(___CRSE,lecture_hours,__LectureHours,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,24))),','(=(__LectureHours,0),','(!,','(FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert0,m1,__CR,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,24)),FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CRs,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,24)))))),null,'_$_$_ergo''rule_enabled'(24,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CR,__CRs,__LectureHours,___CRSE],[__CR,__CRs]),true)).
?-(fllibinsrulesig(26,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,17,FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,[__CR|__CRs],'_$ctxt'(_CallerModuleVar,26,__newcontextvar1)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar2,26)),writeln('GT1'),250,'generate_meeting_times8c.flr'),','(','(FLORA_THIS_WORKSPACE(d^isa)(__CR,'CourseOpeningRequest','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,26)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__CR,ofCourse,__CRSE,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,26)),','(FLORA_THIS_WORKSPACE(d^isa)(__CRSE,'Course','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar4,26)),FLORA_THIS_WORKSPACE(d^mvd)(__CRSE,lecture_hours,__LectureHours,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar3,26)))),','(FLORA_THIS_WORKSPACE(d^mvd)(__CR,maxStudentSize,__MaxStudentSize,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,26)),FLORA_THIS_WORKSPACE(d^mvd)(__CR,forProgram,__Program,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,26))))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,26)),writeln('GT2'),256,'generate_meeting_times8c.flr'),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__ClassRoom1,capacity,__Capacity1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar11,26)),FLORA_THIS_WORKSPACE(d^isa)(__ClassRoom1,'Classroom','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,26))),','(fllibdelayedliteral(=<,'generate_meeting_times8c.flr',259,[__MaxStudentSize,__Capacity1]),','(fllibifthen(FLORA_THIS_MODULE_NAME,=(__LectureHours,2),FLORA_THIS_WORKSPACE(d^isa)(__Day1,'Day','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,26)),261,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,';'(=(__LectureHours,3),=(__LectureHours,4)),FLORA_THIS_WORKSPACE(d^tblflapply)(before,__Day1,__Day2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar13,26)),262,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,26)),writeln('GT3'),264,'generate_meeting_times8c.flr'),','(FLORA_THIS_WORKSPACE(d^tblflapply)(doublePeriod,__Period11,__Period12,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar15,26)),','(=(__PossibleAllocation1a,[__ClassRoom1,__Day1,__Period11]),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom1,__Day1,__Period11,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar17,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day1,__Period11]),get(___X2)),271,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day1,__Period11,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar19,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day1,__Period11]),get(___X2)),276,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day1,__Period11,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,26))),','(=(__PossibleAllocation1b,[__ClassRoom1,__Day1,__Period12]),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom1,__Day1,__Period12,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar21,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day1,__Period12]),get(___X2)),287,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day1,__Period12,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar23,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day1,__Period12]),get(___X2)),292,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day1,__Period12,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar25,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,26)),writeln('GT4'),299,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,=(__LectureHours,2),FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert2,m1,','(__CR,','(__PossibleAllocation1a,__PossibleAllocation1b)),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar27,26)),301,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,';'(=(__LectureHours,3),=(__LectureHours,4)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__ClassRoom2,capacity,__Capacity2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar29,26)),FLORA_THIS_WORKSPACE(d^isa)(__ClassRoom2,'Classroom','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar28,26))),fllibdelayedliteral(=<,'generate_meeting_times8c.flr',309,[__MaxStudentSize,__Capacity2])),306,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar30,26)),writeln('GT5'),312,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,=(__LectureHours,3),','(FLORA_THIS_WORKSPACE(d^tblflapply)(period,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar31,26)),','(=(__PossibleAllocation2a,[__ClassRoom2,__Day2,__Period21]),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom2,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar32,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar33,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period21]),get(___X2)),320,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar34,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar35,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period21]),get(___X2)),325,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar36,26))),FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert3,m1,','(__CR,','(__PossibleAllocation1a,','(__PossibleAllocation1b,__PossibleAllocation2a))),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar37,26))))))))),314,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar38,26)),writeln('GT6'),335,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,=(__LectureHours,4),','(FLORA_THIS_WORKSPACE(d^tblflapply)(doublePeriod,__Period21,__Period22,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar39,26)),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar40,26)),writeln('GT61'),341,'generate_meeting_times8c.flr'),','(=(__PossibleAllocation2a,[__ClassRoom2,__Day2,__Period21]),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar41,26)),writeln('GT62'),345,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom2,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar42,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar43,26)),writeln('GT63'),349,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar44,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period21]),get(___X2)),352,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar45,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar46,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period21]),get(___X2)),357,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar47,26)),writeln('GT64'),361,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day2,__Period21,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar48,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar49,26)),writeln('GT65'),365,'generate_meeting_times8c.flr'),','(=(__PossibleAllocation2b,[__ClassRoom2,__Day2,__Period22]),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__ClassRoom2,__Day2,__Period22,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar50,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar51,26)),','(writeln(['Testing',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period22]),get(___X2)),371,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__CRSE,__Day2,__Period22,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar52,26))),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar53,26)),','(writeln(['Success',nott,'%clashesWithSameYearCourse',__Program,__CRSE,__Day2,__Period22]),get(___X2)),377,'generate_meeting_times8c.flr'),','(\+(FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day2,__Period22,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar54,26))),FLORA_THIS_WORKSPACE(d^nontblflapply)(t_single_insert4,m1,','(__CR,','(__PossibleAllocation1a,','(__PossibleAllocation1b,','(__PossibleAllocation2a,__PossibleAllocation2b)))),'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar55,26)))))))))))))))))))),337,'generate_meeting_times8c.flr'),','(fllibifthen(FLORA_THIS_MODULE_NAME,FLORA_THIS_WORKSPACE(d^tblflapply)(mode,debugGMT,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar56,26)),writeln('GT7'),386,'generate_meeting_times8c.flr'),FLORA_THIS_WORKSPACE(d^nontblflapply)(generate_times,__CRs,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar57,26))))))))))))))))))))))))))))))),null,'_$_$_ergo''rule_enabled'(26,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__CR,__CRSE,__CRs,__Capacity1,__Capacity2,__ClassRoom1,__ClassRoom2,__Day1,__Day2,__LectureHours,__MaxStudentSize,__Period11,__Period12,__Period21,__Period22,__PossibleAllocation1a,__PossibleAllocation1b,__PossibleAllocation2a,__PossibleAllocation2b,__Program,___X2],[__CR,__CRs]),true)).
?-(fllibinsrulesig(28,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,18,FLORA_THIS_WORKSPACE(d^nontblflapply)(t_del,__ModuleName,__ConceptName,'_$ctxt'(_CallerModuleVar,28,__newcontextvar1)),fllibbtdeleteall(FLORA_THIS_MODULE_NAME,[fllibmodlit(isa,[__newdontcarevar2,__ConceptName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar9)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,__newcontextvar11)),fllibmodlit(mvd,[__newdontcarevar2,__newdontcarevar3,__newdontcarevar4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar5)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newcontextvar7))]),null,'_$_$_ergo''rule_enabled'(28,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__ConceptName,__ModuleName,__newdontcarevar13],[__ConceptName,__ModuleName]),true)).
?-(fllibinsrulesig(30,'generate_meeting_times8c.flr','_$_$_ergo''descr_vars',FLORA_THIS_MODULE_NAME,19,FLORA_THIS_WORKSPACE(d^nontblflapply)(del,__ModuleName,__ConceptName,'_$ctxt'(_CallerModuleVar,30,__newcontextvar1)),fllibdeleteall(FLORA_THIS_MODULE_NAME,[fllibmodlit(isa,[__newdontcarevar2,__ConceptName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar9)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,__newcontextvar11)),fllibmodlit(mvd,[__newdontcarevar2,__newdontcarevar3,__newdontcarevar4,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar5)],__ModuleName,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newcontextvar7))]),null,'_$_$_ergo''rule_enabled'(30,'generate_meeting_times8c.flr',FLORA_THIS_MODULE_NAME),fllibexecute_delayed_calls([__ConceptName,__ModuleName,__newdontcarevar13],[__ConceptName,__ModuleName]),true)).


%%%%%%%%%%%%%%%%%%%%%%%%% Signatures for latent queries %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




%%%%%%%%%%%%%%%%%%%%%%% Queries found in the source file %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


 
#if !defined(FLORA_FLS2_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLS2_FILENAME  'generate_meeting_times8c.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

?-(:(flrutils,util_load_structdb('generate_meeting_times8c.ergo',FLORA_THIS_MODULE_NAME))).

/************************************************************************
  file: headerinc/flrtrailer_inc.flh

  Author(s): Michael Kifer

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

#include "flrtrailer.flh"

/***********************************************************************/

/************************************************************************
  file: headerinc/flrpreddef_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the Flora-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#include "flrpreddef.flh"

/***********************************************************************/

