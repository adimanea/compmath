x, s = var('x, s')
f = function('f')(x)
f(x) = sin(x);

print('Laplace transform of sin(x):')
f.laplace(x,s)

print('Get the inverse transform:')
X(s) = 1/(s^2 - 3*s + 4)/(s^2 + 1) + (s-4)/(s^2 - 3*s - 4)
X(s).inverse_laplace(s, x)

print('=== ALTERNATIVE ===')
print('Decompose in partial fractions first')
X(s).partial_fraction()
print('Now use the inversion table.')

print('=== ALTERNATIVE 2 ===')
print('Use desolve_laplace')
x = var('x'); y = function('y')(x)
eq = diff(y,x,x) - 3*diff(y,x) - 4*y - sin(x) == 0
print('General solution:')
desolve_laplace(eq, y)
print('Adding initial conditions [0,1,-1]')
desolve_laplace(eq, y, ics=[0,1,-1])
