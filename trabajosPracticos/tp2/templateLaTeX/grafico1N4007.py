import pandas as pd 
import matplotlib.pyplot as plt 

df4007 = pd.read_csv("simulacionDiodo1N4007.txt", sep="\t")
df4007.columns = ["Voltaje (V)", "Corriente (A)"]
df60 = pd.read_csv("simulacionDiodo1N60.txt", sep="\t")
df60.columns = ["Voltaje (V)", "Corriente (A)"]
plt.figure(figsize=(10, 6))
plt.plot(df4007["Voltaje (V)"], df4007["Corriente (A)"], label="1N4007", color="red")
plt.plot(df60["Voltaje (V)"], df60["Corriente (A)"], label="1N60", color="blue")
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.title("Curva I-V del diodo 1N4007 y 1N60")
plt.xlabel("Voltaje [V]")
plt.ylabel("Corriente [A]")
plt.legend()
plt.tight_layout()
plt.savefig("graficoCorrienteVSTensionDiodosPython.png")

