v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 60 -120 60 -60 {lab=#net1}
N 60 -260 60 -180 {lab=#net1}
N 60 -210 190 -210 {lab=#net1}
N 330 -210 330 -170 {lab=CLKD}
N 250 -210 330 -210 {lab=CLKD}
N 330 -210 390 -210 {lab=CLKD}
N -70 -80 60 -80 {lab=#net1}
N 60 0 60 50 {lab=VSS}
N 60 -360 60 -320 {lab=VDD}
N 60 -180 90 -180 {lab=#net1}
N 90 -180 90 -120 {lab=#net1}
N 60 -120 90 -120 {lab=#net1}
N -190 -80 -130 -80 {lab=VDD}
N 330 -110 330 -60 {lab=VSS}
N 60 -290 100 -290 {lab=VDD}
N 100 -330 100 -290 {lab=VDD}
N 60 -330 100 -330 {lab=VDD}
N -100 -120 -100 -80 {lab=VDD}
N -150 -120 -100 -120 {lab=VDD}
N -150 -120 -150 -80 {lab=VDD}
N 60 -30 90 -30 {lab=VSS}
N 90 -30 90 10 {lab=VSS}
N 60 10 90 10 {lab=VSS}
N 330 -140 360 -140 {lab=VSS}
N 360 -140 360 -100 {lab=VSS}
N 330 -100 360 -100 {lab=VSS}
N 60 -150 150 -150 {lab=VSS}
N -20 -150 20 -150 {lab=Vbias}
N -20 -30 20 -30 {lab=CLKb}
N -100 -40 -100 -30 {lab=CLKb}
N -100 -30 -20 -30 {lab=CLKb}
N 220 -170 220 -140 {lab=CLKb}
N 220 -140 290 -140 {lab=CLKb}
N -40 -290 20 -290 {lab=CLKD}
N 220 -280 220 -210 {lab=#net2}
C {symbols/nfet_03v3.sym} 40 -30 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 40 -290 0 0 {name=M3
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -100 -60 3 0 {name=M4
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 310 -140 0 0 {name=M5
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 220 -190 3 0 {name=M6
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 40 -150 0 0 {name=M7
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 60 -360 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 -360 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -190 -80 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 50 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 330 -60 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 150 -150 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -20 -150 0 0 {name=p7 sig_type=std_logic lab=Vbias}
C {lab_pin.sym} -50 -30 3 0 {name=p8 sig_type=std_logic lab=CLKb}
C {lab_pin.sym} 240 -140 3 0 {name=p9 sig_type=std_logic lab=CLKb}
C {lab_pin.sym} 390 -210 0 1 {name=p10 sig_type=std_logic lab=CLKD}
C {lab_pin.sym} -40 -290 0 0 {name=p11 sig_type=std_logic lab=CLKD}
C {iopin.sym} -240 -350 0 0 {name=p12 lab=VDD}
C {iopin.sym} -240 -310 0 0 {name=p13 lab=VSS}
C {iopin.sym} -240 -270 0 0 {name=p14 lab=Vbias}
C {iopin.sym} -240 -230 0 0 {name=p15 lab=CLKb}
C {iopin.sym} -240 -190 0 0 {name=p16 lab=CLKD}
C {lab_pin.sym} 220 -280 0 0 {name=p17 sig_type=std_logic lab=VDD}
