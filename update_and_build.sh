#! /bin/bash

BUILD_JOBS=-j1
FMT_FLAGS="-DBUILD_SHARED_LIBS=ON"
LIB2GEOM_FLAGS="-D2GEOM_BUILD_SHARED=ON -D2GEOM_CYTHON_BINDINGS=OFF -D2GEOM_BOOST_PYTHON=OFF -D2GEOM_TOYS=OFF -D2GEOM_TOYS_LPE=OFF -D2GEOM_USE_GPL_CODE=ON -D2GEOM_PERFORMANCE_TESTS=OFF"

echo Usage: $0 "<cmake configure flags>"

echo Updating...
git pull
git submodule update --init --recursive

./build_all.sh
