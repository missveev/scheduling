
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

#define FLORA_COMPILATION_ID 6

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'instances.flr'
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
 
#if !defined(FLORA_FDB_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FDB_FILENAME  'instances#for_add.fdb'
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
#define FLORA_FLD_FILENAME  'instances#for_add.fld'
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
#define FLORA_FLS_FILENAME  'instances.fls'
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

?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',77,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,monday,wednesday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',78,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,monday,thursday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',79,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,tuesday,thursday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',80,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,tuesday,friday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',81,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,wednesday,friday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',82,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,wednesday,thursday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',83,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,monday,friday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',84,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,monday,tuesday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',85,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,tuesday,wednesday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',86,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(before,thursday,friday,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',92,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(period,1,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',93,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(period,2,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',94,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(period,3,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',95,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(period,4,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',96,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(period,5,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',97,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(period,6,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',98,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(period,7,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',99,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(period,8,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',100,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(doublePeriod,1,2,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',101,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(doublePeriod,3,4,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',102,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(doublePeriod,5,6,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).
?-(fllibinsertrule_z(FLORA_THIS_MODULE_NAME,[flsysruleupdate(__newvar1,dynrule('instances.flr'),'_$_$_flora''descr_vars',103,['_$_$_flora''prop_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,type,rule,'_$_$_flora''descr_vars'),'_$_$_flora''tag_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,__newvar1,'_$_$_flora''descr_vars'),'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),'_$_$_flora''bool_descriptor'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME,strict,'_$_$_flora''descr_vars')],[FLORA_THIS_WORKSPACE(d^tblflapply)(doublePeriod,7,8,'_$ctxt'(_DynRuleCallerModuleVar,__newvar1,__newcontextvar2))],'\\true',__newvar3,__newvar4,true,[null],[null],'_$_$_flora''rule_enabled'(__newvar1,dynrule('instances.flr'),FLORA_THIS_MODULE_NAME),[null],true)])).


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
#define FLORA_FLS2_FILENAME  'instances.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

