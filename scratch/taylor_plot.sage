def p(x, n):
	return(taylor(sin(x), x, 0, n))
xmax = 15; n = 15
g = plot(sin(x), x, -xmax, xmax)
for d in range(n):
	g += plot(p(x, 2*d + 1), x, -xmax, xmax,
			  color=(1.7*d/(2*n), 1.5*d/(2*n), 1-3*d/(4*n)))
g.show(ymin=-2, ymax=2)
