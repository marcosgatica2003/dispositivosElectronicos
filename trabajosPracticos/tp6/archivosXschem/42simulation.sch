v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 150 -30 150 {lab=GND}
N -320 120 -320 150 {lab=GND}
N -260 120 -260 150 {lab=GND}
N -320 -90 -320 60 {lab=#net1}
N -320 -90 -30 -90 {lab=#net1}
N -10 -90 -10 -20 {lab=#net1}
N -30 -90 -10 -90 {lab=#net1}
N -260 30 -260 60 {lab=Vin}
N -260 20 -70 20 {lab=Vin}
N -260 20 -260 30 {lab=Vin}
N -10 60 -10 150 {lab=GND}
N -30 150 -10 150 {lab=GND}
N 50 20 130 20 {lab=Vout}
N 130 -20 130 20 {lab=Vout}
N 130 -20 280 -20 {lab=Vout}
N 280 -20 280 -10 {lab=Vout}
N 280 50 280 150 {lab=GND}
N -10 150 280 150 {lab=GND}
N 260 20 260 150 {lab=GND}
N -270 20 -260 20 {lab=Vin}
N 280 -20 310 -20 {lab=Vout}
N -70 20 -60 20 {lab=Vin}
N 47 20 50 20 {lab=Vout}
C {vsource.sym} -320 90 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -260 90 0 0 {name=V2 value="PULSE (0 1.8 0 1n 1n 5n 10n 4)" savecurrent=false}
C {gnd.sym} -30 150 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/res_iso_pw.sym} 280 20 0 0 {name=R1
W=2.65
L=2.65
model=res_iso_pw
spiceprefix=X
mult=1}
C {lab_pin.sym} -270 20 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 310 -20 0 1 {name=p1 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/corner.sym} 520 -250 0 0 {name=CORNER only_toplevel=false corner=tt}
C {/home/marcosgatica/facultadUTN/dispositivosElectronicos/trabajosPracticos/tp6/archivosXschem/41schematicDesignActividad2.sym} -45 40 0 0 {name=x1}
