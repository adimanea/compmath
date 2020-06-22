t = var('t'); n = 20/19
g1 = polar_plot(1 + 2*cos(n*t), (t,0,n*36*pi), plot_points=5000)
g2 = polar_plot(1 + 1/3*cos(n*t), (t, 0, n*36*pi), plot_points=5000)
g1.show(aspect_ratio=1)
g2.show(aspect_ratio=1)
