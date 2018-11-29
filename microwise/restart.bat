@echo off
taskkill /f /im runapp.exe
if not exist repos\%1 (
	git clone moroes:repos/%1.git repos/%1
)
pushd repos\%1
if not "%2" == "" (
	git pull
	git reset --hard %2
)
runapp.exe
popd

exit