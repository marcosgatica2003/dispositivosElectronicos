v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
B 2 -1440 -290 -640 110 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-6e-09
x2=3.4e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="out
in"
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
autoload=1
rawfile=$netlist_dir/std_not4_tb.raw}
N -1260 -500 -1140 -500 {lab=in}
N -1260 -500 -1260 -490 {lab=in}
N -1070 -590 -1070 -540 {lab=#net1}
N -1320 -590 -1070 -590 {lab=#net1}
N -1320 -590 -1320 -490 {lab=#net1}
N -1000 -500 -900 -500 {lab=out}
N -900 -500 -900 -490 {lab=out}
N -1070 -460 -1070 -390 {lab=GND}
N -1260 -430 -1260 -390 {lab=GND}
N -1320 -430 -1320 -390 {lab=GND}
N -900 -430 -900 -390 {lab=GND}
N -1320 -390 -900 -390 {lab=GND}
N -920 -460 -920 -390 {lab=GND}
N -1280 -500 -1260 -500 {lab=in}
N -900 -500 -870 -500 {lab=out}
N -1010 -500 -1000 -500 {lab=out}
N -1140 -500 -1110 -500 {lab=in}
C {inversor.sym} -1180 -410 0 0 {name=x1}
C {vsource.sym} -1320 -460 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -1260 -460 0 0 {name=V2 value="PULSE(0 1.8 0 1n 1n 5n 10n 4)" savecurrent=false}
C {sky130_fd_pr/res_iso_pw.sym} -900 -460 0 0 {name=R1
W=2.65
L=2.65
model=res_iso_pw
spiceprefix=X
mult=1}
C {gnd.sym} -1070 -390 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1280 -500 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} -870 -500 2 0 {name=p2 sig_type=std_logic lab=out}
C {sky130_fd_pr/corner.sym} -640 -580 0 0 {name=CORNER only_toplevel=true corner=tt}
C {code.sym} -490 -580 0 0 {name=STDCELLS_include only_toplevel=false
format="tcleval( @value )"
value="
.include /home/leonardo/pdk/sky130B/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
place=header}
C {code_shown.sym} -500 -390 0 0 {name=s1 only_toplevel=false value="
.control
	run
	tran 0.5n 40n
	write std_not4_tb.raw
.endc
.save all
"}
C {/home/marcosgatica/facultadUTN/dispositivosElectronicos/trabajosPracticos/tp6/archivosXschem/41schematicDesignActividad2.sym} -1060 -460 0 0 {name=x2}
