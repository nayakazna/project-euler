program problem1
    ! Initialization of variables
    integer :: sum
    integer :: i

    ! Declaration of variables
    sum = 0

    ! Do Loop
    do i = 3, 999, 3
        sum = sum + i
    end do

    do i = 5, 999, 5
        sum = sum + i
    end do

    do i = 15, 999, 15
        sum = sum - i
    end do

    print *, sum
end program problem1