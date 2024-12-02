#!/bin/bash

if [ "$OS" == "Windows_NT" ]; then
  gdb -tui ./binary/windows/CTemplate.exe
elif [ "$(uname)" == "Linux" ]; then
  gdb -tui ./binary/linux/CTemplate.out
else
  echo "Unsupported OS"
fi
