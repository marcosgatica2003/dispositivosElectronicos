v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -80 160 720 560 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=4e-08
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="outv
inv"
dataset=-1
unitx=1
logx=0
logy=0
color="4 5"
autoload=1
rawfile=$netlist_dir/std_not4_tb.raw}
N 10 -140 10 -110 {
lab=#net1}
N -280 -140 10 -140 {
lab=#net1}
N -280 -140 -280 -50 {
lab=#net1}
N -280 10 -280 90 {
lab=GND}
N -280 90 10 90 {
lab=GND}
N 10 30 10 90 {
lab=GND}
N -160 -40 -160 -20 {
lab=inv}
N -160 -40 -100 -40 {
lab=inv}
N -160 40 -160 90 {
lab=GND}
N -160 90 -160 120 {
lab=GND}
N 10 90 260 90 {
lab=GND}
N 260 50 260 90 {
lab=GND}
N 230 20 240 20 {
lab=GND}
N 230 20 230 40 {
lab=GND}
N 230 40 230 90 {
lab=GND}
N 190 -40 260 -40 {
lab=outv}
N 260 -40 260 -10 {
lab=outv}
N 80 -40 190 -40 {lab=outv}
N 10 -110 10 -80 {lab=#net1}
N -100 -40 -60 -40 {lab=inv}
N 10 0 10 30 {lab=GND}
C {vsource.sym} -160 10 0 0 {name=V2 value="PULSE(0 1.8 0 1n 1n 5n 10n 4)" savecurrent=false}
C {vsource.sym} -280 -20 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -160 120 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -160 -40 0 0 {name=p2 sig_type=std_logic lab=inv
}
C {sky130_fd_pr/res_iso_pw.sym} 260 20 0 0 {name=R1
W=2.65
L=2.65
model=res_iso_pw
spiceprefix=X
mult=1}
C {sky130_fd_pr/corner.sym} 230 -260 0 0 {name=CORNER only_toplevel=false corner=tt}
C {code.sym} 400 -270 0 0 {name=STD_CELLS_include only_toplevel=false 
format="tcleval( @value)"
value="
.include /home/leonardo/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"
place=header}
C {code_shown.sym} 440 -70 0 0 {name=s2 only_toplevel=false value="
.control
        run
        tran 0.5n 40n
        write std_not4_tb.raw
.endc
.save all
"	}
C {inversor.sym} -100 50 0 0 {name=x1}
C {lab_wire.sym} 260 -40 0 0 {name=p1 sig_type=std_logic lab=outv
}
