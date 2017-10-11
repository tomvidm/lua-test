cmake_minimum_required(VERSION 3.0)

project(luatest)

find_package(Lua 5.2 REQUIRED)

if(LUA_FOUND)
	message( "*** Lua version " ${LUA_VERSION_STRING} " found in: " ${LUA_INCLUDE_DIR})
endif(LUA_FOUND)

add_subdirectory(src)
