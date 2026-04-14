@echo on

:download

set /p "url=Enter URL: "

.\yt-dlp -f "bestvideo+bestaudio/best" %url%

set /p "exit_=if you want to exit, type 1: "

if "%exit_%"=="1" (
    echo "exit"
) else (
    goto download
)

pause

rem ffmpeg -i ".webm" -c:v h264 -c:a aac ".mp4"