#pragma once

extern "C" 
{
	#include "lua.h"
	#include "lualib.h"
	#include "lauxlib.h"
}

#include <string>

namespace lua
{
	class LuaState
	{
	public:
		LuaState();
		~LuaState();
		void traverseTable();
		int doFile(const char* filename);
	private:
		lua_State* luaState;
	};
}