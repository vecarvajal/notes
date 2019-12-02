#!/bin/bash

# for editors that support tags and cscope

rm -rf GR* cscope.files

find \
$PWD \
-type f -regex '.*\.\(c\|cpp\|h\|hpp\|py\)' \
-o -path $PWD/toolchains/rpi/rpi-cross-toolchain/arm-linux-gnueabihf/lib -prune \
-o -path $PWD/toolchains/rpi/rpi-cross-toolchain/arm-linux-gnueabihf/usr/lib -prune \
-o -path $PWD/toolchains/rpi/rpi-cross-toolchain/arm-linux-gnueabihf/usr/include/python3.2mu -prune \
-o -path $PWD/toolchains/rpi/rpi-cross-toolchain/arm-linux-gnueabi -prune \
-o -path $PWD/build/3pp/boost -prune \
-o -path $PWD/build/3pp/asus_driver -prune \
-o -path $PWD/build/3pp/openssl -prune \
-o -path $PWD/build/3pp/boost/tools -prune \
-o -path $PWD/toolchains/rpi/rpi-cross-toolchain/arm-linux-gnueabihf/share/gcc-4.6.3/python -prune \
-o -path $PWD/toolchains/rpi/rpi-cross-toolchain/arm-linux-gnueabihf/share/gdb/python/ -prune \
-o -path $PWD/userland-master -prune \
-o -path $PWD/.git -prune \
> ./cscope.files

echo " building tags ... "
#gtags -i -f cscope.files
cscope -bqki cscope.files


ctags --languages=python,c,c++ --c++-kinds=+p --fields=+iaS --extra=+fq --python-kinds=-iv --fields=+l  -L cscope.files
echo " Finished ... "

