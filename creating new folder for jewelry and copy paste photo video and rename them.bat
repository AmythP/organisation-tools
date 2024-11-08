@echo off
setlocal enabledelayedexpansion

REM Define source and destination folders
set "source_folder=I:\PENDING PHOTO VIDEO JAMES\"
set "destination_folder=I:\"

REM Loop through files starting with "TJ"
for %%F in ("%source_folder%\TJ*") do (
    REM Extract file extension
    set "extension=%%~xF"
    
    REM Check if it's an MP4 or JPG file
    if /I "!extension!"==".mp4" (
        REM Process MP4 file
        call :ProcessFile "%%~nF" "video.mp4"
    ) else if /I "!extension!"==".jpg" (
        REM Process JPG file
        call :ProcessFile "%%~nF" "1.jpg"
    )
)

exit /b

:ProcessFile
REM Create folder based on file name without extension
set "folder_name=%1"
if not exist "%destination_folder%\!folder_name!" mkdir "%destination_folder%\!folder_name!"

REM Copy and rename the file
copy "%source_folder%\%folder_name%%extension%" "%destination_folder%\!folder_name!\%2" /Y
exit /b