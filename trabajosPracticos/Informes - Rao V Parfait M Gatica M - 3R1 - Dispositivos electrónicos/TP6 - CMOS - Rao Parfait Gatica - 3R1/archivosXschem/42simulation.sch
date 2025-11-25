v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 120 -320 150 {lab=GND}
N -260 120 -260 150 {lab=GND}
N -320 -90 -320 60 {lab=#net1}
N -260 30 -260 60 {lab=vin}
N -260 20 -260 30 {lab=vin}
N 130 -20 130 20 {lab=vout}
N 130 -20 280 -20 {lab=vout}
N 280 -20 280 -10 {lab=vout}
N 280 50 280 150 {lab=GND}
N 260 20 260 150 {lab=GND}
N -270 20 -260 20 {lab=vin}
N 280 -20 310 -20 {lab=vout}
N -260 20 -50 20 {lab=vin}
N -320 150 280 150 {lab=GND}
N -10 60 -10 150 {lab=GND}
N 50 20 130 20 {lab=vout}
N -10 -90 -10 -20 {lab=#net1}
N -320 -90 -10 -90 {lab=#net1}
C {vsource.sym} -320 90 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -260 90 0 0 {name=V2 value="PULSE(0 1.8 0 1n 1n 5n 10n 4)" savecurrent=false
}
C {sky130_fd_pr/res_iso_pw.sym} 280 20 0 0 {name=R1
W=2.65
L=2.65
model=res_iso_pw
spiceprefix=X
mult=1}
C {lab_pin.sym} -270 20 0 0 {name=p3 sig_type=std_logic lab="vin"}
C {lab_pin.sym} 310 -20 0 1 {name=p1 sig_type=std_logic lab="vout"}
C {sky130_fd_pr/corner.sym} 260 -210 0 0 {name=CORNER only_toplevel=false corner=tt 
}
C {code.sym} 370 -210 0 0 {name=s1 only_toplevel=false value="
.control
	run
	tran 0.5n 40n
	write std_not4_tb.raw
.endc
.save all
"
}
C {code.sym} 370 -70 0 0 {name=STDCELLS_include only_toplevel=false
format="tcleval( @value )"
value="
.include /home/marcosgatica/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
place=header}
C {/home/marcosgatica/facultadUTN/dispositivosElectronicos/trabajosPracticos/tp6/archivosXschem/41schematicDesignActividad2.sym} 100 20 0 0 {name=x1}
C {gnd.sym} -10 150 0 0 {name=l1 lab=GND}
