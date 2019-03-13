::@echo off
set muisicName=李玖哲 - 想太多.mp3
::for  %%i in (*) do


::cd到本脚本所在的路径
cd /d %~dp0


echo "start play----%muisicName%"
call "%muisicName%"
pause