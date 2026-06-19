v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 1130 -740 1130 -560 {lab=VSS}
N 1350 -740 1350 -560 {lab=VSS}
N 1060 -560 1100 -560 {lab=#net1}
N 1060 -650 1060 -560 {lab=#net1}
N 1020 -650 1060 -650 {lab=#net1}
N 1060 -740 1060 -650 {lab=#net1}
N 1060 -740 1100 -740 {lab=#net1}
N 1160 -740 1320 -740 {lab=Voutn}
N 1160 -560 1200 -560 {lab=Vcm}
N 1200 -560 1200 -400 {lab=Vcm}
N 1160 -400 1200 -400 {lab=Vcm}
N 1280 -400 1320 -400 {lab=Vcm}
N 1280 -560 1280 -400 {lab=Vcm}
N 1280 -560 1320 -560 {lab=Vcm}
N 1200 -480 1280 -480 {lab=Vcm}
N 1130 -520 1130 -440 {lab=P1}
N 1350 -520 1350 -440 {lab=P1}
N 1380 -560 1420 -560 {lab=#net2}
N 1420 -650 1420 -560 {lab=#net2}
N 1420 -740 1420 -650 {lab=#net2}
N 1380 -740 1420 -740 {lab=#net2}
N 1420 -650 1460 -650 {lab=#net2}
N 1160 -220 1320 -220 {lab=Voutp}
N 1350 -400 1350 -220 {lab=VSS}
N 1130 -400 1130 -220 {lab=VSS}
N 1380 -220 1420 -220 {lab=#net3}
N 1420 -310 1420 -220 {lab=#net3}
N 1420 -400 1420 -310 {lab=#net3}
N 1380 -400 1420 -400 {lab=#net3}
N 1420 -310 1470 -310 {lab=#net3}
N 1060 -220 1100 -220 {lab=#net4}
N 1060 -310 1060 -220 {lab=#net4}
N 1020 -310 1060 -310 {lab=#net4}
N 1060 -400 1060 -310 {lab=#net4}
N 1060 -400 1100 -400 {lab=#net4}
N 920 -310 960 -310 {lab=#net5}
N 920 -650 920 -310 {lab=#net5}
N 920 -650 960 -650 {lab=#net5}
N 1530 -310 1560 -310 {lab=Vinn}
N 1560 -650 1560 -310 {lab=Vinn}
N 1520 -650 1560 -650 {lab=Vinn}
N 460 -760 460 -680 {lab=#net6}
N 400 -760 460 -760 {lab=#net6}
N 260 -620 400 -620 {lab=Vxp}
N 300 -760 340 -760 {lab=Vxp}
N 300 -760 300 -620 {lab=Vxp}
N 460 -300 460 -220 {lab=#net7}
N 400 -220 460 -220 {lab=#net7}
N 300 -220 340 -220 {lab=Vxn}
N 300 -360 300 -220 {lab=Vxn}
N 300 -360 400 -360 {lab=Vxn}
N 260 -360 300 -360 {lab=Vxn}
N 370 -840 370 -800 {lab=P1}
N 370 -180 370 -140 {lab=P1}
N 600 -620 680 -620 {lab=Voutp}
N 600 -360 680 -360 {lab=Vuotn}
N 500 -560 500 -420 {lab=#net8}
N 500 -760 500 -680 {lab=#net9}
N 500 -300 500 -220 {lab=#net10}
N 120 -620 200 -620 {lab=Vinp}
N 120 -360 200 -360 {lab=Vinn}
N 840 -480 920 -480 {lab=#net5}
N 1560 -480 1640 -480 {lab=Vinn}
N 1130 -820 1130 -780 {lab=P2}
N 1350 -820 1350 -780 {lab=P2}
N 1130 -180 1130 -140 {lab=P2}
N 1350 -180 1350 -140 {lab=P2}
N 370 -760 370 -680 {lab=VSS}
N 370 -300 370 -220 {lab=VSS}
N 1240 -480 1240 -430 {lab=Vcm}
C {title.sym} 290 -70 0 0 {name=l1 author="Onchip"}
C {designs/DS_modulator/ring_amp/xschem/ring_amp.sym} 480 -620 0 0 {name=x1}
C {designs/DS_modulator/ring_amp/xschem/ring_amp.sym} 480 -360 2 1 {name=x2}
C {symbols/nfet_03v3.sym} 1130 -420 1 0 {name=M1
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
C {symbols/nfet_03v3.sym} 1130 -200 3 0 {name=M2
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
C {symbols/nfet_03v3.sym} 1130 -760 1 0 {name=M3
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
C {symbols/nfet_03v3.sym} 1130 -540 3 0 {name=M4
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
C {symbols/nfet_03v3.sym} 1350 -420 3 1 {name=M5
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
C {symbols/nfet_03v3.sym} 1350 -200 1 1 {name=M6
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
C {symbols/nfet_03v3.sym} 1350 -760 3 1 {name=M7
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
C {symbols/nfet_03v3.sym} 1350 -540 1 1 {name=M8
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
C {symbols/cap_mim_1f0fF.sym} 990 -650 3 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 990 -310 3 0 {name=C2
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 1500 -310 3 0 {name=C3
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 1490 -650 3 0 {name=C4
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/nfet_03v3.sym} 370 -780 1 0 {name=M9
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
C {symbols/nfet_03v3.sym} 370 -200 1 1 {name=M10
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
C {symbols/cap_mim_1f0fF.sym} 230 -360 3 0 {name=C5
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 230 -620 3 0 {name=C6
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {iopin.sym} 140 -830 2 0 {name=p1 lab=P1
}
C {iopin.sym} 140 -790 2 0 {name=p2 lab=P2}
C {iopin.sym} 140 -750 2 0 {name=p3 lab=VDD}
C {iopin.sym} 140 -710 2 0 {name=p4 lab=VSS}
C {iopin.sym} 1240 -430 1 0 {name=p5 lab=Vcm
}
C {lab_wire.sym} 1130 -470 1 0 {name=p6 sig_type=std_logic lab=P1
}
C {lab_wire.sym} 1350 -470 1 0 {name=p7 sig_type=std_logic lab=P1
}
C {lab_wire.sym} 1130 -800 1 0 {name=p8 sig_type=std_logic lab=P2

}
C {lab_wire.sym} 1350 -800 1 0 {name=p9 sig_type=std_logic lab=P2

}
C {lab_wire.sym} 1130 -140 1 0 {name=p10 sig_type=std_logic lab=P2

}
C {lab_wire.sym} 1350 -140 1 0 {name=p11 sig_type=std_logic lab=P2

}
C {lab_wire.sym} 1130 -300 1 0 {name=p12 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 1350 -300 1 0 {name=p13 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 1130 -630 1 0 {name=p14 sig_type=std_logic lab=VSS

}
C {lab_wire.sym} 1350 -630 1 0 {name=p15 sig_type=std_logic lab=VSS

}
C {iopin.sym} 120 -620 2 0 {name=p16 lab=Vinp}
C {iopin.sym} 120 -360 2 0 {name=p17 lab=Vinn}
C {iopin.sym} 680 -620 2 1 {name=p18 lab=Voutp}
C {iopin.sym} 680 -360 2 1 {name=p19 lab=Vuotn
}
C {lab_wire.sym} 860 -480 0 0 {name=p20 sig_type=std_logic lab=Vinp}
C {lab_wire.sym} 1640 -480 0 0 {name=p21 sig_type=std_logic lab=Vinn}
C {lab_wire.sym} 1260 -220 0 0 {name=p22 sig_type=std_logic lab=Voutp}
C {lab_wire.sym} 1260 -740 0 0 {name=p23 sig_type=std_logic lab=Voutn}
C {lab_wire.sym} 330 -620 0 0 {name=p24 sig_type=std_logic lab=Vxp
}
C {lab_wire.sym} 370 -840 3 0 {name=p25 sig_type=std_logic lab=P1
}
C {lab_wire.sym} 370 -710 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 330 -360 2 1 {name=p27 sig_type=std_logic lab=Vxn
}
C {lab_wire.sym} 370 -140 3 1 {name=p28 sig_type=std_logic lab=P1
}
C {lab_wire.sym} 370 -270 3 1 {name=p29 sig_type=std_logic lab=VSS}
