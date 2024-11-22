# InfiniteSets.jl

A Julia package for sets with an infinite number of elements.
At present, only one such type is implemented: `UniversalSet`

## UniversalSet

This is the Universal set that contains everything. Sources claim that
it can be proven that the Universal set is not strictly speaking a set, but
just like ∞ is not a Real number, it can none the less be very convenient to
use if its limitations are understood.

The source code is only about 20 lines, so for the time being, the source code
is the documentation.

```julia
using InfiniteSets
u = UniversalSet();

7 ⊆ u # true
[4,7] ∪ u # u
["","#"] ∪ u # u
["","#"] ∩ u # ["","#"]
4 ∈ u # true
u ∈ u # true
setdiff(["!",4], u) # []
```

