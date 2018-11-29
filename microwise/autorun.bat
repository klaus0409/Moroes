@echo off
CHCP 65001
if "%1%" == "debug" (
	jre\bin\java.exe -Dfile.encoding=UTF-8 -jar exmanager-0.0.1-SNAPSHOT.jar
) else (
	start jre\bin\javaw.exe -Dfile.encoding=UTF-8 -jar exmanager-0.0.1-SNAPSHOT.jar
)
