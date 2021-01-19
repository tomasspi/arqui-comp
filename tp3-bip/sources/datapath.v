`timescale 1ns / 1ps

module datapath
(
    input  wire        i_clk,
    input  wire        i_reset,
    input  wire        i_valid,
    input  wire [1:0]  i_sel_a,
    input  wire        i_sel_b,
    input  wire        i_write_acc,
    input  wire        i_operacion,
    input  wire [10:0] i_operando,
    input  wire [15:0] i_memory_data,
    
    output wire [15:0] o_memory_data,
    output wire [10:0] o_data_addr
);

	//multiplexores
	localparam [1:0] MEMORIA   = 2'b00;//ver si no genera 
	localparam [1:0] OPERANDO  = 2'b01;//problemas a la 
	localparam [1:0] RESULTADO = 2'b10;//hora de sintesis
	
	//variables
	reg [15:0] mux_a_out;
	reg [15:0] mux_b_out;
	reg [15:0] alu_out;
	reg [15:0] signal_ext_out;
	reg [15:0] acc;
	
	// Estension de signo
	// repite 5 veces el MSB de i_operando (signo)
	always@(*)begin:sig_ext
	   signal_ext_out = 16'b0;
	   
	   if(i_valid)
	       signal_ext_out = {{5{i_operando[10]}},i_operando};
	end
	
	// Multiplexor A
    always @(*)begin:mux_a
        mux_a_out = 16'b0;
        
        if(i_valid)
        begin
            case(i_sel_a)
                MEMORIA:   mux_a_out = i_memory_data;
                OPERANDO:  mux_a_out = signal_ext_out;
                RESULTADO: mux_a_out = alu_out;
                default:   mux_a_out = 15'b0; 
            endcase
        end
    end

    // Multiplexor B
    always @(*)begin:mux_b
        mux_b_out = 16'b0;
        
        if(i_valid)
        begin
            case(i_sel_b)
                1'b0:   mux_b_out = i_memory_data;
                1'b1:   mux_b_out = signal_ext_out;
            endcase
        end
    end

    // Acumulador
    always @(negedge i_clk)begin:accu
        if(i_reset)
            acc <= 16'b0;
        else if(i_valid) 
        begin
            if(i_write_acc)
                acc <= mux_a_out;
            else
                acc <= acc;
        end
    end

    // Operacion
    always @(*)begin:operation
        alu_out = 16'b0;
        
        if(i_valid)
        begin
            case(i_operacion)
                1'b0:   alu_out = acc + mux_b_out;
                1'b1:   alu_out = acc - mux_b_out;
            endcase
        end
    end

    assign o_data_addr   = i_operando;
    assign o_memory_data = acc; 
    
endmodule
