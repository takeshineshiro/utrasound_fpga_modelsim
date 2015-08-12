

 module   transmit_test_model  (
   //input
       input                 clk_100M ,
      
       input                 reset_n  ,
  //output
      output      [7:0]      Line_Num ,

      output      [1:0]      Focus_Num,
       
      output                 Pr_Gate  ,
     
      output                 RX_Gate  ,
      
      output                 End_Gate ,
      
      output                 Envelop   
   
   );


   

 //wire
     
   
      
      wire                        Focus_Num_Pre    ;


 //reg


      reg [31:0]                 Line_Period       ;

      reg [31:0]                 Envelop_Counter   ;

      reg [31:0]                 Pulse_Counter     ;

      reg                        Pr_Gate_reg       ;

      reg                        RX_Gate_reg       ;

      reg                        End_Gate_reg      ;

      reg   [1:0]                Focus_Num_reg     ;

     
      reg                        Envelop_reg       ;



        
       
        always @(posedge End_Gate_reg) 
        begin  //next foucus

		Focus_Num_reg <= Focus_Num_Pre;

	end




	
	always @(posedge Pr_Gate_reg) 
         begin
		case(Focus_Num_reg[1:0]) 
			2'b00:           //
				Line_Period<=32'd12000;  //120us
			2'b01:
				Line_Period<=32'd12000;  //120us
			2'b10:
				Line_Period<=32'd29000; //290us
			2'b11:
				Line_Period<=32'd29000; //290us
		endcase
	end





         always @(posedge  clk_100M or posedge Envelop) 
           begin
		if(Envelop) 
                   begin
			  Pulse_Counter <= 32'd0;
		   end
		else begin
			if(Pulse_Counter < 32'd3000)  //30us
			begin
				Pulse_Counter <= Pulse_Counter + 1'b1;
				Pr_Gate_reg   <= 1'b1;
				RX_Gate_reg   <= 1'b0;
				End_Gate_reg  <= 1'b0;
			end
			else if(Pulse_Counter < 32'd3250)  //2.5us?
			begin
				Pulse_Counter <= Pulse_Counter + 1'b1;
				Pr_Gate_reg   <= 1'b0;
				RX_Gate_reg   <= 1'b1;
				End_Gate_reg  <= 1'b0;
			end
			else if(Pulse_Counter < Line_Period)  
			begin
				Pulse_Counter <= Pulse_Counter + 1'b1;
				Pr_Gate_reg   <= 1'b0;
				RX_Gate_reg   <= 1'b0;
				End_Gate_reg  <= 1'b0;
			end
			else if(Pulse_Counter < (Line_Period + 8'd80))  //0.8us
			begin
				Pulse_Counter <= Pulse_Counter + 1'b1;
				Pr_Gate_reg   <= 1'b0;
				RX_Gate_reg   <= 1'b0;
				End_Gate_reg  <= 1'b1;
			end		
			else begin
				
				if(Focus_Num_Pre >2'b00) 
					Pulse_Counter <= 32'd0;
				else 
					Pulse_Counter <= 32'd65536;
					
				Pr_Gate_reg     <= 1'b0;
				RX_Gate_reg     <= 1'b0;
				End_Gate_reg    <= 1'b0;
			end	
		end
	end 

  
                
         

            always@ (posedge  clk_100M   or  negedge reset_n ) 
       
              begin
                       if  (!reset_n)     
                               
                             begin
                                     Envelop_reg      <=  0 ;
                                     Envelop_Counter  <=  0 ; 
                             end

                        else  if (Envelop_Counter < (Line_Period + 8'd90)) 
                             begin
                                     Envelop_Counter  <= Envelop_Counter + 1'b1;
                                     Envelop_reg      <=  1'b0 ;    
                             end
                        else if (Envelop_Counter >= (Line_Period + 8'd90)&&Envelop_Counter <(Line_Period + 8'd95))  
                             begin
                                     Envelop_Counter  <= Envelop_Counter + 1'b1;
                                     Envelop_reg      <=  1'b1 ;    
                             end   
                        else
                            begin
                                     Envelop_reg      <=  0 ;
                                     Envelop_Counter  <=  0 ; 
                             end
                 


              end




       
             cc3200_test_model      cc3200_test_model (
              //input
                     .clk_in         (clk_100M)   ,
                     .reset_n        (reset_n)    ,
                     .RX_Gate        (RX_Gate_reg),
                     .Envelop        (Envelop_reg),
                     
             //output
                     .line_num       (Line_Num) ,
                     .focus_num      (Focus_Num_Pre)
                     
                  


                );
 


             
    assign                      Pr_Gate   =     Pr_Gate_reg  ;

   assign                      RX_Gate   =     RX_Gate_reg  ;

   assign                      End_Gate  =     End_Gate_reg ;
  
   assign                      Focus_Num =     Focus_Num_reg; 

  
   assign                      Envelop    =    Envelop_reg  ;






 endmodule



  
