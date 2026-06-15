v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 100 -85 100 -55 {lab=GND}
N 200 -85 200 -55 {lab=GND}
N 100 -185 100 -145 {lab=VDD}
N 320 -85 320 -55 {lab=GND}
N 620 -340 620 -330 {lab=VDD}
N 620 -190 620 -165 {lab=GND}
N 730 -260 760 -260 {lab=out}
N 475 -240 515 -240 {lab=b}
N 515 -240 530 -240 {lab=b}
N 475 -280 515 -280 {lab=a}
N 515 -280 530 -280 {lab=a}
N 200 -90 200 -85 {lab=GND}
N 200 -180 200 -150 {lab=a}
N 320 -90 320 -85 {lab=GND}
N 320 -180 320 -150 {lab=b}
N 830 -200 830 -180 {lab=GND}
N 760 -260 830 -260 {lab=out}
C {gnd.sym} 100 -55 0 0 {name=l1 lab=GND}
C {vsource.sym} 100 -115 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 200 -55 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 200 -175 0 0 {name=p8 sig_type=std_logic lab=a
}
C {lab_wire.sym} 100 -185 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 320 -55 0 0 {name=l3 lab=GND}
C {lab_wire.sym} 320 -175 0 0 {name=p1 sig_type=std_logic lab=b
}
C {lab_wire.sym} 620 -340 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {gnd.sym} 620 -165 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 760 -260 1 0 {name=p3 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 440 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical

"}
C {lab_wire.sym} 475 -240 3 1 {name=p4 sig_type=std_logic lab=b
}
C {lab_wire.sym} 475 -280 3 1 {name=p5 sig_type=std_logic lab=a
}
C {code.sym} 140 -380 0 0 {name=test_xor only_toplevel=false 
value="
.control
*------------------- Parámetros -------------------
.param wxor=5.6u
.param cap=5f

*------------------- Guardar nodos -------------------
save all

* Entradas A y B con pulsos desfasados
alter @v2[PULSE]=(0 1.8 0 10p 10p 2.5n 10n)   ; Señal A
alter @v3[PULSE]=(0 1.8 0 10p 10p 1.5n 5n)    ; Señal B

*------------------- Simulación -------------------
TRAN 0.01n 20n


plot v(A) v(B) v(out)


* Medidas para caracterización
.meas TRAN t_rise TRIG v(b)=0.9 RISE=1 TARG v(out)=0.9 RISE=1
.meas TRAN t_fall TRIG v(b)=0.9 FALL=1 TARG v(out)=0.9 FALL=1

* Guardar resultados
*write prueba_xor.raw
.endc
"}
C {vsource.sym} 200 -120 0 0 {name=V2 value=1.8 savecurrent=false}
C {vsource.sym} 320 -120 0 0 {name=V3 value=1.8 savecurrent=false}
C {gf180/gate_xor/xschem/gate_xor.sym} 620 -260 0 0 {name=xor}
C {gnd.sym} 830 -185 0 0 {name=l5 lab=GND}
C {capa.sym} 830 -230 0 0 {name=C1
m=1
value=\{cap\}
footprint=1206
device="ceramic capacitor"}
