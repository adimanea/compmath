n, l, x, y = 1000, 1, 0, 0; p = [[0,0]]
for k in range(n):
	theta = (2*pi*random()).n(digits=5)
	x, y = x + l * cos(theta), y + l * sin(theta)
	p.append([x, y])
g1 = line([p[n], [0, 0]], color='red', thickness=2)
g1 += line(p, thickness=.4); g1.show(aspect_ratio=1)
