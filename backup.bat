:: set this to the full path to your Diablo II save folder
set DIABLO_II="%HOMEDRIVE%\Program Files (x86)\Diablo II\Saves"

:: set this to the full path to your D2R save folder
set RESURRECTED="%HOMEDRIVE%\%HOMEPATH%\Saved Games\Diablo II Resurrected"

:: set this to the full path to your backup folder
set BACKUP_FOLDER="%HOMEDRIVE%\%HOMEPATH%\Desktop\D2 Backup"

:: do not change anything below this line
echo off
set CUR_YYYY=%date:~10,4%
set CUR_MM=%date:~4,2%
set CUR_DD=%date:~7,2%
set CUR_HH=%time:~0,2%
if %CUR_HH% lss 10 (set CUR_HH=0%time:~1,1%)

set CUR_NN=%time:~3,2%
set CUR_SS=%time:~6,2%
set CUR_MS=%time:~9,2%

set SUBFILENAME=%CUR_YYYY%-%CUR_MM%-%CUR_DD%_%CUR_HH%%CUR_NN%%CUR_SS%

set DESTINATION=%BACKUP_FOLDER%\%SUBFILENAME%

mkdir %DESTINATION%

xcopy /s /i %DIABLO_II% %DESTINATION%
xcopy /s /i %RESURRECTED% %DESTINATION%\D2R
