z = var('z')
g1 = complex_plot(abs(cos(z^4))-1,
				  (-3, 3), (-3, 3), plot_points=400)
f = lambda x, y : (abs(cos((x + I*y)**4)) - 1)
g2 = implicit_plot(f, (-3,3), (-3, 3), plot_points=400)
g1.show(aspect_ratio=1); g2.show(aspect_ratio=1)
