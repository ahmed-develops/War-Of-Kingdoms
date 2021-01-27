@echo off
title EMPIRE WAR OF KING
..\jdk8\bin\java.exe -cp "./;lib/*;lib/Jetty/*;extensions/__lib__/*" -Xrunjdwp:transport=dt_socket,address=5005,server=y,suspend=n -Dfile.encoding=UTF-8 com.smartfoxserver.v2.Main
pause