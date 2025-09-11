#Constantes
Rs = 1.1e3
Vgsoff = -7.7
Idss = 4.3e-3

# Reducir a la forma cuadrática la siguiente
# ecuación con la ayuda de Vgs = -Id Rs

# Id = Idss (1-(Vgs/Vgsoff))²

#a x² + b x + c = 0

a = (Rs**2)/(Vgsoff**2)
b = (((2*Rs)/(Vgsoff))-((1)/(Idss)))
c = 1

import numpy as np
r = np.roots([a,b,c])

print("Las raíces son: ",r)

