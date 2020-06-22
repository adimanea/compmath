x = var('x'); y = function('y')
DE = x*diff(y(x), x) == 2*y(x) + x^3
sol = []
for i in srange(-2, 2, 0.2):
	sol.append(desolve(DE, [y(x), x], ics=[1,i]))
	sol.append(desolve(DE, [y(x), x], ics=[-1,i]))
g = plot(sol, x, -2, 2)
y = var('y')
g += plot_vector_field((x, 2*y+x^3), (x, -2, 2), (y, -1, 1))
g.show(ymin=-1, ymax=1)
