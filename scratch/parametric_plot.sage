t = var('t')
x = cos(t) + cos(7*t)/2 + sin(17*t)/3
y = sin(t) + sin(7*t)/2 + cos(17*t)/3
g = parametric_plot((x, y), (t, 0, 2*pi))
g.show(aspect_ratio=1)
