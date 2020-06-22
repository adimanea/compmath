x = var('x'); y = function('y')(x)
DE = diff(y,x,2) + 3*y == x^2 - 7*x + 31
print('Expanded general solution:')
desolve(DE, y).expand()

# add initial conditions, e.g. y(0) = 1, y'(0) = 2
print("Adding initial conditions y(0) = 1, y'(0) = 2:")
desolve(DE, y, ics=[0,1,2]).expand()
