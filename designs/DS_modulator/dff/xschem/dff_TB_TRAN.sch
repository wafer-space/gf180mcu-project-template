v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 130 -420 130 -380 {lab=VDD}
N 130 -320 130 -300 {lab=0}
N 310 -210 310 -190 {lab=0}
N 600 -340 600 -310 {lab=0}
N 550 -290 550 -260 {lab=0}
N 550 -370 550 -350 {lab=Q}
N 600 -410 600 -400 {lab=QN}
N 520 -410 600 -410 {lab=QN}
N 310 -360 330 -360 {lab=CLK}
N 310 -360 310 -270 {lab=CLK}
N 520 -370 550 -370 {lab=Q}
N 220 -400 220 -390 {lab=D}
N 220 -400 330 -400 {lab=D}
N 220 -330 220 -310 {lab=0}
C {vsource.sym} 130 -350 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} 130 -300 0 0 {name=l1 lab=0}
C {gnd.sym} 410 -450 2 0 {name=l2 lab=0}
C {vdd.sym} 130 -420 0 0 {name=l3 lab=VDD}
C {vdd.sym} 430 -450 0 0 {name=l4 lab=VDD}
C {gnd.sym} 310 -190 0 0 {name=l7 lab=0}
C {lab_wire.sym} 310 -320 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {devices/title.sym} 160 0 0 0 {name=l8 author= Luisa_Dovale}
C {devices/code_shown.sym} 680 -560 0 0 {name=NGSPICE only_toplevel=true 
value="
.control
save all

**Set sources

** Sims 
op
tran 10p 900n
meas tran tdelay TRIG v(clk) VAl=0.9 FALl=1 TARG v(Q) VAl=0.9 RISE=1
plot v(Q) v(D) v(CLK)

write dff_TB_TRAN.raw
.endc
"}
C {devices/vsource.sym} 310 -240 0 0 {name=Vclk value="dc 0 ac 0 PULSE(0 1.5 0.15n 1p 1p 100n 200n)"}
C {capa.sym} 600 -370 0 0 {name=C1
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 550 -320 0 0 {name=C2
m=1
value=50f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 550 -260 0 0 {name=l5 lab=0}
C {gnd.sym} 600 -310 0 0 {name=l6 lab=0}
C {lab_wire.sym} 580 -410 0 0 {name=p2 sig_type=std_logic lab=QN}
C {lab_wire.sym} 530 -370 0 1 {name=p3 sig_type=std_logic lab=Q
}
C {dff.sym} 330 -350 0 0 {name=x1}
C {devices/vsource.sym} 220 -360 0 0 {name=VD value="dc 0 ac 0 PULSE(0 1.5 75n 1p 1p 150n 400n)"}
C {gnd.sym} 220 -310 0 0 {name=l9 lab=0}
C {code_shown.sym} 0 -560 0 0 {name=models only_toplevel=true value=".include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {lab_wire.sym} 270 -400 0 0 {name=p4 sig_type=std_logic lab=D
}
