## Prerequisites
* Lua 5.1
* CMake

## How to build
Go to repository folder and run `build.sh clean` from terminal or Git Bash or something.

### Linux
Make sure prerequisites are installed using magic apt-get commands and run `/build.sh`

### Windows
Download Lua libraries, extract them to some folder and add said folder to system PATH.
Example: lua5_1_4_Win32_dll8_lib.zip from https://sourceforge.net/projects/luabinaries/files/5.1.4/Windows%20Libraries/
CMake should now be able to find these libraries using find_package.

