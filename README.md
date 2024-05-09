# Julia-Test
Generates random undirected graph with 4 to 10 vertices and 0 to the maximum number possible for the graph edges. \n
Saves graph to plot.png
Generates Stabilzer Tableau of graph
Adds each row in the tablaue to a set
Multiples each stablizer in the set with each other stabilizer and adds results to set
Repeats until no new states are added
The resulting set contains all the stabilzers of the graph state. 


Quantum Clifford library is cloned inside the project as it would be if modifcations were being made to it. 
Other packages installed normally
Graphs for graphs, GraphPlot for plotting graph, Cairo/Fontconfig for saving plot to file, Random for generating random edge/vertice numbers. 
