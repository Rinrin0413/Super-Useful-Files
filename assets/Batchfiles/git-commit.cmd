@echo off
pushd %0\..

rem Shift JIS ni shinasay
rem コミットに便利た！

if not exist .git/ (
    set /p _ = ".git が無いのですが?"
    exit /b 0
)

git add .
git commit -S -a -m "_"
git pull origin master
git push origin master

set /p _ = "完了(多分)"
exit /b 0