

   module     transmit_test_entity_tb  ;

    //input
      
           reg          clk_in  ;
  
           reg          reset_n ;


   //output
          
         wire           Sample_Gate ;

         wire   [15:0]  P ;

         wire   [15:0]  N ;

	 wire           HV_SW_CLR ;

         wire           HV_SW_LE  ;

         wire           HV_SW_CLK ;
 
         wire           HV_SW_DOUT;
 
	 wire  [3:0]    AX ;

         wire  [2:0]    AY ;

	 wire           MT_CS ;
    
         wire           MT_Strobe;
       
         wire           MT_Data ;
	
	
     

    transmit_test_entity   transmit_test_entity (
       //input
                  .clk_in        (clk_in) ,

                  .reset_n       (reset_n) ,
   //output
                  .Sample_Gate   (Sample_Gate),      //

	          .P             (P),
	   
                  .N             (N ),
	
	          .HV_SW_CLR     (HV_SW_CLR),

	          .HV_SW_LE      (HV_SW_LE),

	          .HV_SW_CLK     (HV_SW_CLK),

                  .HV_SW_DOUT    (HV_SW_DOUT),
	
	          .AX            (AX ),

	          .AY            (AY),

	          .MT_CS         (MT_CS) ,

	          .MT_Strobe     (MT_Strobe),

	          .MT_Data       (MT_Data)  

    );




     initial
             clk_in   = 1'b0;
   always
              clk_in   = #5 ~clk_in;




   initial 
	begin
          reset_n   = 1'b0;
        #400;
          reset_n   = 1'b1;
   end
    

endmodule 
