using Graphs
using GraphPlot
using Compose
using Cairo
using Fontconfig
using QuantumClifford
using Random

#generating random graph
num_vertices = rand(4:10)
max_edges = Int(num_vertices*(num_vertices-1)/2)
num_edges = rand(0:max_edges)
println(string("Generating graph with ", num_vertices, " vertices and ", num_edges, " edges"))
g = SimpleGraph(5, 2)
#plot graph and save to file
println(string("Plotting graph and saving plot to plot.png"))
draw(PNG("plot.png", 16cm, 16cm), gplot(g))
#generate Stabilizer Tableau
st = Stabilizer(g)
println("Stabilizer Tableau of Graph:")
println(st)
#create set of Stabilizer states
state_set = Set(st)
#find all possible states through repeated multiplication
#variable that stores whether or not a state has been added
added = true
while added
    global added =false
    #iterate through all pairs of states
    for state1 in state_set
        for state2 in state_set
            #product of each pair of states
            new_state = state1*state2
            #if the state isn't in the state, add it to the set
            if (!(new_state in state_set))
                push!(state_set, new_state)
                global added = true
            end
        end
    end
    #if no new state could be created from all possible pairs, all states have been found
end 
println("All ", length(state_set), " Stabilizer States:")
println(state_set)
