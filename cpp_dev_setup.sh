#!/bin/bash

# Bash Script to setup my C++ dev environment

echo "========================================"
echo "        C++ Dev Env Setup Script        "
echo "========================================"
echo ""
echo "========================================"
echo "          Installing Compilers          "
echo "========================================"

echo ">> apt-get update"
sudo apt-get update

echo ">> Installing gcc"
sudo apt-get install gcc

echo ">> Installing g++"
sudo apt-get install g++

echo "========================================"
echo "      Installing Build Essentials       "
echo "========================================"

sudo apt-get install build-essential

echo "========================================"
echo "    Check If Install Was Successful     "
echo "========================================"


# Check is g++ exists now
if ! command -v g++ 2>&1 >/dev/null
then
    echo "g++ could not be found"
    echo ">> Install Failed"
    exit 1
else
    g++ --version
    echo ">> Install Successful"
fi