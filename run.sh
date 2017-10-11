set -e

cd build/src
echo "*** Running luatest"
./luatest
echo "*** Luatest successfully ran"
cd ../..