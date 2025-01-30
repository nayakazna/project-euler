program problem5

    implicit none
    ! Easiest problem lmao
    ! The number (x) is divisible by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, and 20
    ! The number is divisible by 16, hence it can be expressed as 16 * blablabla_1
    !    Hence, the number is also divisible by 2, 4, and 8
    ! Now the remaining factors are 3, 5, 7, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20
    !     The number is divisible by 9, hence it can be expressed as 9 * 16 * blablabla_2
    !     Hence, the number is also divisible 3, 6, 12, dan 18
    ! Now the remaining factors are 5, 7, 10, 11, 13, 14, 15, 17, 19, 20
    !     The number is divisible by 5, hence it can be expressed as 5 * 9 * 16 * blablabla_3
    !     Hence, the number is also divisible 10, 15, dan 20
    ! Now the remaining factors are 7, 11, 13, 14, 17, 19
    !     The number is divisible by 7, hence it can be expressed as 7 * 5 * 9 * 16 * blablabla_4
    !     Hence, the number is also divisible 14
    ! Now the remaining factors are 11, 13, 17, 19, which are all prime numbers.
    ! Therefore, the number we're looking for is 7 * 5 * 9 * 16 * 11 * 13 * 17 * 19
    ! O(1)
    print *, 7 * 5 * 9 * 16 * 11 * 13 * 17 * 19

end program problem5
