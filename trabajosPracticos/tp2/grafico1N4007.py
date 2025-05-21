import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("simulacionDiodo1N4007.txt", sep="\t")

df.columns = ["Voltaje (V)", "Corriente (A)"]

plt.figure(figsize=(10, 6))
plt.plot(df["Voltaje (V)"], df["Corriente (A)"], label="I vs V", color="red")
plt.axhline(0, color='black', linewidth=0.5)
plt.axvline(0, color='black', linewidth=0.5)
plt.title("Curva I(V_Diodo) del diodo 1N4007")
plt.xlabel("Voltaje [V]")
plt.ylabel("Corriente [A]")
plt.grid(True)
plt.legend()
plt.tight_layout()
plt.show()
