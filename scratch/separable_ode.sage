x = var('x'); y = function('y')(x)
desolve(y*diff(y,x) == x, y, show_method=True)
