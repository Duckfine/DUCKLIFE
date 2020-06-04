/*

  Author: Duckfine
  Date created: 28-5-2020 21:19

  Description:
	Adds an item to player (cache)

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

  "_databaseID",
  "_databaseSchema",
  "_databaseKey", // i.e. invVirtual
  "_steamID64Sender",
  "_item",
  "_count"

];

_inventory = [_databaseID, _steamID64Sender, _databaseSchema, _databaseKey] call DUC_CORE_redis_fnc_listEntryGet;
_inventory = [_inventory, _item, _count] call DUC_CORE_redis_fnc_invAddItem;
[_databaseID, _steamID64, _inventory, _schema, "invVirtual"] call DUC_CORE_redis_fnc_listEntryUpdate;

true;
