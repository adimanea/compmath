u, v = var('u, v')
h = lambda u, v : u^2 + 2*v^2
g3 = plot3d(h, (u, -1,1), (v, -1,1), aspect_ratio=[1,1,1])
g3.show(viewer='tachyon')
