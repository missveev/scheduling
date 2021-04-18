
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

#define FLORA_COMPILATION_ID 12

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'constraints.ergo'
#mode restore
:-(import(from(/(flora_warning_line,1),flrprint))).
?-(catch(abolish_all_tables,_,flora_warning_line('a tabled subgoal depends on ~w.~n		  The program might not function correctly.~n		  Offending file:    ~w~n		  Offending module:  ~w~n', ['\\add', FLORA_THIS_FILENAME, FLORA_THIS_MODULE_NAME]))).
/************************************************************************
  file: syslibinc/flrdynrule_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLSYSRULEUPDATE))).

/***********************************************************************/

/************************************************************************
  file: syslibinc/flrdynrule_inc.flh

  Author(s): Chang Zhao

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLSYSRULEUPDATE))).

/***********************************************************************/

#ifndef FLORA_TABLING_METHODS_INCLUDED
#include "flora_tabling_methods.flh"
#endif
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_ignore_undefined_errors),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_ignore_undefined_errors)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_ignore_undefined_errors)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_ignore_undefined_errors)(_h175309,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_ignore_undefined_errors))(_h175309,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_ignore_undefined_errors)(_h175309,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_ignore_undefined_errors))(_h175309,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_turn_off_debug),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_off_debug)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_off_debug)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_turn_off_debug)(_h176248,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_off_debug))(_h176248,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_turn_off_debug)(_h176248,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_off_debug))(_h176248,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_turn_off_debug_all),1)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_off_debug_all)),1),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_off_debug_all)),1)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_turn_off_debug_all)(FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_off_debug_all))(FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_turn_off_debug_all)(FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_off_debug_all))(FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_turn_on_debug),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_on_debug)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_on_debug)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_turn_on_debug)(_h177896,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_on_debug))(_h177896,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_turn_on_debug)(_h177896,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_on_debug))(_h177896,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_turn_on_debug_all),1)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_on_debug_all)),1),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_on_debug_all)),1)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_turn_on_debug_all)(FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_on_debug_all))(FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_turn_on_debug_all)(FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_on_debug_all))(FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(turn_debug_off_for_call),4)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_debug_off_for_call)),4),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_debug_off_for_call)),4)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(turn_debug_off_for_call)(_h179512,_h179514,_h179516,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_debug_off_for_call))(_h179512,_h179514,_h179516,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(turn_debug_off_for_call)(_h179512,_h179514,_h179516,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_debug_off_for_call))(_h179512,_h179514,_h179516,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(turn_off_debug_list),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_off_debug_list)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_off_debug_list)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(turn_off_debug_list)(_h180351,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_off_debug_list))(_h180351,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(turn_off_debug_list)(_h180351,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_off_debug_list))(_h180351,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(turn_on_debug_list),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_on_debug_list)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_on_debug_list)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(turn_on_debug_list)(_h181114,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_on_debug_list))(_h181114,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(turn_on_debug_list)(_h181114,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_on_debug_list))(_h181114,FWContext)))) ) ).
 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'constraints#for_add.fld'
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
#define FLORA_FLS_FILENAME  'constraints.fls'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS_FILENAME,FLORA_THIS_MODULE_NAME,'fls'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif


%%%%%%%%%%%%%%%%%%%%%%%%%%% Rule insertion statements %%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

?-(','(:(flrwhen,flora_put_attr(__newvar5,'\\$dynrule variable',[=('?Room',__Room),=('?Day',__Day),=('?Period',__Period)])),','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?Room',__Room),=('?Day',__Day),=('?Period',__Period)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('constraints.flr'),'_$_$_ergo''descr_vars',3,['_$_$_ergo''prop_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_ergo''descr_vars'),'_$_$_ergo''tag_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_ergo''descr_vars'),'_$_$_ergo''rule_enabled'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME),'_$_$_ergo''bool_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_ergo''descr_vars')],[FLORA_THIS_WORKSPACE(d^nontblflapply)(alreadyTakenRDPD,__Room,__Day,__Period,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar2,__newcontextvar3))],','(','(FLORA_WORKSPACE(m1,d^isa)(___RDPD,'RoomDayPeriodDuration','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,__newcontextvar13)),','(FLORA_WORKSPACE(m1,d^mvd)(___RDPD,room,__Room,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),','(FLORA_WORKSPACE(m1,d^mvd)(___RDPD,day,__Day,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newcontextvar9)),FLORA_WORKSPACE(m1,d^mvd)(___RDPD,period,__Period,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11))))),!),__newvar4,__newvar5,true,[null],[null],'_$_$_ergo''rule_enabled'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME),[fllibexecute_delayed_calls([__Day,__Period,__Room,___RDPD],[__Day,__Period,__Room])],true)])))).
?-(','(:(flrwhen,flora_put_attr(__newvar5,'\\$dynrule variable',[=('?Day',__Day),=('?Period',__Period)])),','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?Day',__Day),=('?Period',__Period)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('constraints.flr'),'_$_$_ergo''descr_vars',4,['_$_$_ergo''prop_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_ergo''descr_vars'),'_$_$_ergo''tag_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_ergo''descr_vars'),'_$_$_ergo''rule_enabled'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME),'_$_$_ergo''bool_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_ergo''descr_vars')],[FLORA_THIS_WORKSPACE(d^nontblflapply)(onWednesdayAfternoon,__Day,__Period,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar2,__newcontextvar3))],','(=(__Day,wednesday),';'(=(__Period,7),=(__Period,8))),__newvar4,__newvar5,true,[null],[null],'_$_$_ergo''rule_enabled'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME),[null],true)])))).
?-(','(:(flrwhen,flora_put_attr(__newvar5,'\\$dynrule variable',[=('?Course2',__Course2),=('?Day2',__Day2),=('?Period2',__Period2),=('?Course1',__Course1),=('?Day1',__Day1),=('?Period1',__Period1),=('?Program',__Program),=('?Syllabus',__Syllabus),=('?Year1',__Year1),=('?Semester1',__Semester1),=('?CourseType1',__CourseType1),=('?Year2',__Year2),=('?Semester2',__Semester2),=('?CourseType2',__CourseType2)])),','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?Program',__Program),=('?Course1',__Course1),=('?Day1',__Day1),=('?Period1',__Period1)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('constraints.flr'),'_$_$_ergo''descr_vars',5,['_$_$_ergo''prop_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_ergo''descr_vars'),'_$_$_ergo''tag_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_ergo''descr_vars'),'_$_$_ergo''rule_enabled'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME),'_$_$_ergo''bool_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_ergo''descr_vars')],[FLORA_THIS_WORKSPACE(d^nontblflapply)(clashesWithSameYearCourse,__Program,__Course1,__Day1,__Period1,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar2,__newcontextvar3))],','(','(FLORA_WORKSPACE(m1,d^isa)(___CourseOpening,'CourseOpening','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,__newcontextvar15)),','(FLORA_WORKSPACE(m1,d^mvd)(___CourseOpening,ofCourse,__Course2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),','(FLORA_WORKSPACE(m1,d^mvd)(___CourseOpening,teachingTimes,___RDPD,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,__newcontextvar13)),','(FLORA_WORKSPACE(m1,d^mvd)(___RDPD,day,__Day2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newcontextvar9)),FLORA_WORKSPACE(m1,d^mvd)(___RDPD,period,__Period2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)))))),','(\=(__Course1,__Course2),','(\+(FLORA_THIS_WORKSPACE(d^mvd)(__Course1,hasPrerequisite,__Course2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,__newcontextvar17))),','(\+(FLORA_THIS_WORKSPACE(d^mvd)(__Course2,hasPrerequisite,__Course1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar18,__newcontextvar19))),','(=(__Day1,__Day2),','(=(__Period1,__Period2),','(FLORA_THIS_WORKSPACE(d^isa)(__Program,'AcademicProgram','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar20,__newcontextvar21)),','(FLORA_THIS_WORKSPACE(d^mvd)(__Program,syllabus,__Syllabus,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar22,__newcontextvar23)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(courseInSyllabus,__Syllabus,___SyllabusEntry1,__Course1,__Year1,__Semester1,__CourseType1,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar24,__newcontextvar25)),','(FLORA_THIS_WORKSPACE(d^nontblflapply)(courseInSyllabus,__Syllabus,___SyllabusEntry2,__Course2,__Year2,__Semester2,__CourseType2,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar26,__newcontextvar27)),','(';'(','(=(__Year1,__Year2),','(=(__Semester1,__Semester2),','(=(__CourseType1,'NormalCourse'),=(__CourseType2,'NormalCourse')))),';'(','(=(3,4),','(=(__CourseType1,'CmpeAreaElective'),=(__CourseType2,'CmpeAreaElective'))),';'(','(=(3,4),','(=(__CourseType1,'CmpeAreaElective'),=(__Year2,senior))),','(=(3,4),','(=(__CourseType2,'CmpeAreaElective'),=(__Year1,senior)))))),!))))))))))),__newvar4,__newvar5,true,[null],[null],'_$_$_ergo''rule_enabled'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME),[fllibexecute_delayed_calls([__Course1,__Course2,__CourseType1,__CourseType2,__Day1,__Day2,__Period1,__Period2,__Program,__Semester1,__Semester2,__Syllabus,__Year1,__Year2,___CourseOpening,___RDPD,___SyllabusEntry1,___SyllabusEntry2],[__Course1,__Day1,__Period1,__Program])],true)])))).
?-(','(:(flrwhen,flora_put_attr(__newvar5,'\\$dynrule variable',[=('?Syllabus',__Syllabus),=('?SyllabusEntry',__SyllabusEntry),=('?Course',__Course),=('?Year',__Year),=('?Semester',__Semester),=('?CourseType',__CourseType)])),','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?Syllabus',__Syllabus),=('?SyllabusEntry',__SyllabusEntry),=('?Course',__Course),=('?Year',__Year),=('?Semester',__Semester),=('?CourseType',__CourseType)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('constraints.flr'),'_$_$_ergo''descr_vars',6,['_$_$_ergo''prop_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_ergo''descr_vars'),'_$_$_ergo''tag_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_ergo''descr_vars'),'_$_$_ergo''rule_enabled'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME),'_$_$_ergo''bool_descriptor'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_ergo''descr_vars')],[FLORA_THIS_WORKSPACE(d^nontblflapply)(courseInSyllabus,__Syllabus,__SyllabusEntry,__Course,__Year,__Semester,__CourseType,'_$ctxt'(_DynRuleCallerModuleVar,__newcontextvar2,__newcontextvar3))],','(FLORA_THIS_WORKSPACE(d^isa)(__Syllabus,'Syllabus','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newcontextvar7)),','(FLORA_THIS_WORKSPACE(d^mvd)(__Syllabus,syllabusEntry,__SyllabusEntry,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newcontextvar9)),','(','(FLORA_THIS_WORKSPACE(d^mvd)(__SyllabusEntry,course,__Course,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newcontextvar11)),','(FLORA_THIS_WORKSPACE(d^mvd)(__SyllabusEntry,whichYear,__Year,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar12,__newcontextvar13)),','(FLORA_THIS_WORKSPACE(d^mvd)(__SyllabusEntry,whichSemester,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar14,__newcontextvar15)),FLORA_THIS_WORKSPACE(d^mvd)(__SyllabusEntry,courseType,__CourseType,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar16,__newcontextvar17))))),!))),__newvar4,__newvar5,true,[null],[null],'_$_$_ergo''rule_enabled'(__newvar1,dynrule('constraints.flr'),FLORA_THIS_MODULE_NAME),[null],true)])))).


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
#define FLORA_FLS2_FILENAME  'constraints.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

