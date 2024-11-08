@echo off
setlocal enabledelayedexpansion

set "source=Y:\Booth_return\2024_11_05_10_11_21"
set "prefix=D"

for %%F in ("%source%\*") do (
    set "filename=%%~nxF"
    if not "!filename:~0,1!"=="%prefix%" (
        ren "%%F" "%prefix%%%~nxF"
    )
)

endlocal