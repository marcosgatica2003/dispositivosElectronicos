import matplotlib.pyplot as plt

voltajeFuente = [0, 0.1, 0.3, 0.4, 0.45, 0.5, 0.55, 0.6, 0.65, 0.7, 1, 3, 5]

voltajeDiodo1N4007 = [7.7, 101, 294, 394, 427, 459, 480, 498, 512, 523, 563, 643, 672]
corrienteDiodo1N4007 = [-3, -4, -4, 1, 10, 35, 52, 75, 110, 130, 345, 1335, 4435]

voltajeDiodo1N60 = [6, 75, 162, 184, 196, 202, 216, 225, 231, 241, 286, 475, 655]
corrienteDiodo1N60 = [-4, 22, 135, 207, 252, 275, 333, 371, 410, 458, 724, 2512, 4355]

voltajeDiodo1N4007 = [v / 1000 for v in voltajeDiodo1N4007]
voltajeDiodo1N60 = [v / 1000 for v in voltajeDiodo1N60]

plt.figure(figsize=(10, 5))
plt.subplot(1, 2, 1)
plt.plot(voltajeFuente, corrienteDiodo1N4007, marker='o', color='red', label='1N4007')
plt.plot(voltajeFuente, corrienteDiodo1N60, marker='s', color='blue', label='1N60')
plt.title('Corriente vs Voltaje Fuente')
plt.xlabel('Voltaje de la Fuente [V]')
plt.ylabel('Corriente $I_D$ [mA]')
plt.legend()

plt.subplot(1, 2, 2)
plt.plot(voltajeFuente, voltajeDiodo1N4007, marker='o', color='red', label='1N4007')
plt.plot(voltajeFuente, voltajeDiodo1N60, marker='s', color='blue', label='1N60')
plt.title('Voltaje del Diodo vs Voltaje Fuente')
plt.xlabel('Voltaje de la Fuente [V]')
plt.ylabel('Voltaje en el Diodo $V_D$ [V]')
plt.legend()

plt.tight_layout()
plt.savefig("graficosValoresRealesDiodos.png")
