v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 830 -740 830 -700 {lab=P1}
N 890 -740 890 -700 {lab=VDD}
N 830 -540 830 -500 {lab=P2}
N 890 -540 890 -500 {lab=VSS}
N 170 -620 750 -620 {lab=Vcm}
N 350 -700 350 -660 {lab=Vcm}
N 570 -700 570 -660 {lab=Vcm}
N 350 -840 350 -760 {lab=Vsp}
N 570 -800 570 -760 {lab=#net1}
N 490 -840 570 -840 {lab=#net1}
N 350 -840 430 -840 {lab=Vsp}
N 270 -730 310 -730 {lab=P2}
N 270 -840 350 -840 {lab=Vsp}
N 170 -840 210 -840 {lab=Vinp}
N 240 -840 240 -770 {lab=VSS}
N 240 -920 240 -880 {lab=P1}
N 610 -730 650 -730 {lab=P1}
N 780 -840 780 -770 {lab=VSS}
N 570 -840 650 -840 {lab=#net1}
N 650 -840 690 -840 {lab=#net1}
N 690 -760 690 -650 {lab=#net1}
N 690 -650 750 -650 {lab=#net1}
N 350 -660 350 -620 {lab=Vcm}
N 570 -660 570 -620 {lab=Vcm}
N 570 -840 570 -800 {lab=#net1}
N 690 -840 690 -760 {lab=#net1}
N 690 -840 730 -840 {lab=#net1}
N 810 -840 890 -840 {lab=Vtp}
N 850 -1010 850 -840 {lab=Vtp}
N 850 -1010 880 -1010 {lab=Vtp}
N 780 -920 780 -880 {lab=P2}
N 920 -1090 920 -1050 {lab=xxx}
N 1010 -650 1050 -650 {lab=Voutp}
N 1050 -840 1050 -650 {lab=Voutp}
N 970 -840 1050 -840 {lab=Voutp}
N 950 -840 970 -840 {lab=Voutp}
N 880 -1010 890 -1010 {lab=Vtp}
N 950 -1010 990 -1010 {lab=Voutp}
N 990 -1010 990 -840 {lab=Voutp}
N 730 -840 750 -840 {lab=#net1}
N 350 -730 570 -730 {lab=VSS}
N 350 -580 350 -540 {lab=Vcm}
N 570 -580 570 -540 {lab=Vcm}
N 350 -480 350 -400 {lab=Vsn}
N 570 -480 570 -440 {lab=#net2}
N 490 -400 570 -400 {lab=#net2}
N 350 -400 430 -400 {lab=Vsn}
N 270 -510 310 -510 {lab=P2}
N 270 -400 350 -400 {lab=Vsn}
N 170 -400 210 -400 {lab=Vinn}
N 240 -470 240 -400 {lab=VSS}
N 240 -360 240 -320 {lab=P1}
N 610 -510 650 -510 {lab=P1}
N 780 -470 780 -400 {lab=VSS}
N 570 -400 650 -400 {lab=#net2}
N 650 -400 690 -400 {lab=#net2}
N 690 -590 690 -480 {lab=#net2}
N 690 -590 750 -590 {lab=#net2}
N 350 -620 350 -580 {lab=Vcm}
N 570 -620 570 -580 {lab=Vcm}
N 570 -440 570 -400 {lab=#net2}
N 690 -480 690 -400 {lab=#net2}
N 690 -400 730 -400 {lab=#net2}
N 810 -400 890 -400 {lab=Vtn}
N 850 -400 850 -230 {lab=Vtn}
N 850 -230 880 -230 {lab=Vtn}
N 780 -360 780 -320 {lab=P2}
N 920 -190 920 -150 {lab=RST}
N 1010 -590 1050 -590 {lab=Voutn}
N 1050 -590 1050 -400 {lab=Voutn}
N 970 -400 1050 -400 {lab=Voutn}
N 950 -400 970 -400 {lab=Voutn}
N 880 -230 890 -230 {lab=Vtn}
N 950 -230 990 -230 {lab=Voutn}
N 990 -400 990 -230 {lab=Voutn}
N 730 -400 750 -400 {lab=#net2}
N 350 -510 570 -510 {lab=VSS}
N 1050 -650 1080 -650 {lab=Voutp}
N 1050 -590 1080 -590 {lab=Voutn}
N 920 -1010 920 -940 {lab=VSS}
N 920 -300 920 -230 {lab=VSS}
C {designs/DS_modulator/ring_amp_diff/xschem/ring_amp_diff.sym} 860 -620 0 0 {name=x1}
C {title.sym} 200 -70 0 0 {name=l1 author="Onchip"}
C {symbols/nfet_03v3.sym} 920 -1030 1 0 {name=M1
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
C {symbols/nfet_03v3.sym} 780 -860 1 0 {name=M2
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
C {symbols/nfet_03v3.sym} 240 -860 1 0 {name=M3
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
C {symbols/nfet_03v3.sym} 330 -730 0 0 {name=M4
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
C {symbols/nfet_03v3.sym} 590 -730 0 1 {name=M5
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
C {symbols/cap_mim_1f0fF.sym} 460 -840 3 0 {name=C1
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 920 -840 3 0 {name=C2
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {lab_wire.sym} 480 -730 0 0 {name=p1 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 240 -920 3 0 {name=p2 sig_type=std_logic lab=P1}
C {lab_wire.sym} 640 -730 0 0 {name=p3 sig_type=std_logic lab=P1}
C {lab_wire.sym} 280 -730 0 1 {name=p4 sig_type=std_logic lab=P2
}
C {lab_wire.sym} 780 -920 3 0 {name=p5 sig_type=std_logic lab=P2
}
C {symbols/nfet_03v3.sym} 920 -210 1 1 {name=M6
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
C {symbols/nfet_03v3.sym} 780 -380 1 1 {name=M7
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
C {symbols/nfet_03v3.sym} 240 -380 1 1 {name=M8
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
C {symbols/nfet_03v3.sym} 330 -510 2 1 {name=M9
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
C {symbols/nfet_03v3.sym} 590 -510 2 0 {name=M10
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
C {symbols/cap_mim_1f0fF.sym} 460 -400 3 1 {name=C3
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {symbols/cap_mim_1f0fF.sym} 920 -400 3 1 {name=C4
W=1e-6
L=1e-6
model=cap_mim_1f0fF
spiceprefix=X
m=1}
C {lab_wire.sym} 480 -510 2 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 240 -320 3 1 {name=p8 sig_type=std_logic lab=P1}
C {lab_wire.sym} 640 -510 2 1 {name=p9 sig_type=std_logic lab=P1}
C {lab_wire.sym} 280 -510 2 0 {name=p10 sig_type=std_logic lab=P2
}
C {lab_wire.sym} 780 -320 3 1 {name=p11 sig_type=std_logic lab=P2
}
C {lab_wire.sym} 920 -150 3 1 {name=p12 sig_type=std_logic lab=RST
}
C {lab_wire.sym} 830 -740 3 0 {name=p13 sig_type=std_logic lab=P1
}
C {lab_wire.sym} 890 -740 3 0 {name=p14 sig_type=std_logic lab=VDD
}
C {lab_wire.sym} 830 -500 3 1 {name=p15 sig_type=std_logic lab=P2


}
C {lab_wire.sym} 890 -500 3 1 {name=p16 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 360 -840 0 0 {name=p17 sig_type=std_logic lab=Vsp}
C {lab_wire.sym} 850 -840 0 0 {name=p18 sig_type=std_logic lab=Vtp}
C {lab_wire.sym} 360 -400 2 1 {name=p19 sig_type=std_logic lab=Vsn}
C {lab_wire.sym} 850 -400 2 1 {name=p20 sig_type=std_logic lab=Vtn}
C {iopin.sym} 170 -840 0 1 {name=p21 lab=Vinp}
C {iopin.sym} 170 -620 0 1 {name=p22 lab=Vcm}
C {iopin.sym} 170 -400 0 1 {name=p23 lab=Vinn}
C {iopin.sym} 1080 -650 0 0 {name=p24 lab=Voutp}
C {iopin.sym} 1080 -590 0 0 {name=p25 lab=Voutn}
C {iopin.sym} 920 -1090 3 0 {name=p26 lab=RST}
C {iopin.sym} 170 -800 0 1 {name=p6 lab=VDD}
C {iopin.sym} 170 -760 0 1 {name=p27 lab=P1}
C {iopin.sym} 170 -440 0 1 {name=p28 lab=VSS}
C {iopin.sym} 170 -480 0 1 {name=p29 lab=P2}
C {lab_wire.sym} 780 -440 3 1 {name=p30 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 240 -440 3 1 {name=p31 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 240 -800 3 0 {name=p32 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 780 -800 3 0 {name=p33 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 920 -970 3 0 {name=p34 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 920 -270 3 1 {name=p35 sig_type=std_logic lab=VSS
}
