@echo off
echo. 在下方输入版本号
set /p a=
"C:\Program Files\7-Zip\7z.exe" a -tzip config_0.0.%a%_en.zip text_en.ini database.local.xml
"C:\Program Files\7-Zip\7z.exe" a -tzip config_0.0.%a%_es.zip text_es.ini database.local.xml
"C:\Program Files\7-Zip\7z.exe" a -tzip config_0.0.%a%_pt.zip text_pt.ini database.local.xml
"C:\Program Files\7-Zip\7z.exe" a -tzip config_0.0.%a%_tr.zip text_tr.ini database.local.xml
"C:\Program Files\7-Zip\7z.exe" a -tzip config_0.0.%a%_zh_TW.zip text_zh_TW.ini database.local.xml