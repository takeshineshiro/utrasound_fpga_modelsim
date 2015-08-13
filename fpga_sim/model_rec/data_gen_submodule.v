
  module   data_gen_submodule  (
     //input
           input                  clk     ,

           input                  reset_n , 
              
      //output
          output  [11:0]          Data_A  ,

          output  [11:0]          Data_B  ,

          output  [11:0]          Data_C  ,

          output  [11:0]          Data_D  ,
              
          output  [11:0]          Data_E  ,

          output  [11:0]          Data_F  ,  
       
          output  [11:0]          Data_G  ,

          output  [11:0]          Data_H     
              


  );







   //wire



  //reg


       reg     [11:0]            data_buf  ;





         
      always@(posedge  clk    or  negedge  reset_n )  
       
       begin
   
                if (!reset_n)
                    
                   begin                              
                            data_buf   <=   0  ;

                   end
                
                else   if   (data_buf  < 511)
                              
              
                           data_buf    <=   data_buf  + 1'b1 ;

                else
                     
                           data_buf   <=   0  ;   
                            
                  

       end

       

        
      assign      Data_A   =     data_buf ;

      assign      Data_B   =     Data_A+1 ;

      assign      Data_C   =     Data_B+1 ;

      assign      Data_D   =     Data_C+1 ;


       
   
      assign      Data_E   =     data_buf ;

      assign      Data_F   =     Data_E+1 ;

      assign      Data_G   =     Data_F+1 ;

      assign      Data_H   =     Data_G+1 ;






endmodule
