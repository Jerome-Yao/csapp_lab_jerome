#!/bin/bash

# 脚本名称: run_make.sh

# 进入项目目录（如果需要）
# cd /path/to/your/project

# 执行 make clean
./dlc bits.c

make clean
if [ $? -ne 0 ]; then
    echo "make clean failed"
    exit 1
fi

# 执行 make
make
if [ $? -ne 0 ]; then
    echo "make failed"
    exit 1
fi

# 执行 ./btest
./btest
if [ $? -ne 0 ]; then
    echo "./btest failed"
    exit 1
fi
