echo off
git add *
git commit -m "%date%"
git pull
git push
echo end
pause