! Since we're looking for the largest palindrome product of two 3-digit numbers, we can start from the largest 3-digit number (999) and decrement it.
! https://brilliant.org/wiki/palindromes/#:~:text=All%20palindromes%20with%20an%20even%20number%20of%20digits%20are%20divisible%20by%2011.
! From this article, we get that all palindromes with an even number of digits are divisible by 11.
! Hence, we can limit our search to numbers that are divisible by 11 (999 is divisible by 11).

program problem4
    implicit none
    integer(16) :: i, j
    integer(16) :: maxPal = 0
    integer(16) :: prod
    logical :: found = .false.

    do i = 990, 110, -11
        do j = 999, i, -1
            prod = i * j
            if (prod <= maxPal) then
                exit
            end if

            if (isPalindrome(prod)) then
                maxPal = prod
                found = .true.
            end if
        end do
    end do

    ! OUTPUT, finally!
    print *, maxPal

    contains
    logical function isPalindrome(n)
        implicit none
        integer(16), intent(in) :: n
        integer(16) :: revn
        integer(16) :: tempn
        
        revn = 0
        tempn = n
        
        ! reverse n
        do while (tempn > 0)
            revn = revn * 10 + mod(tempn, 10)
            tempn = tempn / 10
        end do

        ! n is a palindrome iff its the same as its reverse
        isPalindrome = (n == revn)
    end function isPalindrome
end program problem4
