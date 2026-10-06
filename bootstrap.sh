#!/bin/bash

echo "#"
echo "# arc installer v0.1"
echo "#"
echo "# =========  Made By  ======="
echo "bitetheapple, aurelius, australis"
echo "# ========= Thanks to ======="
echo "# bigi,julek,dumbassfireglitch"
echo "#==========================="
echo ""

UNAME="Linux"
#UNAME=$(uname) # the running OS
ARCH=$(uname -m) # System architecture (x86_64, arm64, risc-v etc)

echo "[i] Running on ${UNAME} (${ARCH})"
echo "[i] Checking if the OS is valid..."
if [ "$UNAME" = "Darwin" ]; then
    echo "[i] OS is valid :)"
    echo "[i] installing XCode Command Line tools, please wait :)"
    xcode-select --install
    echo "[i] Nice! We are done, handing off to stage 2 now :)"
    mkdir -p /tmp/arcinst
    # the rest comes in src/main-installer.py
elif [ "$UNAME" = "Linux" ]; then
    echo "[i] OS is valid :)"
    echo "---Before continuing, please make sure a Python interpreter is installed and in your $ PATH---"
    echo "[i] sleeping 10 seconds for you to read this..."
    sleep 10
    echo "[i] Handing off to stage 2 now :)"
    mkdir -p /tmp/arcinst
else
    echo "i regret to inform you that the OS you are running on is not supported :( "
    echo "however, hope is not lost yet. try compiling arc from the repo and installing it manually"
    echo "k bye"
    exit 1
fi
