

 module  receive_data_gen   (
  //input
       input                    clk_50M ,
       
       input                    reset_n ,

 //output

       output   [11:0]          Data_A  ,
       
       output   [11:0]          Data_B  ,

       output   [11:0]          Data_C  ,
       
       output   [11:0]          Data_D  , 

       output   [11:0]          Data_E  ,
       
       output   [11:0]          Data_F  ,

       output   [11:0]          Data_G  ,
       
       output   [11:0]          Data_H  , 


       output   [7:0]           Line_Num,

       output   [1:0]           Focus_Num,

       output                   Pr_Gate  ,

       output                   RX_Gate  ,

       output                  Sample_Gate,
 
       output                   End_Gate 
   );




 //wire




//reg





     data_gen_submodule      data_gen_submodule (
      //input
               .clk        (clk_50M),
               .reset_n    (reset_n),
      //output
               .Data_A     (), 
               
               .Data_B     (),
 
               .Data_C     (),

               .Data_D     (),
       
               .Data_E     (),

               .Data_F     (),
 
               .Data_G     (),

               .Data_H     ()

     );
  



     cmd_gen_submodule     cmd_gen_submodule  (
   
      //input
          



     );







endmodule 
