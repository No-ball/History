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
::	ATM create [filename]       : Create a homework file                ::
::	ATM delete [filename]       : Delete a homework file                ::
::	ATM run [filename]          : Run your fortran code                 ::
::  ATM run [filename] upload   : upload your homework to ftp server    ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::Read User info lOGs
SET /A FLAG=0
SET LIST=
(FOR /F "eol=; tokens=1 delims=," %%I IN (C:/ATMhelper/bin/info.log) DO (
	CALL SET /A FLAG+=1
	CALL SET LIST[%%FLAG%%]=%%I
))

::Host IP
CALL SET HOST=%%LIST[2]%%

::Student number
CALL SET   ID=%%LIST[3]%%

::HOST password
CALL SET   PW=%%LIST[4]%%

::Client save location
CALL SET CSAVE=%%LIST[5]%%

::Host save location
CALL SET HSAVE=%%LIST[6]%%

::FTP host location
CALL SET FTPOSI=%%LIST[7]%%

::Putty installation location
CALL SET PUPOSI=%%LIST[8]%%

::File position
CALL SET EXPOSI=%%LIST[9]%%

::Create Homework files
IF "%1"=="create" (
    IF EXIST %CSAVE%/%2 (
        ECHO File already exist
        GOTO END
    )
    CD %CSAVE%
    MKDIR %2
    CD %2
    ECHO !Enter program name > code.f90
    ECHO program Program_Name>> code.f90
    ECHO/ >> code.f90
    ECHO     implicit none >> code.f90
    ECHO/ >> code.f90
    ECHO/ >> code.f90
    ECHO ! Enter your code here >> code.f90
    ECHO/ >> code.f90
    ECHO/ >> code.f90
    ECHO end program >> code.f90
    ECHO > input.txt
) ELSE IF "%1"=="delete" (
    IF NOT EXIST %CSAVE%\%2 (
        ECHO No file find!
        GOTO END
    )
    RD /S /Q %CSAVE%\%2\
    GOTO END
) ELSE IF "%1"=="run" (
    IF NOT EXIST %CSAVE%/%2 (
        ECHO No file find!
        GOTO END
    )
    CALL %EXPOSI%/ATMhelper/run.bat %2 %3 
) ELSE IF "%1"=="help" (
    ECHO create [filename]: Create a fortran file
    ECHO delete [filename]: Delete a fortran file
    ECHO run    [filename]: Run a fortran file
    ECHO run    [filename] upload: Upload your file to ftp server
) ELSE (
    ECHO Invalid input
    ECHO Please type "ATM" help for commands 
    GOTO END
)

:END