@echo off

if not exist repos\%1 (
	git clone moroes:repos/%1.git repos/%1
)
pushd repos\%1
git pull
if not "%2" == "" (
	git reset --hard %2
)
popd
exit
