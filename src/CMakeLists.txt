set(SOURCES
	main.cpp
	)

add_executable(luatest ${SOURCES})
target_link_libraries(luatest PUBLIC ${LUA_LIBRARIES})
target_compile_options(luatest PUBLIC -Wall -std=c++11)
include_directories(${LUA_INCLUDE_DIR} "../includes")
