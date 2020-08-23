rem change dir to where current batch file resides
cd /D "%~dp0"

rem path to dev console
IF NOT DEFINED BuildToolsPath SET "BuildToolsPath=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\Common7\Tools\VsDevCmd.bat"

rem load build tools
call "%BuildToolsPath%"
if %errorlevel% neq 0 exit /b %errorlevel%

msbuild DirectInput.sln ^
	/t:Rebuild ^
	/p:Configuration=Release ^
	/p:Platform="x86" ^
	/v:detailed
if %errorlevel% neq 0 exit /b %errorlevel%
