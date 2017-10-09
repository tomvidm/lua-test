extern "C" 
{
	#include "lua.h"
	#include "lualib.h"
	#include "lauxlib.h"
}

#include <iostream>

#include "LuaState.h"

int main(int argc, char* argv[])
{
    // create new Lua state
    lua::LuaState state;
    state.doFile("animation_encoding_test.lua");
    state.traverseTable();

    return 0;
}