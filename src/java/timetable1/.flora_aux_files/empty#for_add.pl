
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

#define FLORA_COMPILATION_ID 13

#mode save
#mode nocomment "%"
#define FLORA_THIS_FILENAME  'empty.flr'
#mode restore
:-(import(from(/(flora_warning_line,1),flrprint))).
?-(catch(abolish_all_tables,_,flora_warning_line('a tabled subgoal depends on ~w.~n		  The program might not function correctly.~n		  Offending file:    ~w~n		  Offending module:  ~w~n', ['\\add', FLORA_THIS_FILENAME, FLORA_THIS_MODULE_NAME]))).
#ifndef FLORA_TABLING_METHODS_INCLUDED
#include "flora_tabling_methods.flh"
#endif
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_ignore_undefined_errors),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_ignore_undefined_errors)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_ignore_undefined_errors)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_ignore_undefined_errors)(_h22822,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_ignore_undefined_errors))(_h22822,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_ignore_undefined_errors)(_h22822,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_ignore_undefined_errors))(_h22822,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_turn_off_debug),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_off_debug)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_off_debug)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_turn_off_debug)(_h23761,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_off_debug))(_h23761,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_turn_off_debug)(_h23761,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_off_debug))(_h23761,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_turn_off_debug_all),1)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_off_debug_all)),1),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_off_debug_all)),1)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_turn_off_debug_all)(FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_off_debug_all))(FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_turn_off_debug_all)(FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_off_debug_all))(FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_turn_on_debug),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_on_debug)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_on_debug)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_turn_on_debug)(_h25409,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_on_debug))(_h25409,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_turn_on_debug)(_h25409,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_on_debug))(_h25409,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(system_turn_on_debug_all),1)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_on_debug_all)),1),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_on_debug_all)),1)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(system_turn_on_debug_all)(FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(system_turn_on_debug_all))(FWContext))), assert(:-(FLORA_THIS_WORKSPACE(system_turn_on_debug_all)(FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(system_turn_on_debug_all))(FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(turn_debug_off_for_call),4)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_debug_off_for_call)),4),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_debug_off_for_call)),4)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(turn_debug_off_for_call)(_h27025,_h27027,_h27029,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_debug_off_for_call))(_h27025,_h27027,_h27029,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(turn_debug_off_for_call)(_h27025,_h27027,_h27029,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_debug_off_for_call))(_h27025,_h27027,_h27029,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(turn_off_debug_list),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_off_debug_list)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_off_debug_list)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(turn_off_debug_list)(_h27864,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_off_debug_list))(_h27864,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(turn_off_debug_list)(_h27864,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_off_debug_list))(_h27864,FWContext)))) ) ).
?-( ';'( ->(current_predicate(/(FLORA_THIS_WORKSPACE(turn_on_debug_list),2)),true), (dynamic(as(','(/(FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_on_debug_list)),2),/(FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_on_debug_list)),2)),opaque)), assert(:-(FLORA_THIS_WORKSPACE(turn_on_debug_list)(_h28627,FWContext),FLORA_THIS_WORKSPACE(FLDYNAPREFIX_UNQ(turn_on_debug_list))(_h28627,FWContext))), assert(:-(FLORA_THIS_WORKSPACE(turn_on_debug_list)(_h28627,FWContext),FLORA_THIS_WORKSPACE(FLDYNZPREFIX_UNQ(turn_on_debug_list))(_h28627,FWContext)))) ) ).
 
#if !defined(FLORA_FLD_FILENAME)
#if !defined(FLORA_LOADDYN_DATA)
#define FLORA_LOADDYN_DATA
#endif
#mode save
#mode nocomment "%"
#define FLORA_FLD_FILENAME  'empty#for_add.fld'
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
#define FLORA_FLS_FILENAME  'empty.fls'
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
#define FLORA_FLS2_FILENAME  'empty.fls2'
#mode restore
?-(:(flrutils,flora_loaddyn_data(FLORA_FLS2_FILENAME,FLORA_THIS_MODULE_NAME,'fls2'))).
#else
#if !defined(FLORA_READ_CANONICAL_AND_INSERT)
#define FLORA_READ_CANONICAL_AND_INSERT
#endif
?-(:(flrutils,flora_read_symbols_canonical_and_insert(FLORA_FLS2_FILENAME,FLORA_THIS_FLS_STORAGE,_SymbolErrNum))).
#endif

