@echo off
setlocal enabledelayedexpansion

REM Define folder path
set "folder_path=I:\PENDING PHOTO VIDEO JAMES"

REM Loop through files in the folder
for %%F in ("%folder_path%\*") do (
    REM Check if the file is a JPG or MP4 file
    if /I "%%~xF"==".jpg" (
        set "filename=%%~nF"
        set "extension=jpg"
    ) else if /I "%%~xF"==".mp4" (
        set "filename=%%~nF"
        set "extension=mp4"
    )

    REM Extract prefix from filename
    for /f "tokens=1 delims=_" %%A in ("!filename!") do set "prefix=%%A"

    REM Rename the file
    ren "%%F" "!prefix!.!extension!"
)

endlocal
