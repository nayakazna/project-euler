program problem1
    implicit none
    integer :: sum
    integer :: i

    sum = 0

    ! Using PIE to find multiples of 3 or 5 below 1000
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