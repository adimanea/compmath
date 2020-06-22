x = var('x'); y = function('y')(x)
desolve(diff(y,x) == x*y^2 + y/x - 1/x^2, y, contrib_ode=True, show_method=True)
