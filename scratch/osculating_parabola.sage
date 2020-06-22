# parabola in parametric form
t = var('t'); p = 2
x(t) = t; y(t) = t^2 / (2*p); f(t) = [x(t), y(t)]
df(t) = [x(t).diff(t), y(t).diff(t)]
d2f(t) = [x(t).diff(t, 2), y(t).diff(t, 2)]

T(t) = [df(t)[0] / df(t).norm(), df[1](t) / df(t).norm()]
N(t) = [-df(t)[1] / df(t).norm(), df[0](t) / df(t).norm()]
R(t) = (df(t).norm())^3 / (df(t)[0]*d2f(t)[1] - df(t)[1] * d2f(t)[0])
Omega(t) = [f(t)[0] + R(t)*N(t)[0], f(t)[1] + R(t)*N(t)[1]]
g = parametric_plot(f(t), (t, -8, 8), color='green', thickness=2)
for u in srange(.4, 4, .2):
	g += line([f(t=u), Omega(t=u)], color='red', alpha = .5)
	g += circle(Omega(t=u), R(t=u), color='blue')
g.show(aspect_ratio=1, xmin=-12, xmax=7, ymin=-3, ymax=12)
