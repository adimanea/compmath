x = var('x'); y = function('y')(x)
desolve(x^2*diff(y,x) == y^2 + x*y + x^2, y, show_method=True)
