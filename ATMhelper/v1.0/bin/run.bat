@ECHO OFF

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::This is a program for Atmospheric Science student to easily write     ::
::	there fortran code and upload to their department server            ::
::	and upload their homework                                           ::
::--------------------------------------------------------------------- ::
::Version: 1.0                                                          ::
::Created by No_ball Chiang                                             ::
::                                                                      ::
::Copy doesn't requires any authorization                               ::
::--------------------------------------------------------------------- ::
::Usage:                                                                ::
::	ATM create [filename]	 : Create a homework file                   ::
::	ATM delete [filename]	 : Delete a homework file                   ::
::	ATM run [filename]		 : Run your fortran code					::
::	ATM run [filename] upload: upload your homework to ftp server		::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


::Read Users info
SET /A FLAG=0
SET LIST=
(FOR /F "eol=; tokens=1 delims=," %%I IN (C:/ATMhelper/bin/info.log) DO (
	CALL SET /A FLAG+=1
	CALL SET LIST[%%FLAG%%]=%%I
))

CALL SET   HOST=%%LIST[2]%%
CALL SET     ID=%%LIST[3]%%
CALL SET     PW=%%LIST[4]%%
CALL SET  CSAVE=%%LIST[5]%%
CALL SET  HSAVE=%%LIST[6]%%
CALL SET FTPOSI=%%LIST[7]%%
CALL SET PUPOSI=%%LIST[8]%%
CALL SET EXPOSI=%%LIST[9]%%

::Check if putty exist
IF NOT EXIST %PUPOSI% (
	ECHO Can't find putty
	GOTO END
)

::Check if file exist
IF NOT EXIST %1 (
	ECHO No file find
	GOTO END
)

:: if entering help
IF "%2"=="help" GOTO help
CD %1

SET PASS=-pw %PW%
SET POSI=%ID%@%HOST%:Code/Fortran/%1/
ECHO %POSI%
:: if entering upload
IF "%2"=="upload" GOTO upload

::make a file in Host
::save command to cmd.dat for host to execute
ECHO mkdir -p ~/Code/Fortran/%1 > cmd.dat

:: send code.f90 to host
pscp %PASS% code.f90 %POSI%code.f90

:: compile .f90 file
ECHO cd ~/Code/Fortran/%1 > cmd.dat
ECHO gfortran -o run.out code.f90 >> cmd.dat

:: see if there if an input
IF EXIST input.txt (
	pscp %PASS% input.txt %POSI%
	ECHO ./run.out ^< input.txt ^> output.txt >> cmd.dat
)ELSE (
	ECHO ./run.out ^> output.txt >> cmd.dat
)

:: send command to the host
putty %PASS% -ssh %ID%@%HOST% -m cmd.dat

:: get result back to client
pscp %PASS% %POSI%output.txt ./


:: print out result
ECHO result
ECHO/
ECHO @@@@@@@@@@@@@@@@@@
ECHO/
TYPE output.txt
ECHO/
ECHO @@@@@@@@@@@@@@@@@@
ECHO/

GOTO END

:: help info
:help
ECHO [filename] upload
ECHO upload your homework to ftp 140.115.36.36 server
GOTO END

:: upload
:upload

:: make a file 
IF NOT EXIST %CSAVE%    (mkdir %CSAVE%)
IF NOT EXIST %CSAVE%/%1 (mkdir %CSAVE%/%1)

:: change the name into the right format
SET FILE=%CSAVE%/%1/%ID%_%1.f90
SET POSI=%ID%@%HOST%:%HSAVE%
SET HSAVE=%HSAVE%/%1

:: check user wants to upload or not
SET /p CHECK=Are you sure to upload %ID%_%1.f90? (y/n):

IF NOT %CHECK%==y (
	ECHO End upload!
	goto END
)

:: copy code.f90 into right format
type code.f90 > %FILE%

:: send right format into host server
pscp %PASS% %FILE% %POSI%/

:: save commands to cmd.dat for host to execute
ECHO mkdir -p %HSAVE% > cmd.dat
ECHO cd %HSAVE% >> cmd.dat
:: save commands on host to ftpcmd.dat for host to excute ftp server
ECHO echo quote USER anonymous ^> ftpcmd.dat >> cmd.dat
ECHO echo quote PASS  ^>^> ftpcmd.dat >> cmd.dat
ECHO echo cd %FTPOSI%/%1/ ^>^> ftpcmd.dat >> cmd.dat
ECHO echo mput %ID%_%1.f90 ^>^> ftpcmd.dat >> cmd.dat
ECHO echo yes ^>^> ftpcmd.dat >> cmd.dat
ECHO echo bye ^>^> ftpcmd.dat >> cmd.dat
ECHO ftp -v -n 140.115.36.36 ^< ftpcmd.dat >> cmd.dat
ECHO cat %ID%_%1.f90 >> cmd.dat
ECHO rm ftpcmd.dat >> cmd.dat

:: upload file to ftp server
plink %PASS% -ssh %ID%@%HOST% -m cmd.dat > ERRORLOG.txt

:: result
ECHO/
ECHO @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ECHO/
IF %ERRORLEVEL%==0 (
	ECHO Upload Success!
)ELSE (
	ECHO Upload failed
)
ECHO/
ECHO @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
ECHO/

:END
:: Delete cmd.dat
IF EXIST cmd.dat (DEL cmd.dat)