#!/usr/bin/env bash

set -e

mkdir -p build




# Go in there and build that shit
cd build

if [ $1 == "clean" ]
then
	echo "*** Cleaning up /build/"
	rm -rf *
fi

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