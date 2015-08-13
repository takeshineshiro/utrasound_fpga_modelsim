
module   receive_top_module   (
 //input
     
     input             clk_50M ,
  
     input             clk_100M ,

     input             reset_n  ,

 //output
    
    output  [7:0]      Trans_Data

   );


//wire

        wire   [11:0]          Data_A  ;
       
        wire   [11:0]          Data_B  ;

        wire   [11:0]          Data_C  ;
       
        wire   [11:0]          Data_D  ; 

        wire   [11:0]          Data_E  ;
       
        wire   [11:0]          Data_F  ;

        wire   [11:0]          Data_G  ;
       
        wire   [11:0]          Data_H  ; 


        wire   [7:0]           Line_Num;

        wire   [1:0]           Focus_Num;

        wire                   Pr_Gate  ;

        wire                   RX_Gate  ;

        wire                   Sample_Gate;
 
        wire                   End_Gate ;


        wire [15:0]            DAS_Value;
	 
        wire                   So_Gate;
	 
        wire [7:0]             Coheren_Coff;
	 
        
        wire [29:0]             Match_Filter_Data; 
	 
        wire                    MF_Output_RDY;
	 
        wire                    MF_Output_Valid;

        wire [29:0]             ABS_Data     ;

        wire                    LF_Valid     ;
	 
        wire [30:0]             LF_Data      ;

        wire [12:0]             Log_IN       ;


        wire [7:0]              Log_OUT      ; 


       	
        wire [7:0]              Base_Noise1  ;
	
        wire [7:0]              Base_Noise2  ;
	
	
        wire [7:0]              Line_Num_Test;

        wire [7:0]              Trans_Data1  ;
      
        wire [7:0]              Trans_Data2  ;

        wire [8:0]              Trans_Data_buf;

        wire  [1:0]             Zoom          ;

        wire                    Envelop       ;
      

//reg

        reg [8:0]              WR_RAM_ADDR             ;
	
	reg [7:0]              LF_Reg                  ;
	
	reg [7:0]              Interlace_Counter       ; 
	
	reg [7:0]              Log1,Log2,Log3,Log4     ;

        reg [7:0]              Log5,Log6,Log7,Log8     ;

        reg [7:0]              Log9,Log10,Log11,Log12  ;

        reg [7:0]              Log13,Log14,Log15       ;
	
	reg [11:0]             Sum_Log                 ;
	
	reg [15:0]             Sample_Counter          ;
	
	reg                    Seg_Enable              ;	
	
	reg [7:0]              Interlace               ;

        reg [1:0]              Toggle                  ;


       reg                     CC3200_SPI_CS           ;

   
       reg    [11:0]           cs_num                  ;



    assign      Zoom         =     2'b00        ;





  //combination

        always @(*) 
         begin
		case(Zoom)
		2'b00:     //90mm
			  Interlace <= 8'd10;
		2'b01:     //130mm
		          Interlace <= 8'd15;
		2'b10:     //160mm
			  Interlace <= 8'd19;
		2'b11:     //200mm
			  Interlace <= 8'd24;
		endcase
	end
	

         
	always @(posedge Envelop) 
        begin
		Toggle  <= Toggle + 1'b1;
	end

   
 //seq 

    
     always @(posedge clk_50M or negedge LF_Valid ) 
      begin
		if(~LF_Valid) 
                  begin
			Interlace_Counter   <= 8'd0;
			WR_RAM_ADDR[8:0]    <= 8'd0;
			Sample_Counter      <= 16'd0;
		  end
		else
                  begin
			Log15   <= Log14;
			Log14   <= Log13;
			Log13   <= Log12;
			Log12   <= Log11;
			Log11   <= Log10;
			Log10   <= Log9;
			Log9    <= Log8;
			Log8    <= Log7;
			Log7    <= Log6;
			Log6    <= Log5;
			Log5    <= Log4;
			Log4    <= Log3;
			Log3    <= Log2;
			Log2    <= Log1;
			Log1    <= Log_OUT;
			Sum_Log <= Log1+Log2+Log3+Log4+Log5+Log6+Log7+Log8+Log9+Log10+Log11+Log12+Log13+Log14+Log15;		
		   
		    if(Sample_Counter <16'd16000) 
                       begin
				Sample_Counter <= Sample_Counter + 1'b1;
			end
			
		    if(Sample_Counter <=16'd2000) 
                      begin  //<30mm
				if(Focus_Num[1:0] == 2'b00) 
                                begin
					Seg_Enable <= 1'b1;
				end
				else 
                                begin
					Seg_Enable <= 1'b0;
				end
				
			LF_Reg <= (Sum_Log[11:4]>Base_Noise1)? (Sum_Log[11:4]-Base_Noise1):8'd0 ;				
			end
			
		     else 
                        begin
				if(Focus_Num[1:0] == 2'b11) 
                                begin
					Seg_Enable <= 1'b1;
				end
				else 
                                begin
					Seg_Enable <= 1'b0;
				end	
			LF_Reg <= (Sum_Log[11:4]>Base_Noise2)? (Sum_Log[11:4]-Base_Noise2): 8'd0 ;		
			end
			
		    
		   if(Interlace_Counter < Interlace) 
                        begin   
				Interlace_Counter <= Interlace_Counter + 1'b1;
			end
		   else 
                     begin
				if(WR_RAM_ADDR[8:0] <9'd511) 
                                 begin
					WR_RAM_ADDR[8:0] <= WR_RAM_ADDR[8:0]  + 1'b1;
				 end
				Interlace_Counter <= 8'd0;
			end
	       end
		
	end





       always @(posedge clk_50M or negedge reset_n ) 

        begin
               if  (!reset_n)
                     
                  begin
                            cs_num         <=   0;                        
                           CC3200_SPI_CS   <=   0;       
                  end
               else  if (cs_num<3) 
                  begin
                            cs_num         <=  cs_num +1 ;                        
                           CC3200_SPI_CS   <=   0;       
                  end             
              else  if (cs_num<6) 
                  begin
                            cs_num         <=  cs_num +1 ;                        
                           CC3200_SPI_CS   <=   1;       
                  end     
             else
                 begin
                            cs_num         <=   0;                        
                           CC3200_SPI_CS   <=   0;       
                  end 

       end


       


//initiation


receive_data_gen   receive_data_gen  (
//input
     
         .clk_50M    (clk_50M),
       
         .clk_100M   (clk_100M),
       
         .reset_n    (reset_n),

 //output
          .Data_A    (Data_A),
        
          .Data_B    (Data_B) ,

          .Data_C    (Data_C) ,
       
          .Data_D    (Data_D), 

          .Data_E    (Data_E),
       
          .Data_F    (Data_F),

          .Data_G    (Data_G ),
       
          .Data_H    (Data_H), 

          .Line_Num  (Line_Num),

          .Focus_Num (Focus_Num),

          .Pr_Gate   (Pr_Gate),

          .RX_Gate   (RX_Gate),

          .Sample_Gate(Sample_Gate),
        
          .Envelop     (Envelop),
 
          .End_Gate  (End_Gate)
 );




     Receive   Receive_module  (
  
    //input
              .AD_CLK      (clk_50M),
       
              .Data_A      (Data_A),
      
              .Data_B      (Data_B),
 
              .Data_C      (Data_C),

              .Data_D      (Data_D),

              .Data_E      (Data_E),
              
              .Data_F      (Data_F),

              .Data_G      (Data_G),
 
              .Data_H      (Data_H),     

              .Line_Num    (Line_Num),

              .Focus_Num   (Focus_Num),
             
              .Pr_Gate     (Pr_Gate),

              .RX_Gate     (RX_Gate),
	
	      .Sample_Gate (Sample_Gate),

              .End_Gate    (End_Gate),

   //output
              .So_Gate     (So_Gate),

	      .DAS_Value   (DAS_Value),

	      .Coheren_Coff(Coheren_Coff)
  


     );



    
   	matchfilter MatchFilter_module(
          //input
		.clk              (clk_50M),
		.reset_n          (1'b1),
		.ast_sink_data    (DAS_Value[14:0]),  //15bit 
		.ast_sink_valid   (So_Gate),
		.ast_source_ready (1'b1),
		.ast_sink_error   (2'b00),
         //output
		.ast_source_data (Match_Filter_Data),   //30bit
		.ast_sink_ready  (MF_Output_RDY),
		.ast_source_valid(MF_Output_Valid),
		.ast_source_error()
		);



          
	  ABS	ABS_module  (
         //input
	  .data    (Match_Filter_Data),
        //output
	  .result  (ABS_Data)
	); 


        
     
	 
	lf LF_module(
         //input
		.clk              (clk_50M),
		.reset_n          (1'b1),
		.ast_sink_data    (ABS_Data[26:12]),   //15bit
		.ast_sink_valid   (MF_Output_Valid),
		.ast_source_ready (1'b1),
		.ast_sink_error   (2'b00),
        //output
		.ast_source_data  (LF_Data),         //31bit
		.ast_sink_ready   (),
		.ast_source_valid (LF_Valid),
		.ast_source_error ()
		);


       
  
  assign Log_IN =(LF_Data[30])?13'd0:((LF_Data[30:14] > 18'd8091)?13'd8191:LF_Data[26:14]);
  
  
     
         
       LOG_Table	LOG_Table_module (
       //input
	.address ( Log_IN),
	.clock   (clk_50M ),
      //output
	.q       (Log_OUT )
	);


	 
	Test	Test_module (
       //input
	.address   (1'b0 ),
	.clock     (clk_50M ),
       //output
	.q         ({Base_Noise1,Base_Noise2})
	);
		
	
	
			
	
IMG_TRI_BUFFER	IMG_TRI_BUFFER_inst (
  //input
	.data        (LF_Reg),
	.rdaddress_a ({Toggle[1:0]-2'b01,Trans_Addr}),
	.rdaddress_b ({Toggle[1:0]-2'b10,Trans_Addr} ),
	.rdclock     (CC3200_SPI_CS ),
	.wraddress   ({Toggle[1:0],WR_RAM_ADDR}),
	.wrclock     (clk_50M ),
  //output
	.wren       (LF_Valid & Seg_Enable ),
	.qa         (Trans_Data1 ),
	.qb         (Trans_Data2 )
	);
	
	
	

  assign Trans_Data_buf = {1'b0,Trans_Data1} + {1'b0,Trans_Data2};
	
 
  assign  Trans_Data    =  Trans_Data_buf[8:1];

  
    




endmodule 
