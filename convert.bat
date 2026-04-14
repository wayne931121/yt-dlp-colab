@echo on

:convert

set /p "file=Enter File Name: "

echo "note default input file type webm"

:mp4l

set /p "mp4=if you don't want to convert webm to mp4, type 1: "

if "%mp4%"=="1" (
    goto mp3l 
) else (
    echo convert webm to mp4
)

ffmpeg -i "%file%.webm" -c:v h264 -c:a aac "%file%.mp4"

:mp3l

set /p "mp3=if you don't want to convert webm to mp3, type 1: "

if "%mp3%"=="1" (
    goto final_ 
) else (
    echo convert webm to mp3
)

ffmpeg -i "%file%.webm" "%file%.mp3"

:final_

set /p "exit_=if you want to exit, type 1: "

if "%exit_%"=="1" (
    echo "exit"
) else (
    goto convert
)

pause