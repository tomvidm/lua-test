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
    state.Load("../../src/animation_encoding_test.lua");
    std::cout << (int)(state["testSpritesheet"]["animations"]["animation_00"]["frames"][1][1]);


    return 0;
}