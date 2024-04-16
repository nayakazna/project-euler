integer function multiples_ab(lim)
    implicit none
    integer :: i, lim

    multiples_ab = 0

    ! Using PIE to find multiples of 3 or 5 below lim
    do i = 3, lim-1, 3
        multiples_ab = multiples_ab + i
    end do

    do i = 5, lim-1, 5
        multiples_ab = multiples_ab + i
    end do

    do i = 15, lim-1, 15
        multiples_ab = multiples_ab - i
    end do

end function multiples_ab

program problem1

    implicit none
    integer :: multiples_ab, lim, i, t
    character(50) :: string
    read *, t

    do i = 1, t, 1
        read *, lim
        print '(I0)', multiples_ab(lim)
    end do
end program problem1
