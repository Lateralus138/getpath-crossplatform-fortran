program main
    implicit none
    character(len=:), allocatable :: tmp,path
    allocate(character(4096) :: tmp)
    call get_environment_variable('PATH',tmp)
    tmp = adjustl(trim(tmp))
    allocate(character(len(tmp)) :: path)
    path = tmp
    deallocate(tmp)
    write(*,'(a)')path
    deallocate(path)
end program main
