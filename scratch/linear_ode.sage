x = var('x'); y = function('y')(x)
desolve(diff(y,x) + 3*y == exp(x), y, show_method=True)
