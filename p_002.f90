program problem2
    implicit none
    integer, parameter :: r = selected_int_kind(10)

    integer(r) :: fn1, fn2, temp, sum, lim
    lim = 400000000000_8
    fn1 = 1
    fn2 = 2
    sum = 0

    do while (fn2 < lim)
        if (mod(fn2, 2) .eq. 0) then
            sum = sum + fn2
        end if

        temp = fn1
        fn1 = fn2
        fn2 = fn2 + temp
        print *, fn2, sum
    end do
end program problem2