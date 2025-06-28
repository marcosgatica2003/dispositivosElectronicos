import pandas as pd
import matplotlib.pyplot as plt

ej3_1 = pd.read_csv(r"templateLaTeX\imagenes\imgSimulacion3-1.txt", sep="\t")
ej3_1.columns = ["Voltaje (V)", "Corriente (A)"]
ej3_2 = pd.read_csv(r"templateLaTeX\imagenes\imgSimulacion3-2.txt", sep="\t")
ej3_2.columns = ["Voltaje (V)", "Corriente (A)"]
plt.figure(figsize=(10, 6))
plt.plot(ej3_1["Voltaje (V)"], ej3_1["Corriente (A)"], label="Circuito A", color="red")
plt.plot(ej3_2["Voltaje (V)"], ej3_2["Corriente (A)"], label="Circuito B", color="blue")
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.title("Curva I-V comparativa de los circuitos")
plt.xlabel("Voltaje [V]")
plt.ylabel("Corriente [A]")
plt.legend()
plt.tight_layout()
plt.savefig("graficoEj3.png")
