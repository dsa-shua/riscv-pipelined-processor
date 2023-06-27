`timescale 1ns / 1ps
module REGFILE_BENCH(

    );
    
    reg clk;
    reg [7:0] REGA,REGB; // read register 1, 2
    reg[7:0] REG_IN; // write register
    reg[31:0] DATA_IN;
    wire[31:0] REG_OUT_1, REG_OUT_2; // read data 1,2
    reg REG_CTL;
    initial begin
//        REG_OUT_1 = 0;
//        REG_OUT_2 = 0;
        clk = 0;
        forever begin
            #5;
            clk = ~clk;
        end
    end
    
    
    initial begin
        REG_CTL <= 1;
        REG_IN <=  1;
        DATA_IN <= 1;
        #10;
        REG_CTL <= 1;
        REG_IN <=  2;
        DATA_IN <= 2;
        #10;
        REG_CTL <= 1;
        REG_IN <=  3;
        DATA_IN <= 3;
        #10;
        REG_CTL <= 1;
        REG_IN <=  4;
        DATA_IN <= 4;
        #10;
        REG_CTL <= 1;
        REG_IN <=  5;
        DATA_IN <= 5;
        #10;
        REG_CTL <= 1;
        REG_IN <=  6;
        DATA_IN <= 6;
        #10;
        REG_CTL <= 1;
        REG_IN <=  7;
        DATA_IN <= 7;
        #10;
        REG_CTL <= 1;
        REG_IN <=  8;
        DATA_IN <= 8;
        #10;
        REG_CTL <= 1;
        REG_IN <=  9;
        DATA_IN <= 9;
        #10;
        REG_CTL <= 1;
        REG_IN <=  10;
        DATA_IN <= 10;
        #10;
        REG_CTL <= 1;
        REG_IN <=  11;
        DATA_IN <= 11;
        #10;
        REG_CTL <= 1;
        REG_IN <=  12;
        DATA_IN <= 12;
        #10;
        REG_CTL <= 1;
        REG_IN <=  13;
        DATA_IN <= 13;
        #10;
        REG_CTL <= 1;
        REG_IN <=  14;
        DATA_IN <= 14;
        #10;
        REG_CTL <= 1;
        REG_IN <=  15;
        DATA_IN <= 15;
        #10;
        REG_CTL <= 1;
        REG_IN <=  16;
        DATA_IN <= 16;
        #10;
        REG_CTL <= 1;
        REG_IN <=  17;
        DATA_IN <= 17;
        #10;
        REG_CTL <= 1;
        REG_IN <=  18;
        DATA_IN <= 18;
        #10;
        REG_CTL <= 1;
        REG_IN <=  19;
        DATA_IN <= 19;
        #10;
        REG_CTL <= 1;
        REG_IN <=  20;
        DATA_IN <= 20;
        #10;
        REG_CTL <= 1;
        REG_IN <=  21;
        DATA_IN <= 21;
        #10;
        REG_CTL <= 1;
        REG_IN <=  22;
        DATA_IN <= 22;
        #10;
        REG_CTL <= 1;
        REG_IN <=  23;
        DATA_IN <= 23;
        #10;
        REG_CTL <= 1;
        REG_IN <=  24;
        DATA_IN <= 24;
        #10;
        REG_CTL <= 1;
        REG_IN <=  25;
        DATA_IN <= 25;
        #10;
        REG_CTL <= 1;
        REG_IN <=  26;
        DATA_IN <= 26;
        #10;
        REG_CTL <= 1;
        REG_IN <=  27;
        DATA_IN <= 27;
        #10;
        REG_CTL <= 1;
        REG_IN <=  28;
        DATA_IN <= 28;
        #10;
        REG_CTL <= 1;
        REG_IN <=  29;
        DATA_IN <= 29;
        #10;
        REG_CTL <= 1;
        REG_IN <=  30;
        DATA_IN <= 30;
        #10;
        REG_CTL <= 1;
        REG_IN <=  31;
        DATA_IN <= 31;
        #10;
        
        
        // READING PROC
        REG_CTL <= 0;
        REGA <= 0;
        REGB <= 0;
        #10;
        REG_CTL <= 0;
        REGA <= 1;
        REGB <= 1;
        #10;
        REG_CTL <= 0;
        REGA <= 2;
        REGB <= 2;
        #10;
        REG_CTL <= 0;
        REGA <= 3;
        REGB <= 3;
        #10;
        REG_CTL <= 0;
        REGA <= 4;
        REGB <= 4;
        #10;
        REG_CTL <= 0;
        REGA <= 5;
        REGB <= 5;
        #10;
        REG_CTL <= 0;
        REGA <= 6;
        REGB <= 6;
        #10;
        REG_CTL <= 0;
        REGA <= 7;
        REGB <= 7;
        #10;
        REG_CTL <= 0;
        REGA <= 8;
        REGB <= 8;
        #10;
        REG_CTL <= 0;
        REGA <= 9;
        REGB <= 9;
        #10;
        REG_CTL <= 0;
        REGA <= 10;
        REGB <= 10;
        #10;
        REG_CTL <= 0;
        REGA <= 11;
        REGB <= 11;
        #10;
        REG_CTL <= 0;
        REGA <= 12;
        REGB <= 12;
        #10;
        REG_CTL <= 0;
        REGA <= 13;
        REGB <= 13;
        #10;
        REG_CTL <= 0;
        REGA <= 14;
        REGB <= 14;
        #10;
        REG_CTL <= 0;
        REGA <= 15;
        REGB <= 15;
        #10;
        REG_CTL <= 0;
        REGA <= 16;
        REGB <= 16;
        #10;
        REG_CTL <= 0;
        REGA <= 17;
        REGB <= 17;
        #10;
        REG_CTL <= 0;
        REGA <= 18;
        REGB <= 18;
        #10;
        REG_CTL <= 0;
        REGA <= 19;
        REGB <= 19;
        #10;
        REG_CTL <= 0;
        REGA <= 20;
        REGB <= 20;
        #10;
        REG_CTL <= 0;
        REGA <= 21;
        REGB <= 21;
        #10;
        REG_CTL <= 0;
        REGA <= 22;
        REGB <= 22;
        #10;
        REG_CTL <= 0;
        REGA <= 23;
        REGB <= 23;
        #10;
        REG_CTL <= 0;
        REGA <= 24;
        REGB <= 24;
        #10;
        REG_CTL <= 0;
        REGA <= 25;
        REGB <= 25;
        #10;
        REG_CTL <= 0;
        REGA <= 26;
        REGB <= 26;
        #10;
        REG_CTL <= 0;
        REGA <= 27;
        REGB <= 27;
        #10;
        REG_CTL <= 0;
        REGA <= 28;
        REGB <= 28;
        #10;
        REG_CTL <= 0;
        REGA <= 29;
        REGB <= 29;
        #10;
        REG_CTL <= 0;
        REGA <= 30;
        REGB <= 30;
        #10;
        REG_CTL <= 0;
        REGA <= 31;
        REGB <= 31;
        #10;
        
        
        
    
    end
    
    REGISTER_FILE REGFILE(
           .CLK (clk),
           .REG1(REGA),
           .REG2(REGB),
           .WRITE_REG(REG_IN),
           .WRITE_DATA(DATA_IN),
           .READ_DATA_1(REG_OUT_1),
           .READ_DATA_2(REG_OUT_2),
           .WRITE(REG_CTL)
    );
    
    
endmodule
