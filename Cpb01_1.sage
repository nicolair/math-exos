from sage.graphs.graph_plot import GraphPlot
G = DiGraph({"Tirage":["P P","P I","I I"]})
G.add_edges([("Tirage","P P",r'$\frac{1}{6}$ ')])
#G.set_latex_options(
#    edge_color = 'green'
#)
GP = GraphPlot(G,{'vertex_size' : 1300,
                  'edge_thickness' : 0.0,
                  'edge_labels' : True , 
                  'edge_style' : '-',
                  'prog' : "dot"}
               )
P = GP.plot()
P.save('Cpb01_1.pdf')