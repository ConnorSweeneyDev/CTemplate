@ECHO OFF

SET COMMAND=pwsh -Command "./binary/windows/CTemplate.exe"
IF "%1" == "-wezterm" (wezterm cli spawn --cwd %CD% %COMMAND%)
IF "%1" == "" (START %COMMAND%)
