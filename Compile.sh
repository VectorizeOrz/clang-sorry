#!/bin/bash

#Configure
cmake -S llvm -B build -G Ninja -DLLVM_ENABLE_PROJECTS="clang" -DCMAKE_BUILD_TYPE=Release

#Compile
ninja -C build -j8

#Test
#ninja -C build check-all

#Install
sudo cmake --install build
sudo rm -f /usr/local/bin/clang-sorry /usr/local/bin/clang-sorry++
sudo ln -s /usr/local/bin/clang-21 /usr/local/bin/clang-sorry
sudo ln -s /usr/local/bin/clang-21 /usr/local/bin/clang-sorry++
