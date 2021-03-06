:: Command to Create AWS Stack for High-Availability webapp
@echo off
setlocal

if "%1" == "-h" goto USAGE
if "%1" == "/?"  goto USAGE
if "%1" == "new"  goto CREATE_NEW
if "%1" == "update"  goto UPDATE
goto USAGE

:CREATE_NEW
call create.bat UdagramCfn udagramCfn.yml udagramCfn.json 
goto END

:UPDATE
call update.bat UdagramCfn udagramCfn.yml udagramCfn.json
goto END

:USAGE 
@echo "Please run create-stack.bat <option>"
@echo "Command to Create AWS Stack for High-Availability webapp"
@echo "  valid options are: new|update|-h|/?"
@echo "     new   : create new stack"
@echo "     update: create new stack"
@echo "    -h     : create new stack"
@echo "    /?     : create new stack"
 

:END
endlocal