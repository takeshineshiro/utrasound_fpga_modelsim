 
  module  receive_top_module_tb  ;

  //input
   
       reg           clk_50M   ;

       reg           clk_100M  ;

       reg           reset_n   ;


  //output

       wire  [7:0]   Trans_Data ;





   


    receive_top_module   receive_top_module  (

        //input
     
              .clk_50M   (clk_50M),
  
             .clk_100M   (clk_100M),

             .reset_n    (reset_n) ,

 //output
    
            .Trans_Data (Trans_Data)

     );





   
  
     initial
             clk_100M   = 1'b0;
   always
              clk_100M   = #5 ~clk_100M;



    initial
             clk_50M   = 1'b0;
   always
              clk_50M   = #10 ~clk_50M;



    


   initial 
	begin
          reset_n   = 1'b0;
        #400;
          reset_n   = 1'b1;
   end










   endmodule
