#include "LuaState.h"

namespace lua
{
	LuaState::LuaState()
	{
		luaState = luaL_newstate();
	}

	LuaState::~LuaState()
	{
		lua_close(luaState);
	}

	void LuaState::traverseTable()
	{
		int index = 0; // ?????????????????+
		if (lua_istable(luaState, index))
		{
			lua_pushnil(luaState);
			while (lua_next(luaState, index))
			{
				printf("%s - %s\n",
						lua_typename(luaState, lua_type(luaState, -2)),
						lua_typename(luaState, lua_type(luaState, -1)));
				lua_pop(luaState, 1);
			}
		}
	}

	int LuaState::doFile(const char* filename)
	{
		return luaL_dofile(luaState, filename);
	}
}