#!/bin/bash

export CFLAGS="-O2 -Wl,-S $CFLAGS"

./configure --prefix=$PREFIX --host=$HOST

make -j$CPU_COUNT
make check -j$CPU_COUNT
make install -j$CPU_COUNT

find $PREFIX -name '*.la' -delete
