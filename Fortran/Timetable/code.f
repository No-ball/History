      program Timetable
      do i = 1,9
      do j = 1,9
      write(*, 100) j, i, i*j
100   format(" ", i2," * ",i1," = ",i2,""$)
      enddo
      write(*,200)
200   format("")
      enddo
      end