x = var('x'); y = function('y')(x)
desolve(diff(y,x)-y == x*y^4, y, show_method=True)
