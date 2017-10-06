cmake_minimum_required(VERSION 3.0)

project(luatest)

find_package(Lua 5.1 REQUIRED)
if(LUA_FOUND)
	message( "Lua version " ${LUA_VERSION_STRING} " found in: " ${LUA_INCLUDE_DIR})
	message( "Lua libraries found: " ${LUA_LIBRARIES})
endif(LUA_FOUND)

add_subdirectory(src)