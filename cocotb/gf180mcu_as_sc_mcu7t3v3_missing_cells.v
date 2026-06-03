module gf180mcu_as_sc_mcu7t3v3__aoi211_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~(C | D | (A & B));

endmodule

module gf180mcu_as_sc_mcu7t3v3__aoi211_4 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~(C | D | (A & B));

endmodule

module gf180mcu_as_sc_mcu7t3v3__ao211_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = C | D | (A & B);

endmodule

module gf180mcu_as_sc_mcu7t3v3__ao211_4 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = C | D | (A & B);

endmodule

module gf180mcu_as_sc_mcu7t3v3__oai211_2 (
	input VPW,
	input VNW,
	input VDD,
	input VSS,

	input A,
	input B,
	input C,
	input D,
	output Y
);

assign Y = ~(C & D & (A | B));

endmodule
