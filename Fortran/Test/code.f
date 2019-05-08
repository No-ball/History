      program Recursive
       interface
        subroutine loop(i)
         integer, intent(in) :: i
        end subroutine
       end interface
       call loop(10)
       write(*, 100)
100     format("Happy New Year")
      end program Recursive

      recursive subroutine loop (i)
       implicit none
       integer, intent(in) ::i
       if (i < 0) then
        write(*,*)
        return
       endif
       write(*,200) i
200     format(i2,""$) 
       call loop (i - 1)
       return
      end subroutine loop
