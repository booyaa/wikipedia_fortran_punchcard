# Z(1) = Y + W(1)

<img src="https://upload.wikimedia.org/wikipedia/commons/5/58/FortranCardPROJ039.agr.jpg"/>

Ever since I came across this punch card example in the Wikipedia page for the definition of [Punched card](https://en.wikipedia.org/wiki/Punched_card), I had to find out what the context was.

I knew enough from the Wikipedia page that each punch card represented a single statement / instruction.

A bit of Googling, revealed that `Z(1)` and `W(1)` are referring to the index of an array.

Once you understand the code boilerplate and how to initialise variables, it's fairly easy to work out the rest. The code is so short I've placed in-lined it in this README.

```fortran
program wikipedia
    INTEGER, DIMENSION(4) :: W
    INTEGER, DIMENSION(4) :: Z
    Z = (/ 0, 0, 0, 0 /)
    W = (/ 42, 43, 44, 45 /)
    Y = 1
    Z(1) = Y + W(1)
    PRINT *,"wikipedia sez = ", Z(1)
end program wikipedia
```

So once we've initialised our variables, line 7 which is the statement we saw in the punch card should make a bit more sense.

We do a simple bit of arithmetic:

1. Y + W(1) <-- according to Fortran 95, arrays start at 1.
1. 1 + 42
1. 43

And store this in the first position in the array Z.

The output is unremarkable (once you realised what the symbols mean):

```shell
 wikipedia sez =           43
```

To save you falling down the same rabbit holes, here's a handy on-line link so you can run the example code for yourself: [ideone.com/wOeBML](https://ideone.com/wOeBML).

## References

- The Wikipedia definition for [Punchcard].(https://en.wikipedia.org/wiki/Punched_card)
- [Plato and the Nerd](https://books.google.co.uk/books?id=DYc3DwAAQBAJ&pg=PA82&lpg=PA82&dq=z(1)+%3D+y+%2B+w(1)+fortran+punch+card&source=bl&ots=_CU69ZMr6i&sig=-V9YM1-tYKZJk67ppcwZ8x0FHFA&hl=en&sa=X&ved=0ahUKEwiFms-g8a_ZAhUHesAKHR_1DRQQ6AEIWjAF#v=onepage&q=fortran&f=false) by Edward Ashford Lee - page 83.
- Make your own punch cards using the [virtual keypunch](http://www.masswerk.at/keypunch/)!