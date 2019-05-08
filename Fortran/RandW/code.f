        
        
        PROGRAM RandW

        implicit none

        !set usings
        CHARACTER (len =  *), PARAMETER :: Print_format = "(A)"
        CHARACTER (len =  *), PARAMETER :: Read_format  = "(A)"
        INTEGER                         :: N !numbers of rows
        CHARACTER (len = 40)            :: Input

!-----------------------------------------------------
!Printing out N rows of your inputs
!
!logic:
!       N will be subtracted by 1 after a loop
!       After N times of subtraction, N will become 0
!       the loop will end since N < 0
!Example input:
!       2
!       Hello, world
!       How are you?
!Example output:
!       Hello, world
!       How are you?
!------------------------------------------------------

        READ*, N  !Read numbers of rows that the inputs have

        !Printing out N rows it reads
        DO WHILE (N > 0)             
                READ  Read_format,  Input
                PRINT Print_format, Input
                N = N - 1
        ENDDO

        END PROGRAM RandW
