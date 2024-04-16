! observasi ganteng:
! ide (1). All primes after 3 can be written in the form 6k ± 1
!           (the opposite doesn't necessarily hold, tho)
! ide (2). Other forms of numbers (6k, 6k + 2, 6k + 3, dan 6k + 4) are divisible by either 2 or 3
        !   Hence we can save up time and memory by immediately returning False when the input (n) is
        !   divisible by 2 or 3 instead of checking by dividing it one by one with numbers from 2 to n.
        !   We're left with numbers in the form of 6k ± 1. Mantap lur!
! ide (3). To check the primality of n, we only need to divide it with numbers up to sqrt(n)
! ide (4). Every number can be written in the form of (p_1)^(k_1) * (p_2)^(k_2) * ... * (p_n)^(k_n)
!           where p_i denotes the i-th prime factor of the number (sorted from smallest to largest)
!           and k_i is a natural number. (Well, pada dasarnya... faktorisasi prima)

! Program problem 3: menentukan faktor prima terbesar dari num = 600851475143
program problem3
    implicit none
    integer(16) :: num = 600851475143000000_16
    integer(8) :: thePrime = 1
    integer(8) :: maxPrime = 1
    integer(8) :: i

    ! Mencari faktor-faktor prima dari num
    do i = 5, int(num ** 0.5), 6
        if ((mod(num, i) .eq. 0) .or. mod(num,i+2) .eq. 0) then
            ! Periksa primalitas untuk bentuk 6k - 1
            if (isPrime(i)) then
                thePrime = i
            ! Periksa primalitas untuk bentuk 6k + 1
            else if (isPrime(i + 2)) then
                thePrime = i + 2
            end if

            ! terus membagi num dengan faktor prima yang ditemukan 
            ! hingga faktor tersebut tidak bisa membagi habis num lagi
            do while ((mod(num, thePrime) .eq. 0) .and. (num > 1))
                maxPrime = num
                num = num / thePrime
            end do
        end if
    end do

    ! OUTPUT, akhirnya!
    print *, maxPrime

    contains
    ! Fungsi isPrime(n) menguji primalitas n; mengembalikan .true. jika n prima, vice versa
    logical function isPrime(n)
        implicit none
        integer(8), intent(in) :: n
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
end program problem3
