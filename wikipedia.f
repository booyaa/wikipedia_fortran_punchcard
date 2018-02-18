program wikipedia
    INTEGER, DIMENSION(4) :: W
    INTEGER, DIMENSION(4) :: Z
    Z = (/ 0, 0, 0, 0 /)
    W = (/ 42, 43, 44, 45 /)
    Y = 1
    Z(1) = Y + W(1)
    PRINT *,"wikipedia sez = ", Z(1)
end program wikipedia