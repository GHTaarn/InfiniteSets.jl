module InfiniteSets

export UniversalSet

struct UniversalSet end

Base.intersect!(s1, s2::UniversalSet) = s1
Base.intersect!(s1::AbstractSet, s2::UniversalSet) = s1
Base.intersect(s1, s2::UniversalSet) = s1
Base.intersect(s1::UniversalSet, args...) = intersect(args...)
Base.union!(s1::UniversalSet, args...) = UniversalSet()
Base.union(s1::UniversalSet, args...) = UniversalSet()
Base.union(s1, s2::UniversalSet, args...) = UniversalSet()
Base.setdiff(s1, s2::UniversalSet) = empty(s1)
Base.in(x, s1::UniversalSet) = true
Base.issubset(x, s1::UniversalSet) = true
Base.isempty(x::UniversalSet) = false
Base.IteratorSize(x::UniversalSet) = Base.IsInfinite()

end # module InfiniteSets