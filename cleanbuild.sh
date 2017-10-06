cd bin
echo "*** Removing bin/"
rm -rf *
echo "*** Running cmake .."
cmake ..
echo "*** Running make"
make
cd src
echo "*** Build complete."
echo "*** Running luatest"
./luatest
cd ../..
