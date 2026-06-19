v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 890 -520 890 -480 {lab=VDD}
N 640 -520 640 -480 {lab=VDD}
N 320 -520 320 -480 {lab=VDD}
N 320 -270 320 -180 {lab=Vout1}
N 890 -140 890 -100 {lab=VSS}
N 640 -140 640 -100 {lab=VSS}
N 320 -140 320 -100 {lab=VSS}
N 240 -170 280 -170 {lab=Vin}
N 240 -370 240 -170 {lab=Vin}
N 240 -450 280 -450 {lab=Vin}
N 200 -310 240 -310 {lab=Vin}
N 400 -310 400 -260 {lab=Vout1}
N 320 -450 340 -450 {lab=VDD}
N 340 -500 340 -450 {lab=VDD}
N 320 -500 340 -500 {lab=VDD}
N 320 -170 340 -170 {lab=VSS}
N 340 -170 340 -120 {lab=VSS}
N 320 -120 340 -120 {lab=VSS}
N 320 -310 440 -310 {lab=Vout1}
N 440 -410 440 -310 {lab=Vout1}
N 440 -450 600 -450 {lab=Vout1}
N 440 -270 440 -170 {lab=Vout1}
N 440 -170 600 -170 {lab=Vout1}
N 640 -220 640 -200 {lab=#net1}
N 530 -280 530 -260 {lab=#net1}
N 530 -260 760 -260 {lab=#net1}
N 760 -280 760 -260 {lab=#net1}
N 760 -360 760 -340 {lab=#net2}
N 530 -360 760 -360 {lab=#net2}
N 530 -360 530 -340 {lab=#net2}
N 640 -420 640 -400 {lab=#net2}
N 470 -310 490 -310 {lab=#net2}
N 470 -360 470 -310 {lab=#net2}
N 470 -360 530 -360 {lab=#net2}
N 800 -310 820 -310 {lab=#net1}
N 820 -310 820 -260 {lab=#net1}
N 760 -260 820 -260 {lab=#net1}
N 640 -170 660 -170 {lab=VSS}
N 660 -170 660 -120 {lab=VSS}
N 640 -120 660 -120 {lab=VSS}
N 640 -450 660 -450 {lab=VDD}
N 660 -500 660 -450 {lab=VDD}
N 640 -500 660 -500 {lab=VDD}
N 240 -450 240 -370 {lab=Vin}
N 320 -420 320 -340 {lab=Vout1}
N 320 -340 320 -270 {lab=Vout1}
N 440 -310 440 -270 {lab=Vout1}
N 640 -260 640 -220 {lab=#net1}
N 640 -400 640 -360 {lab=#net2}
N 440 -450 440 -410 {lab=Vout1}
N 640 -400 820 -400 {lab=#net2}
N 820 -220 820 -170 {lab=#net1}
N 640 -220 820 -220 {lab=#net1}
N 890 -170 910 -170 {lab=VSS}
N 910 -170 910 -120 {lab=VSS}
N 890 -120 910 -120 {lab=VSS}
N 890 -450 910 -450 {lab=VDD}
N 910 -500 910 -450 {lab=VDD}
N 890 -500 910 -500 {lab=VDD}
N 820 -170 850 -170 {lab=#net1}
N 820 -450 820 -400 {lab=#net2}
N 820 -450 850 -450 {lab=#net2}
N 890 -420 890 -200 {lab=Vout}
N 890 -310 940 -310 {lab=Vout}
N 530 -310 560 -310 {lab=VSS}
N 740 -310 760 -310 {lab=#net3}
N 240 -520 890 -520 {lab=VDD}
N 240 -100 880 -100 {lab=VSS}
N 880 -100 890 -100 {lab=VSS}
N 560 -310 620 -310 {lab=VSS}
N 670 -310 740 -310 {lab=#net3}
C {title.sym} 180 -50 0 0 {name=l1 author="Onchip"

}
C {symbols/nfet_03v3.sym} 300 -170 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 620 -170 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 870 -170 0 0 {name=M3
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
C {symbols/nfet_03v3.sym} 510 -310 0 0 {name=M4
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
C {symbols/pfet_03v3.sym} 300 -450 0 0 {name=M5
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
C {symbols/pfet_03v3.sym} 620 -450 0 0 {name=M6
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
C {symbols/pfet_03v3.sym} 780 -310 0 1 {name=M7
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
C {symbols/pfet_03v3.sym} 870 -450 0 0 {name=M8
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
C {iopin.sym} 240 -520 2 0 {name=p1 lab=VDD
}
C {iopin.sym} 240 -100 2 0 {name=p2 lab=VSS}
C {iopin.sym} 200 -310 2 0 {name=p3 lab=Vin
}
C {iopin.sym} 940 -310 2 1 {name=p4 lab=Vout
}
C {iopin.sym} 400 -280 3 1 {name=p5 lab=Vout1
}
C {lab_wire.sym} 600 -310 0 1 {name=p6 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 690 -310 0 0 {name=p7 sig_type=std_logic lab=VDD
}
