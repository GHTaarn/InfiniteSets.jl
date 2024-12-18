module InfiniteSets

export UniversalSet

struct UniversalSet end

Base.intersect!(s1, s2::UniversalSet) = s1
Base.intersect!(s1::AbstractSet, s2::UniversalSet) = s1
Base.intersect!(s1::AbstractVector, s2::UniversalSet) = s1
Base.intersect(s1, s2::UniversalSet) = s1
Base.intersect(s1::UniversalSet, s2::UniversalSet) = s1
Base.intersect(s1::AbstractSet, s2::UniversalSet) = s1
Base.intersect(s1::AbstractVector, s2::UniversalSet) = s1
Base.intersect(s1::UniversalSet, args...) = intersect(args...)
Base.union!(s1::UniversalSet, args...) = UniversalSet()
Base.union(s1::UniversalSet, s2::UniversalSet, args...) = UniversalSet()
Base.union(s1::UniversalSet, args...) = UniversalSet()
Base.union(s1::BitSet, s2::UniversalSet, args...) = UniversalSet()
Base.union(s1, s2::UniversalSet, args...) = UniversalSet()
Base.setdiff(s1::AbstractSet, s2::UniversalSet) = empty(s1)
Base.setdiff(s1, s2::UniversalSet) = empty(s1)
Base.setdiff(s1::UniversalSet, s2::UniversalSet) = empty(s1)
Base.setdiff(s1::UniversalSet, s2) = isempty(s2) ? s1 : error("s2 must be empty")
Base.in(x, s1::UniversalSet) = true
Base.issubset(x, s1::UniversalSet) = true
Base.issubset(s1::UniversalSet, s2::UniversalSet) = true
Base.issubset(s1::UniversalSet, s2) = Base.IteratorSize(s2) in [Base.IsInfinite(), Base.SizeUnknown()] ? error("Not implemented") : false
Base.isempty(x::UniversalSet) = false
@static if v"1.4" <= VERSION <= v"1.11"
    Base.hasfastin(x::UniversalSet) = true
end
Base.IteratorSize(x::UniversalSet) = Base.IsInfinite()

"""
    empty(s::UniversalSet)

Returns `Set{Any}()`
"""
Base.empty(s::UniversalSet) = Set()

end # module InfiniteSets
