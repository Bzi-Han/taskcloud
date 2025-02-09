#!/bin/bash
if [ ! -f "/enviroment.lock" ]; then
    cp /etc/apt/sources.list /etc/apt/sources.list.bak

    sed -i 's@//.*archive.ubuntu.com@//mirrors.tuna.tsinghua.edu.cn@g' /etc/apt/sources.list

    sed -i 's/security.ubuntu.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list

    apt-get update

    apt-get install python3.10-dev -y

    touch /enviroment.lock
fi