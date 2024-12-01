using Test
using InfiniteSets

@testset "UniversalSet" begin
    u = UniversalSet()
    s = ["","#"]

    @test !isempty(u)
    @test empty(u) |> isempty
    @test 4 ∈ u
    @test u ∈ u
    @test "123" in u
    @test 1:7 ⊆ u
    @test [] ⊆ u
    @test u ⊈ [pi, "##", '8', 1//4]
    @test u ⊆ u
    @test intersect(u, s) == s
    @test s ∩ u == s
    @test u ∩ u == u
    @test BitSet(10:20) ∩ u == BitSet(10:20)
    @test [4,7] ∪ u == u
    @test Set([4,"7"]) ∪ u == u
    @test u ∪ u == u
    @test union(BitSet(10:20), u) == u
    @test setdiff(1:5, u) |> isempty
    @test setdiff(Set(1:8), u) |> isempty
    @test setdiff(u, u) |> isempty
    @test setdiff(u, []) == u
    @test_throws Exception setdiff(u, s)
end

@testset "ambiguities" begin
    @test Test.detect_ambiguities(Base, Core, InfiniteSets) == []
end
