# define variables and functions
x, t = var('x, t')
f = function('f')(x)
g = function('g')(t)
z = f * g

print('The equation:')
eq(x, t) = diff(z, x, 2) == diff(z, t); eq(x, t)

print('Divide by f(x) g(t), assumed not zero')
eqn = eq/z; eqn(x, t)

print('Separate equations and introduce a constant k')
k = var('k')
eq1(x, t) = eqn(x, t).lhs() == k; eq1
eq2(x, t) = eqn(x, t).rhs() == k; eq2

# solve them separately, starting with the second
g(t) = desolve(eq2(x,t), [g,t]); g(t)
# print('g(t) = ' + str(g(t)))

# for the second one, we need an assumption on k
assume(k > 0);
f(x) = desolve(eq1, [f,x])
print('f(x) = ' + str(f(x)))
