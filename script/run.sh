#!/bin/bash

if [ "$OS" == "Windows_NT" ]; then
  ./binary/windows/CTemplate.exe
elif [ "$(uname)" == "Linux" ]; then
  ./binary/linux/CTemplate.out
else
  echo "Unsupported OS"
fi
