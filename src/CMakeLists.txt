set(SOURCES
	main.cpp
	)

add_executable(luatest ${SOURCES})
target_link_libraries(luatest PUBLIC ${LUA_LIBRARIES})
include_directories(${LUA_INCLUDE_DIR})