using Graphs
using GraphPlot
using Compose
using QuantumClifford
using Random

num_vertices = rand(4:10)
max_edges = Int(num_vertices*(num_vertices-1)/2)
num_edges = rand(0:max_edges)
g = SimpleGraph(num_vertices, num_edges)
println(g)