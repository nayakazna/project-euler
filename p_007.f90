! The idea for this problem is similar to the technique I used in problem 3
program problem7
    implicit none
    integer :: count = 2
    integer :: thePrime = 1
    integer :: i

    ! Mencari faktor-faktor prima dari num
    i = 5
    do while (count < 10001)
        ! Periksa primalitas untuk bentuk 6k - 1
        if (isPrime(i)) then
            count = count + 1
            thePrime = i
        end if

        ! Periksa primalitas untuk bentuk 6k + 1
        if (isPrime(i + 2)) then
            count = count + 1
            thePrime = i + 2
        end if
        i = i + 6
    end do

    ! OUTPUT, akhirnya!
    print *, thePrime

    contains
    ! Fungsi isPrime(n) menguji primalitas n; mengembalikan .true. jika n prima, vice versa
    logical function isPrime(n)
        implicit none
        integer, intent(in) :: n
        integer :: i
        
        isPrime = .true.
        
        if (n <= 1) then ! 0, 1, dan bilangan negatif
            isPrime = .false.
        else if (n <= 3) then ! 2 dan 3
            isPrime = .true.
        else if ((mod(n, 2) .eq. 0) .or. (mod(n, 3) .eq. 0)) then ! kelipatan 2 dan 3
            isPrime = .false.
        else ! bentuk 6k + 1 atau 6k - 1
            do i = 5, int(n ** 0.5), 6
                if ((mod(n, i) .eq. 0) .or. (mod(n, i + 2) .eq. 0)) then
                    isPrime = .false.
                end if
            end do
        end if
    end function isPrime
end program problem7
