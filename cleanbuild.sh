#!/usr/bin/env bash

set -e

# Make sure the build folder exists before doing any cd'ing
if [ ! -d "/build" ]
then
    echo "*** Creating directory /build"
    mkdir build
fi

# Go in there and build that shit
cd build
echo "*** Cleaning up /build/"
rm -rf *
echo "*** Running cmake .."
cmake ..

if [ "$(expr substr $(uname) 1 5)" == "Linux" ]
then
	echo "*** It seems you are running Linux. Everything will be prepared for you my master."
	echo "*** Running make"
	make
	cd src
	echo "*** Build complete."
	echo "*** Running luatest"
	./luatest
	cd ../..
else
	echo "*** Not Linux!? Ye will not be rewarded with automated compilation and running..."
	echo "*** A Visual Studio solution should be in /build/"
	cd ..
fi