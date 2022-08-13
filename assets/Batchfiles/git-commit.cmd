@echo off
pushd %0\..

if not exist .git/ (
    set /p _ = "fatal: not a git repository"
    exit /b 0
)

git add .
git commit -S -a -m "_"
git pull origin master
git push origin master

set /p _ = "Probably Successful!"

exit /b 0