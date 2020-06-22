x, y, z = var('x,y,z'); a = 1
h = lambda x, y, z : (a^2 + x^2 + y^2)^2 - 4*a^2*x^2-z^4
cassini = implicit_plot3d(h, (x, -3, 3), (y, -3, 3), (z, -2, 2),
						  plot_points=100)
cassini.show(viewer='threejs')
