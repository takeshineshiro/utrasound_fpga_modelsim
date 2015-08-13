

    module  transmit_test_entity   (
     //input
             input        clk_in  ,

             input        reset_n ,
   //output
              
         
	output            Sample_Gate,      //
	output    [15:0]  P,
	output    [15:0]  N,
	
	output            HV_SW_CLR,
	output            HV_SW_LE,
	output            HV_SW_CLK,
	output            HV_SW_DOUT,
	
	output     [3:0]  AX,
	output     [2:0]  AY,
	output            MT_CS,
	output            MT_Strobe,
	output            MT_Data   

      ) ;



//wire


  wire        [7:0]      Line_Num  ;

  wire        [1:0]      Focus_Num ;

  wire                   Pr_Gate  ;

  wire                   RX_Gate  ;

  wire                   End_Gate ;

  wire                   Envelop  ;

  

//reg





//combination



//seq




 transmit_test_model    transmit_test_model  (
  //input
              .clk_100M  (clk_in) ,
      
              .reset_n   (reset_n)  ,
  //output
              .Line_Num  (Line_Num) ,

              .Focus_Num (Focus_Num),
       
              .Pr_Gate   (Pr_Gate)  ,
     
              .RX_Gate   (RX_Gate) ,
      
              .End_Gate  (End_Gate),
      
              .Envelop   (Envelop) 

  );





    Transmit     Transmit_module  (
    
   //input
           .Transmit_CLK  (clk_in) ,         //100MHz
	   .Line_Num      (Line_Num) ,         //Line Num,256 Lines totally,0~255
	   .Focus_Num     (Focus_Num),        //Focus_num ,3 totally
	   .Pr_Gate       (Pr_Gate)  ,        //prepare for everythings
	   .RX_Gate       (RX_Gate) ,         // Start Transmit
  //output 
           .Sample_Gate   (Sample_Gate),      //
	   .P             (P),
	   .N             (N),
	   .HV_SW_CLR     (HV_SW_CLR),
	   .HV_SW_LE      (HV_SW_LE),
	   .HV_SW_CLK     (HV_SW_CLK),
	   .HV_SW_DOUT    (HV_SW_DOUT),
	
	   .AX            (AX),
	   .AY            (AY),
	   .MT_CS         (MT_CS),
	   .MT_Strobe     (MT_Strobe),
	   .MT_Data       (MT_Data)
    );









   endmodule 
