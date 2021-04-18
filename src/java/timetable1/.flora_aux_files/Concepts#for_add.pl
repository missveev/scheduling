
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

#define FLORA_COMPILATION_ID 3

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'Concepts.flr'
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
  file: syslibinc/flraggmax_inc.flh

  Author(s): Guizhen Yang

  This file is automatically included by the FLORA-2 compiler.
************************************************************************/

:-(compiler_options([xpp_on])).

#mode standard Prolog

#if !defined(FLORA_TERMS_FLH)
#define FLORA_TERMS_FLH
#include "flora_terms.flh"
#endif

?-(:(flrlibman,flora_load_library(FLLIBMAX))).

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
 
#if !defined(FLORA_FDB_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FDB_FILENAME  'Concepts#for_add.fdb'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FDB_FILENAME,FLORA_THIS_MODULE_NAME,'fdb'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_canonical_and_insert(FLORA_FDB_FILENAME,FLORA_THIS_FDB_STORAGE))).
#endif

 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'Concepts#for_add.fld'
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
#define FLORA_FLS_FILENAME  'Concepts.fls'
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

?-(','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?X',__X),=('?Transcript',__Transcript),=('?MRRAS',__MRRAS),=('?TSD',__TSD)])),','(:(flrwhen,flora_put_attr(__newvar3,'\\$dynrule variable',[=('?X',__X),=('?MRRAS',__MRRAS)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('Concepts.flr'),'_$_$_flora''descr_vars',8,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)(__X,mostRecentRealAcademicSemester,__MRRAS,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],','(FLORA_THIS_WORKSPACE(d^isa)(__X,'Student','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,__newvar1)),','(FLORA_THIS_WORKSPACE(d^mvd)(__Transcript,student,__X,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newvar1)),','(','(fllibmax(__newdontcarevar10,[],','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Transcript,semesterData,__TSD,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newvar1)),','(FLORA_THIS_WORKSPACE(d^mvd)(__TSD,realAcademicTerm,__newdontcarevar10,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newvar1)),FLORA_THIS_WORKSPACE(d^mvd)(__TSD,registrationStatus,registered,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newvar1)))),fllibexecute_delayed_calls([__newdontcarevar10,__TSD,__Transcript],[])),__newvar11),=(__MRRAS,__newvar11)),!))),__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),[fllibexecute_delayed_calls([__MRRAS,__TSD,__Transcript,__X],[__MRRAS,__X])],true)])))).
?-(','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?X',__X),=('?MRRAS',__MRRAS)])),','(:(flrwhen,flora_put_attr(__newvar3,'\\$dynrule variable',[=('?X',__X),=('?MRRAS',__MRRAS)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('Concepts.flr'),'_$_$_flora''descr_vars',9,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)(__X,mostRecentRealAcademicSemester,__MRRAS,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],','(FLORA_THIS_WORKSPACE(d^isa)(__X,'Student','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,__newvar1)),=(__MRRAS,0)),__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),[null],true)])))).
?-(','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?X',__X),=('?Transcript',__Transcript),=('?LastActualSemester',__LastActualSemester),=('?TSD',__TSD),=('?Semester',__Semester),=('?CAS',__CAS)])),','(:(flrwhen,flora_put_attr(__newvar3,'\\$dynrule variable',[=('?X',__X),=('?CAS',__CAS)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('Concepts.flr'),'_$_$_flora''descr_vars',10,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)(__X,currentAcademicSemester,__CAS,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],','(FLORA_THIS_WORKSPACE(d^isa)(__X,'Student','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,__newvar1)),','(FLORA_THIS_WORKSPACE(d^mvd)(__Transcript,student,__X,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newvar1)),','(','(fllibmax(__newdontcarevar11,[],','(','(FLORA_THIS_WORKSPACE(d^mvd)(__Transcript,semesterData,__TSD,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newvar1)),','(FLORA_THIS_WORKSPACE(d^mvd)(__TSD,actualAcademicTerm,__newdontcarevar11,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar8,__newvar1)),','(FLORA_THIS_WORKSPACE(d^mvd)(__TSD,registrationStatus,registered,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar9,__newvar1)),','(FLORA_THIS_WORKSPACE(d^mvd)(__TSD,whichSemester,__Semester,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar10,__newvar1)),';'(=(__Semester,spring),=(__Semester,fall)))))),fllibexecute_delayed_calls([__newdontcarevar11,__Semester,__TSD,__Transcript],[])),__newvar12),=(__LastActualSemester,__newvar12)),','(fllibdelayedliteral('\\is','Concepts.flr',62,[__CAS,+(__LastActualSemester,1)]),!)))),__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),[fllibexecute_delayed_calls([__CAS,__LastActualSemester,__Semester,__TSD,__Transcript,__X],[__CAS,__X])],true)])))).
?-(','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?X',__X),=('?CAS',__CAS)])),','(:(flrwhen,flora_put_attr(__newvar3,'\\$dynrule variable',[=('?X',__X),=('?CAS',__CAS)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('Concepts.flr'),'_$_$_flora''descr_vars',11,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)(__X,currentAcademicSemester,__CAS,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],','(FLORA_THIS_WORKSPACE(d^isa)(__X,'Student','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,__newvar1)),=(__CAS,1)),__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),[null],true)])))).
?-(','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?X',__X)])),','(:(flrwhen,flora_put_attr(__newvar3,'\\$dynrule variable',[=('?X',__X)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('Concepts.flr'),'_$_$_flora''descr_vars',12,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)(__X,turkishOrForeign,turkish,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],','(FLORA_THIS_WORKSPACE(d^isa)(__X,'Student','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,__newvar1)),','(';'(FLORA_THIS_WORKSPACE(d^mvd)(__X,nationality,turkish,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar6,__newvar1)),FLORA_THIS_WORKSPACE(d^mvd)(__X,nationality,turkish_cypriot,'_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar7,__newvar1))),!)),__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),[null],true)])))).
?-(','(:(flrwhen,flora_put_attr(__newvar4,'\\$dynrule variable',[=('?X',__X)])),','(:(flrwhen,flora_put_attr(__newvar3,'\\$dynrule variable',[=('?X',__X)])),fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('Concepts.flr'),'_$_$_flora''descr_vars',13,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^mvd)(__X,turkishOrForeign,foreign,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],FLORA_THIS_WORKSPACE(d^isa)(__X,'Student','_$ctxt'(FLORA_THIS_MODULE_NAME,__newcontextvar5,__newvar1)),__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('Concepts.flr'),FLORA_THIS_MODULE_NAME),[null],true)])))).


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
#define FLORA_FLS2_FILENAME  'Concepts.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

