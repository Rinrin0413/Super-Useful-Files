@echo off
pushd %0\..

rem Shift JIS ni shinasay
rem �R�~�b�g�ɕ֗����I

if not exist .git/ (
    set /p _ = ".git �������̂ł���?"
    exit /b 0
)

git add .
git commit -S -a -m "_"
git pull origin master
git push origin master

set /p _ = "����(����)"
exit /b 0