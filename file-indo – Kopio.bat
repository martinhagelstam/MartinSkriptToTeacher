@echo off
setlocal EnableDelayedExpansion

set filstig=%1
cls
if exist %filstig% (
	for /f "tokens=1,2,3 USEBACKQ" %%a in (`dir %filstig%`) do (
		if "%%b" =="tiedosto(a)" (
			set filer=%%a
			set storlek=%%c 
			)
		if "%%b" =="kansio(ta)" (
			set kataloger=%%a 
			)
	)
	echo filer: !filer!, storlek: !storlek!tavua, kataloger: !kataloger!
) else (
echo %filstig% existerar inte
)

if exist %filstig%\ (
echo det har ar en katalog: katalog 
) else ( echo fil, milaf, ifayela, soubor, fayl 
)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           