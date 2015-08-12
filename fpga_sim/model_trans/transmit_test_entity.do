
 #compile the source 

  vlib    work  
  
  vlog  ./*.v
  
  vlog  ../src_trans/*.v
 
 

 #map  the library

  
  vmap  altera_mf_ver		/home/wong/altera_13_0/alib/verilog_libs/altera_mf_ver

  vmap  lpm_ver                 /home/wong/altera_13_0/alib/verilog_libs/lpm_ver

  vmap  sgate_ver                /home/wong/altera_13_0/alib/verilog_libs/sgate_ver

  vmap  altgxb_ver              /home/wong/altera_13_0/alib/verilog_libs/altgxb_ver

  vmap  cycloneiiils_ver       /home/wong/altera_13_0/alib/verilog_libs/cycloneiiils_ver 

  vmap   cycloneiii_ver         /home/wong/altera_13_0/alib/verilog_libs/cycloneiii_ver

  vmap   cyclone_ver            /home/wong/altera_13_0/alib/verilog_libs/cyclone_ver
   
 
 #vsim the top

  vsim  -t ps  -novopt  +notimingchecks  -L altera_mf_ver  -L  lpm_ver  -L  sgate_ver  -L   altgxb_ver  -L  cyclone_ver  -L  cycloneiii_ver  -L   cycloneiiils_ver    work.transmit_test_entity_tb 

  
 onerror {resume}

 #Log all the objects in design. These will appear in .wlf file#

  log -r /*

  
#View sim_tb_top signals in waveform#

add wave sim:transmit_test_entity_tb/*


#Change radix to Hexadecimal#
radix hex

#In order to suppress these warnings, we use following two commands#
set NumericStdNoWarnings 1
set StdArithNoWarnings 1

echo "email:takeshineshiro@126.com"

run -all

run  1us 

stop



 
