# InfiniteSets.jl

A [Julia](https://julialang.org) package for sets with an infinite number of
elements. At present, only one such type is implemented: `UniversalSet`

## UniversalSet

This is the Universal set that contains everything. Sources claim that
it can be proven that the Universal set is not strictly speaking a set, but
just like ∞ is not a Real number, it can none the less be very convenient to
use if its limitations are understood.

### Examples

```julia
using InfiniteSets
u = UniversalSet();

7 ⊆ u # true
[4,7] ∪ u # u
union(["","#"], u) # u
["","#"] ∩ u # ["","#"]
intersect(1:55, u) # 1:55
4 ∈ u # true
u ∈ u # true
[] in u # true
setdiff(["!",4], u) # []
isempty(u) # false
empty(u) # Set()
```

### Limitations / known bugs

Binary operations should work correctly, but in some cases, `setdiff` and
`union` will throw exceptions if they are given 3 or more arguments of which
one or more is a `UniversalSet`. Possible workarounds for this include using
`foldl` or `∪`, e.g.:

```julia
using InfiniteSets
u = UniversalSet()

foldl(union,[1:5,4:10, u, 8:16]) |> display
(1:5 ∪ 4:10 ∪ u ∪ 8:16) |> display
foldl(setdiff, [1:5, 4:10, u, 8:16]) |> display
```

It is not possible to use `setdiff` when the first argument is a `UniversalSet` (except
if the second argument is either a `UniversalSet` or an empty set) because the
result would be an infinite set other than the universal set.

## Feedback

Please submit suggestions and bug reports to
https://github.com/GHTaarn/InfiniteSets.jl/issues or
https://github.com/GHTaarn/InfiniteSets.jl/pulls
