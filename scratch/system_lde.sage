x = var('x')
y1 = function('y1')(x)
y2 = function('y2')(x)
y3 = function('y3')(x)
y = vector([y1, y2, y3])
A = matrix([[2,-2,0], [2,0,2], [0,2,2]])
system = [diff(y[i], x) - (A * y)[i] for i in range(3)]

desolve_system(system, [y1,y2,y3], ics=[0,2,1,-2])
