a = animate([[sin(x), taylor(sin(x), x, 0, 2*k+1)]
			 for k in range(0, 14)], xmin=-14, xmax=14,
			ymin=-3, ymax=3, figsize=[8, 4])
a.show(); a.save('../scratch/taylor_animation.gif')
