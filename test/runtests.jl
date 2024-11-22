using Test
using InfiniteSets

@testset "UniversalSet" begin
    u = UniversalSet()
    s = ["","#"]

    @test !isempty(u)
    @test empty(u) |> isempty
    @test 4 ∈ u
    @test u ∈ u
    @test 1:7 ⊆ u
    @test u ⊆ u
    @test s ∩ u == s
    @test [4,7] ∪ u == u
    @test setdiff(1:5, u) |> isempty
end
