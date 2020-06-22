x = var('x'); y = function('y')(x)
DE = diff(y,x) + 2*y == x**2 - 2*x + 3
desolve(DE,y).expand()
