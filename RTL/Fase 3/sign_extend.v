module sign_extend(
    input  [15:0] inmediato,
    output [31:0] extendido
);

assign extendido = {{16{inmediato[15]}}, inmediato};

endmodule
