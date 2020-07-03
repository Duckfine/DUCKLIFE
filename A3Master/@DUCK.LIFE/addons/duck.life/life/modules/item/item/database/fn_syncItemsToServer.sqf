#include "\duck.core\script_macros.hpp"
/*

  Author: Duckfine
  Date created: 3-7-2020 17:57

  Description
    Synchronizes the items in MySQL to the A3 Cache (UINamespace)

  Parameter:
    - <type> <name>

  Returns:
    - <type> <name>


 */




private[

  "_placeholder01",
  "_placeholder02"

];


params[

  ["_ph01", "", ["a"]],
  ["_ph02", "", ["a"]]

];


_schema = DEF_DB_GET_SCHEMA("db_life", "tblListItems", "schema");
_query = "SELECT item.nameClass, type.name as 'type', item.isVirtual, item.nameDisplay, item.priceBuy, item.priceSell FROM list_items item JOIN list_item_types type on item.type = type.id;";
_databaseResult = DEF_DB_MYSQL_EXEC_QUERY_RS(_query);


_toStore = [];
_toStore = _databaseResult;
// Here could be some logic
/*
{
	_toStore pushBack _x;
	
} forEach _databaseResult;
*/

uiNamespace setVariable ["SUDC_V_ITEMLIST", _toStore];




















