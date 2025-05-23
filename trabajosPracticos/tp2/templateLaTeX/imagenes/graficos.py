import pandas as pd 
import matplotlib.pyplot as plt 

def configuracionesMatplotLib(pandas1n4007, pandas1n60, polarizacion):
    plt.figure(figsize=(10, 6))
    plt.plot(pandas1n4007["Voltaje (V)"], pandas1n4007["Corriente (A)"], label="1N4007", color="red")
    plt.plot(pandas1n60["Voltaje (V)"], pandas1n60["Corriente (A)"], label="1N60", color="blue")
    plt.axhline(0, color='black', linewidth=0.5)
    plt.axvline(0, color='black', linewidth=0.5)
    plt.title("Curva I-V del diodo 1N4007 y 1N60")
    plt.xlabel("Voltaje [V]")
    plt.ylabel("Corriente [A]")
    plt.legend()
    plt.tight_layout()

    if polarizacion == "directa":
        nombreDelPng = "graficoCorrienteVSTensionDiodosPython.png"
    if polarizacion == "inversa":
        nombreDelPng = "graficoCorrienteVSTensionDiodosInversaPython.png" 

    plt.savefig(nombreDelPng)

def graficosEnDirecta():
    df4007 = pd.read_csv("simulacionDiodo1N4007.txt", sep="\t")
    df4007.columns = ["Voltaje (V)", "Corriente (A)"]
    df60 = pd.read_csv("simulacionDiodo1N60.txt", sep="\t")
    df60.columns = ["Voltaje (V)", "Corriente (A)"]

    return df4007, df60

def graficosEnInversa():
    df4007 = pd.read_csv("simulacionDiodo1N4007Inversa.txt", sep="\t")
    df4007.columns = ["Voltaje (V)", "Corriente (A)"]
    df60 = pd.read_csv("simulacionDiodo1N60Inversa.txt", sep="\t")
    df60.columns = ["Voltaje (V)", "Corriente (A)"]

    return df4007, df60

rao, manolo = graficosEnInversa()
#rao, manolo = graficosEnDirecta()
configuracionesMatplotLib(rao, manolo, polarizacion="inversa")
