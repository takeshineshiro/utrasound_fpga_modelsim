
module   cmd_gen_submodule (

  //input

        input                  clk     ,

        input                  reset_n ,
 
                 
   //output

        
       output   [7:0]           Line_Num,

       output   [1:0]           Focus_Num,

       output                   Pr_Gate  ,

       output                   RX_Gate  ,

       output                  Sample_Gate,

       output                  Envelop   ,
 
       output                   End_Gate 


);


   



   //wire

       wire    [7:0]            Line_Num_buf    ;

       wire    [1:0]            Focus_Num_buf   ;

       wire                     Pr_Gate_buf     ;

       wire                     RX_Gate_buf     ;

       wire                     Sample_Gate_buf ;
 
       wire                     End_Gate_buf    ; 

     
       wire                     Envelop_buf     ;



  //reg



  //combination

      
     



  //seq




 //initiation



   transmit_test_model    transmit_test_rev   (
 
   //input
        
            .clk_100M      (clk),
         
            .reset_n       (reset_n) ,
  //output
            .Line_Num      (Line_Num_buf),

            .Focus_Num     (Focus_Num_buf),
       
            .Pr_Gate       (Pr_Gate_buf)  ,
     
            .RX_Gate       (RX_Gate_buf) ,
      
            .End_Gate      (End_Gate_buf),
      
            .Envelop       (Envelop_buf)  
   
    );




   

     Transmit   Transmit_rev  (
 
     //input

          .Transmit_CLK   (clk),                  //100MHz
	  .Line_Num       (Line_Num_buf),         //Line Num,256 Lines totally,0~255
	  .Focus_Num      (Focus_Num_buf),        //Focus_num ,3 totally
	  .Pr_Gate        (Pr_Gate_buf),          //prepare for everythings
	  .RX_Gate        (RX_Gate_buf),          // Start Transmit

    //output 
	  .Sample_Gate    (Sample_Gate_buf),      //
	  .P              (),
	  .N              (),
	
	  .HV_SW_CLR      (),
	  .HV_SW_LE       (),
	  .HV_SW_CLK      (),
	  .HV_SW_DOUT     (),
	
	 .AX              (),
	 .AY              (),
	 .MT_CS           (),
	 .MT_Strobe       (),
	 .MT_Data         ()



    );



   assign       Line_Num    =    Line_Num_buf  ;


    assign       Focus_Num   =   Focus_Num_buf  ;


    assign       Pr_Gate     =   Pr_Gate_buf    ;

    
    assign       RX_Gate     =   RX_Gate_buf   ;


    assign      End_Gate    =   End_Gate_buf   ;  


    assign      Sample_Gate =   Sample_Gate_buf;


    assign      Envelop     =   Envelop_buf   ; 


endmodule
