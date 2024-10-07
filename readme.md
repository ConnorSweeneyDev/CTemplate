# Building and Executing
This project is optimized to be built with the following targets in mind:
- Windows 11 MinGW 64-bit GCC 14.2.0
- Ubuntu 18.04 GLIBC Version 2.27

Version information for dependencies can be found in `external/version_info.txt`.

By default, the executables are statically linked, although requirements for linking vary by
project.

After following the platform specific instructions below you can execute the `build.bat` file on
Windows or the `build.sh` file on Linux from the root of the project to build the binary. The
outputted binary must be run from the root to work as intended.

### Windows
Do the following to ensure your environment is set up correctly:
- Download a 64-bit [MinGW](https://winlibs.com/) distribution with Clang/LLVM support and put the
  `[DISTRIBUTION]/bin` directory in your path.
- Run `winget install --id Python.Python.3.10` if you don't have Python installed.
- Run `winget install --id Microsoft.Powershell --source winget` if you don't have pwsh.exe
  installed.
- Run `winget install make --source winget` if you don't have Make installed.

### Linux
Do the following on Ubuntu to ensure your environment is set up correctly:
- Only run `sudo apt update && sudo apt upgrade` if you haven't already.
- Run `sudo apt install git gcc gdb make`.
