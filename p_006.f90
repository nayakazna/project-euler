! (a + b + c + ... + z)^2 = a^2 + b^2 + c^2 + ... + z^2 + 2ab + 2ac + ... + 2az + 2bc + 2bd + ... + 2bz + ... + 2xz
! Get the idea?

program problem6
    implicit none
    integer :: diff
    integer :: i, j
    
    diff = 0
    do i = 1, 99, 1
        do j = i+1, 100, 1
            diff = diff + 2*i*j
        end do
    end do

    print *, diff

end program problem6
