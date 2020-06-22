x = var('x'); y = function('y')(x)
desolve(diff(y,x) == (cos(y) - 2*x)/(y + x*sin(y)), y, show_method=True)
