x = var('x'); y = function('y')(x)
# assign the solutions, to use them later
ed = desolve(diff(y,x) * log(y) == y*sin(x), y)
print('Implicit solution: ' + str(ed))

# since the solution is implicit, we make it explicit
print('Explicit solution:')
solve(ed, y)

# give a random value to _C
c = ed.variables()[0]                   # variables = (_C, x)
print('Explicit solution, with a particular _C:')
solve(ed,y)[0].substitute(c==5).rhs()

# plot several solutions (for various _C)
P = Graphics()                          # initialize an empty canvas
for k in range(1, 20, 2):
	P += plot(solve(ed, y)[0].substitute(c == 1 + k/4).rhs(), x, -3, 3)
P.show()
