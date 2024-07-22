#### here I am going to document all learning activities done during the internship in the month of july 2024

#### In this month we are focusing on the following two things
<ol>
  <li>Learning Verilog HDL</li>
  <li>Learning Simulation using Intel's Modelsim</li>
</ol>

#### Structural modelling examples
1. [4 bit full adder using 1 bit full adder](https://github.com/rafehkhan0/ieeeHydMentorship/tree/main/julymonth_activities/structural%20modelling)

#### the following are the commands to use for the simulation in the cmd mode(we can use GUI mode as well)

1. For creating the work library use the following command <br>
   vlib work
2. For compiling the verilog files use the following command <br>
   vlog file.v file.v ... file.v
3. For simulation of the design use thefollowing command <br>
    vsim -c topmodulename(it will be the module name o the testbench)
4. For running the simulation use the following command <br>
   run -all
5. To come out of the simulation use the following command <br>
    exit
