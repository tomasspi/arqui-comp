@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
<<<<<<< HEAD
<<<<<<< HEAD
REM Generated by Vivado on Tue Apr 06 18:44:53 -0300 2021
=======
REM Generated by Vivado on Mon Apr 12 19:08:41 -0300 2021
>>>>>>> rollback
=======
REM Generated by Vivado on Thu Mar 25 19:13:51 -0300 2021
>>>>>>> parent of 0ffd3e1 (jump andando, TODO: branches)
REM SW Build 2902540 on Wed May 27 19:54:49 MDT 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
echo "xelab -wto d8a0464a322d465fbfd74b2bd1887631 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_pipeline_behav xil_defaultlib.tb_pipeline xil_defaultlib.glbl -log elaborate.log"
call xelab  -wto d8a0464a322d465fbfd74b2bd1887631 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot tb_pipeline_behav xil_defaultlib.tb_pipeline xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
