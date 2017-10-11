extern "C" 
{
	#include "lua.h"
	#include "lualib.h"
	#include "lauxlib.h"
}

#include "selene.h"

#include <iostream>
#include <string>
#include <cassert>


int main(int argc, char* argv[])
{
    sel::State state;
    state.Load("test.lua");
    //std::cout << static_cast<int>(state["a"]);


    return 0;
}