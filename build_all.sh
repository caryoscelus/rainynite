#! /bin/bash

BUILD_JOBS=-j1
FMT_FLAGS="-DBUILD_SHARED_LIBS=ON"
LIB2GEOM_FLAGS="-D2GEOM_BUILD_SHARED=ON -D2GEOM_CYTHON_BINDINGS=OFF -D2GEOM_BOOST_PYTHON=OFF -D2GEOM_TOYS=OFF -D2GEOM_TOYS_LPE=OFF -D2GEOM_USE_GPL_CODE=ON -D2GEOM_PERFORMANCE_TESTS=OFF"

echo Usage: $0 "<cmake configure flags>"

echo Build fmt...
pushd fmt
mkdir -p build
cd build
[[ ! -f CMakeCache.txt ]] && cmake -GNinja ${FMT_FLAGS} "$@" .. || cmake "$@" . || exit 1
ninja ${BUILD_JOBS} || exit 1
ninja test
sudo ninja -j1 install
popd

echo Building lib2geom...
pushd lib2geom
mkdir -p build
cd build
[[ ! -f CMakeCache.txt ]] && cmake -GNinja ${LIB2GEOM_FLAGS} "$@" .. || cmake "$@" . || exit 1
ninja ${BUILD_JOBS} || exit 1
ninja test
sudo ninja -j1 install
popd

echo Building rainy-morph...
pushd morph
mkdir -p build
cd build
[[ ! -f CMakeCache.txt ]] && cmake -GNinja "$@" .. || cmake "$@" . || exit 1
ninja ${BUILD_JOBS} || exit 1
ninja test
sudo ninja -j1 install
popd

echo Building core...
pushd core
mkdir -p build
cd build
[[ ! -f CMakeCache.txt ]] && cmake -GNinja "$@" .. || cmake "$@" . || exit 1
ninja ${BUILD_JOBS} || exit 1
ninja test
sudo ninja -j1 install
popd

echo Building studio...
pushd studio
./test_moc.sh
mkdir -p build
cd build
[[ ! -f CMakeCache.txt ]] && cmake -GNinja "$@" .. || cmake "$@" . || exit 1
ninja ${BUILD_JOBS} || exit 1
# ninja test
# sudo ninja -j1 install
popd

echo All done!
echo you can run studio/build/studio/rainynite-studio now
