

module   cc3200_test_model   (
  //input
     
    input                               clk_in ,
    
    input                               reset_n,
 
    input                               RX_Gate, 
  
    input                               Envelop,

 //output
  
   output   reg     [7:0]               line_num,

   output          [1:0]               focus_num
     
         
   );



 //wire


    



 //reg



    reg        [5:0]                 clk_cnt    ;


    reg                             clk_10M     ;


    reg                             envelop_reg ;

   
    reg      [1:0]                  Focus_Num_Pre;                 



     

            
       always@ (posedge  clk_in   or  negedge reset_n )
      
           begin
                      if  (!reset_n)
                             
                          envelop_reg   <=  0      ;
                      else
                          envelop_reg   <=  Envelop;

            end

  
     
       
        always@ (posedge  clk_in   or  negedge reset_n )
          begin
                      if (!reset_n)
                           
                             line_num    <=  0 ;
                      else if (!envelop_reg&&Envelop)
                             
                              line_num    <=  line_num + 1'b1 ;


           end



   
      always @(posedge RX_Gate or posedge Envelop)
            begin       
		if(Envelop) 
                 begin
			Focus_Num_Pre <= 2'b0;
	
		 end
		else
                  begin
			if(Focus_Num_Pre[1:0] == 2'b00) 
                        begin
				Focus_Num_Pre[1:0] <= 2'b10;
			end
			/*
			else if(Focus_Num_Pre[1:0] == 2'b01) begin
				Focus_Num_Pre[1:0] <= 2'b10;     
			end
		    */
			else if(Focus_Num_Pre[1:0] == 2'b10) 
                         begin
				Focus_Num_Pre[1:0] <= 2'b11;     
			 end
			else if(Focus_Num_Pre[1:0] == 2'b11) 
                         begin
				Focus_Num_Pre[1:0] <= 2'b00;     
			end
			else 
			begin
				Focus_Num_Pre[1:0] <= 2'b00;     
			end			
			
		
		   /*
			if(Focus_Num_Pre[1:0] < 2'b11) begin
					Focus_Num_Pre <= Focus_Num_Pre + 1'b1;
			end
			else begin
				Focus_Num_Pre 	<= 2'b00;
			end
			*/
		end
	end



      
                    
    assign    focus_num    =       Focus_Num_Pre ;
            
       
   




  endmodule
