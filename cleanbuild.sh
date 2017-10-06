#!/usr/bin/env bash

if [ ! -d "/bin" ]
then
    echo "*** Creating directory /bin"
    mkdir bin
fi



cd bin
echo "*** Cleaning up /bin/"
rm -rf *
echo "*** Running cmake .."
cmake ..


if [ "$(expr substr $(uname) 1 5)" == "Linux" ]
then
	echo "*** Running make"
	make
	cd src
	echo "*** Build complete."
	echo "*** Running luatest"
	./luatest
	cd ../..
else
	echo "*** Not Linux!? Ye will not be rewarded with automated compilation and running..."
	cd ..
fi