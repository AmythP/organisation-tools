@echo off
setlocal
REM Specify the path to your files
set "source_folder=X:\"

REM Copy PI9306.pdf to PI9307.pdf and PI9308.pdf
copy "%source_folder%\SM530638.msg" "%source_folder%\SM530644.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SM530651.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SM530646.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SM530647.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SM529192.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SM529650.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SM529847.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SM530237.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SM530306.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SR17484.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SR17485.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SR17486.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SR17487.msg"
copy "%source_folder%\SM530638.msg" "%source_folder%\SR17488.msg"

echo Files copied successfully!
pause
