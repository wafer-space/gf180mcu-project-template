v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 730 -400 770 -400 {lab=B}
N 1080 -400 1130 -400 {lab=-B}
N 810 -530 810 -430 {lab=S}
N 810 -530 930 -530 {lab=S}
N 930 -650 930 -530 {lab=S}
N 930 -530 1040 -530 {lab=S}
N 1040 -530 1040 -430 {lab=S}
N 810 -370 810 -320 {lab=vz}
N 1040 -370 1040 -320 {lab=vw}
N 810 -210 1040 -210 {lab=VSS}
N 810 -790 810 -740 {lab=vx}
N 740 -710 770 -710 {lab=-B}
N 740 -820 770 -820 {lab=A}
N 930 -170 930 -110 {lab=VSS}
N 930 -210 930 -170 {lab=VSS}
N 1040 -790 1040 -740 {lab=vy}
N 1040 -850 1040 -820 {lab=VDD}
N 1080 -710 1110 -710 {lab=B}
N 1080 -820 1110 -820 {lab=-A}
N 810 -680 810 -660 {lab=S}
N 810 -660 930 -660 {lab=S}
N 930 -660 930 -650 {lab=S}
N 1040 -680 1040 -660 {lab=S}
N 930 -930 930 -890 {lab=VDD}
N 730 -290 770 -290 {lab=A}
N 1080 -290 1130 -290 {lab=-A}
N 1040 -290 1040 -260 {lab=VSS}
N 810 -290 810 -260 {lab=VSS}
N 810 -260 810 -210 {lab=VSS}
N 1040 -260 1040 -210 {lab=VSS}
N 930 -660 1040 -660 {lab=S}
N 1040 -890 1040 -880 {lab=VDD}
N 1040 -880 1040 -850 {lab=VDD}
N 810 -400 850 -400 {lab=VSS}
N 850 -400 850 -210 {lab=VSS}
N 1000 -400 1040 -400 {lab=VSS}
N 1000 -400 1000 -210 {lab=VSS}
N 810 -710 860 -710 {lab=VDD}
N 860 -890 860 -710 {lab=VDD}
N 810 -890 860 -890 {lab=VDD}
N 860 -890 1040 -890 {lab=VDD}
N 1000 -820 1040 -820 {lab=VDD}
N 1000 -890 1000 -820 {lab=VDD}
N 1010 -710 1040 -710 {lab=VDD}
N 1000 -710 1010 -710 {lab=VDD}
N 1000 -820 1000 -710 {lab=VDD}
N 1040 -530 1170 -530 {lab=S}
N 1170 -530 1180 -530 {lab=S}
N 1180 -530 1220 -530 {lab=S}
N 220 -560 280 -560 {lab=-A}
N 20 -560 80 -560 {lab=A}
N 140 -680 140 -630 {lab=VDD}
N 140 -490 140 -440 {lab=VSS}
N 600 -560 660 -560 {lab=-B}
N 400 -560 460 -560 {lab=B}
N 520 -680 520 -630 {lab=VDD}
N 520 -490 520 -440 {lab=VSS}
N 810 -890 810 -850 {lab=VDD}
N 810 -820 860 -820 {lab=VDD}
C {symbols/nfet_03v3.sym} 790 -400 0 0 {name=M2
L=0.28u
W=1u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {title.sym} 170 0 0 0 {name=l1 author="JLuengas, NVelasco & CAlvarez"}
C {symbols/pfet_03v3.sym} 790 -710 0 0 {name=M3
L=0.28u
W=3u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 790 -820 0 0 {name=M1
L=0.28u
W=3u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1060 -400 0 1 {name=M4
L=0.28u
W=1u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 930 -110 3 1 {name=p7 lab=VSS}
C {symbols/pfet_03v3.sym} 1060 -710 0 1 {name=M5
L=0.28u
W=3u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1060 -820 0 1 {name=M6
L=0.28u
W=3u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {iopin.sym} 930 -930 3 0 {name=p1 lab=VDD}
C {symbols/nfet_03v3.sym} 790 -290 0 0 {name=M7
L=0.28u
W=1u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 1060 -290 0 1 {name=M8
L=0.28u
W=1u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {iopin.sym} 1220 -530 0 0 {name=p2 lab=S}
C {iopin.sym} 730 -290 0 1 {name=p3 lab=A}
C {iopin.sym} 730 -400 2 0 {name=p4 lab=B}
C {lab_wire.sym} 740 -820 0 0 {name=p5 sig_type=std_logic lab=A}
C {lab_wire.sym} 1130 -290 0 1 {name=p8 sig_type=std_logic lab=-A}
C {lab_wire.sym} 1130 -400 2 0 {name=p9 sig_type=std_logic lab=-B}
C {lab_wire.sym} 1110 -820 0 1 {name=p6 sig_type=std_logic lab=-A}
C {lab_wire.sym} 740 -710 0 0 {name=p10 sig_type=std_logic lab=-B}
C {lab_wire.sym} 1110 -710 0 1 {name=p11 sig_type=std_logic lab=B}
C {lab_wire.sym} 250 -560 2 0 {name=p12 sig_type=std_logic lab=-A}
C {lab_wire.sym} 630 -560 2 0 {name=p17 sig_type=std_logic lab=-B
}
C {lab_wire.sym} 50 -560 2 1 {name=p13 sig_type=std_logic lab=A}
C {lab_wire.sym} 430 -560 2 1 {name=p16 sig_type=std_logic lab=B}
C {/foss/designs/chipathon_2025/designs/gf180/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} 140 -560 0 0 {name=xINVA}
C {/foss/designs/chipathon_2025/designs/gf180/gate_inv_L0d28/xschem/gate_inv_L0d28.sym} 520 -560 0 0 {name=xINVB}
C {lab_wire.sym} 140 -660 2 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 140 -470 2 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 520 -660 2 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 520 -440 2 0 {name=p21 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 810 -770 2 1 {name=p18 sig_type=std_logic lab=vx}
C {lab_wire.sym} 1040 -770 2 1 {name=p19 sig_type=std_logic lab=vy}
C {lab_wire.sym} 810 -350 2 1 {name=p22 sig_type=std_logic lab=vz}
C {lab_wire.sym} 1040 -350 2 1 {name=p23 sig_type=std_logic lab=vw}
C {symbols/pfet_03v3.sym} 1490 -840 0 1 {name=M10
L=0.28u
W=3u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 1630 -840 0 1 {name=M11
L=0.28u
W=3u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1470 -870 2 1 {name=p28 sig_type=std_logic lab=vx}
C {lab_wire.sym} 1610 -870 2 1 {name=p29 sig_type=std_logic lab=vy}
C {lab_wire.sym} 1470 -840 2 1 {name=p30 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1470 -810 2 1 {name=p31 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1510 -840 0 1 {name=p32 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1610 -840 2 1 {name=p33 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1610 -810 2 1 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1650 -840 0 1 {name=p35 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 1490 -310 0 1 {name=M13
L=0.28u
W=1u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1470 -310 2 1 {name=p41 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1470 -280 2 1 {name=p42 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1510 -310 0 1 {name=p43 sig_type=std_logic lab=VSS}
C {symbols/nfet_03v3.sym} 1630 -310 0 1 {name=M14
L=0.28u
W=1u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 1610 -310 2 1 {name=p45 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1610 -280 2 1 {name=p46 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1650 -310 0 1 {name=p47 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 1470 -340 2 1 {name=p40 sig_type=std_logic lab=vz}
C {lab_wire.sym} 1610 -340 2 1 {name=p44 sig_type=std_logic lab=vw}
