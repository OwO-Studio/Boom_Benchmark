@echo off
title Boom Benchmark
color 2f
mode con cols=78 lines=15
set /p HDate=<.\HDate
set /p HScore=<.\HScore
cls
echo.
echo. Boom Benchmark
echo. __________________________________________________________________________
echo. Code By Xenoex
echo. Version 1.0
echo. BoomBeach，一款CPU多线程处理性能跑分，可能会有蓝屏、CPU温度
echo. 温度过高、数据丢失等风险。
echo. 
echo. 您的上次跑分记录
echo. 时间:%HDate%
echo. 完整运算次数:%HScore%
echo.
echo. 按下任意键开始...
pause >nul
echo %Date% %Time%>HDate
echo.0>HScore
set s
set log=.\Running%random%.Log
::pause
::exit
set s1=0
set s2=0
set s3=0
set sc=0
set vscc=0
:a
start 1.vbs
start 22.vbs
goto b
:b
set /a n1=%random%+%s1%+%s2%+%s3%
set /a n2=%random%+%s1%+%s2%+%s3%
set /a s1=%random%+%random%
set /a s2=%random%*%random%
set /a s3=%s1%+%s2%
set /a ss=%n1%+%n2%+%s1%+%s2%+%s3%
set /a sc=%sc%+1

set /a n11=%random%+%s1%+%s2%+%s3%
set /a n22=%random%+%s1%+%s2%+%s3%
set /a s11=%random%+%random%
set /a s21=%random%*%random%
set /a s13=%s1%+%s2%
set /a s1s=%n1%+%n2%+%s1%+%s2%+%s3%
set /a s1c=%sc%+1

set /a n1d=%random%+%s1%+%s2%+%s3%
set /a nd2=%random%+%s1%+%s2%+%s3%
set /a sc1=%random%+%random%
set /a s2d=%random%*%random%
set /a sd3=%s1%+%s2%
set /a sds=%n1%+%n2%+%s1%+%s2%+%s3%
set /a sdwc=%sc%+1

set /a cn11=%random%+%s1%+%s2%+%s3%
set /a n2c2=%random%+%s1%+%s2%+%s3%
set /a s1x1=%random%+%random%
set /a s2c1=%random%*%random%
set /a s1c3=%s1%+%s2%
set /a s1cs=%n1%+%n2%+%s1%+%s2%+%s3%
set /a s1cc=%sc%+1

set /a vscc=%vscc%+1
echo.%vscc%>HScore

goto a
