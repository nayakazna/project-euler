program problem2
    implicit none
    integer :: fn1, fn2, temp, sum
    fn1 = 1
    fn2 = 2
    sum = 0

    do while (fn2 < 4000000)
        if (mod(fn2, 2) .eq. 0) then
            sum = sum + fn2
        end if

        temp = fn1
        fn1 = fn2
        fn2 = fn2 + temp
        print *, fn2, sum
    end do
end program problem2