#!/usr/bin/perl

use strict;
use warnings;

sub print_help()
{
	print("Invalid command!\n");
	print("Use: $0 <input-file> <output file>\n");
	exit();
}

my ($input, $output) = @ARGV;

if(not defined $input 
   or not defined $output 
   or $#ARGV > 1)
{
	die print_help();
}

my $R_type = '000000';
my $sa	   = '00000';

my ($code, $rs, $rt, $rd, $funct, $base, $offset, $immediate);

my %registers = (
	zero => '00000', at => '00001', v0 => '00010', v1 => '00011',
	a0	 => '00100', a1 => '00101', a2 => '00110', a3 => '00111', 
	t0	 => '01000', t1 => '01001', t2 => '01010', t3 => '01011', 
	t4	 => '01100', t5 => '01101', t6 => '01110', t7 => '01111', 
	s0	 => '10000', s1 => '10001', s2 => '10010', s3 => '10011', 
	s4	 => '10100', s5 => '10101', s6 => '10110', s7 => '10111', 
	t8	 => '11000', t9 => '11001', k0 => '11010', k1 => '11011', 
	gp	 => '11100', sp => '11101', fp => '11110', ra => '11111' 
);

my %instructions = (
	#R-type
	ADDU => {opcode => '000000', funct => '100001'},
	AND  => {opcode => '000000', funct => '100100'},
	NOR  => {opcode => '000000', funct => '100111'},
	OR	 => {opcode => '000000', funct => '100101'},
	SLL  => {opcode => '000000', funct => '000000'},
	SLLV => {opcode => '000000', funct => '000100'},
	SLT  => {opcode => '000000', funct => '101010'},
	SRA  => {opcode => '000000', funct => '000011'},
	SRAV => {opcode => '000000', funct => '000111'},
	SRL  => {opcode => '000000', funct => '000010'},
	SRLV => {opcode => '000000', funct => '000110'},
	SUBU => {opcode => '000000', funct => '100011'},
	XOR  => {opcode => '000000', funct => '100110'},

	#I-type
	ADDI => {opcode => '001000'},
	ANDI => {opcode => '001100'},
	BEQ  => {opcode => '000100'},
	BNE  => {opcode => '000101'},
	LB	 => {opcode => '100000'},
	LBU  => {opcode => '100100'},
	LH	 => {opcode => '100001'},
	LHU  => {opcode => '100101'},
	LUI  => {opcode => '001111'},
	LW	 => {opcode => '100011'},
	LWU  => {opcode => '100111'},
	ORI  => {opcode => '001101'},
	SB	 => {opcode => '101000'},
	SH	 => {opcode => '101001'},
	SLTI => {opcode => '001010'},
	SW	 => {opcode => '101011'},
	XORI => {opcode => '001110'},
 	
	#J-type
	J	 => {opcode => '000010'},
	JAL  => {opcode => '000011'},
	JALR => {opcode => '001001'},
	JR	 => {opcode => '001000'}
);


open(FILE, '<', $input) or die "ERROR: $!"; #abrir archivo
chomp(my @lineas = <FILE>);					#array[i] = linea i
close(FILE) or die "ERROR: $!";				#cerrar archivo


#opcode registro registro registro sa funct -R
#opcode registro registro immediate -I
#opcode salto (j,jal)
#opcode registro (15 0s) funct (jr)
#opcode registro registro(0s) registro sa(0) funct (jalr)

 
#op-rs-rt-rd-sa-funct -- R
#op-rs-rt-immediate   -- I
#op-target			  -- J / JAL
#op-rs-15,0s-funct    -- JR instruction
#op-rs-rd-rt-sa-funct -- JALR
sub decode
{
	my @string = @_;
	my @word;
	my $binary = "";
	
	print("STRING RECIBIDO: @string\n");
	
	if($string[0] =~ m(([(])|([)]))g) #detecta parentesis
	{
		print "Es un load/store\n";
		
		$string[0] =~ s/\(/,/g;
		$string[0] =~ s/\)//g;
		
		foreach my $i (@string)
		{
			push(@word,split(/,/, $i));
		}
		
		$code   = $instructions{uc $word[0]}{opcode};
		$rt     = $registers{$word[1]};
		$base   = $registers{$word[3]};
		$offset = sprintf("%.16b", $word[2]);
				
		print("En binario: ");		
		
		$binary = sprintf("%s%s%s%s\n", $code, $base, $rt, 
						  $offset);
	}
	else 
	{
		print "Es tipo R, I o J? ";		
		
		foreach my $i (@string)
		{
			push(@word,split(/,/, $i));
		}
		
		if($instructions{uc $word[0]}{opcode} eq $R_type)
		{
			print "Tipo R\n";
			
			$code  = $instructions{uc $word[0]}{opcode};
			$rs    = $registers{$word[2]};
			$rt    = $registers{$word[3]};
			$rd	   = $registers{$word[1]};
			$funct = $instructions{uc $word[0]}{funct};
			
			$binary = sprintf("%s%s%s%s%s%s\n", 
							  $code, $rs, $rt, $rd, $sa, 
							  $funct);
		}
		else
		{
			print "Tipo I o J\n";
			$binary = sprintf("%.32b\n",0);
		}
		
		print("En binario: ");
	}
	
	print($binary);
	
	#escribe en el archivo la instruccion decodificada
	print OUT $binary; 
	print("===============================\n");
}

#crea el archivo destino
open(OUT, '>', $output) or die "ERROR: $!";

foreach my $linea (@lineas) #recorre el array
{
	$linea =~ s/\s+/,/g;    #reemplaza espacios con ','
	$linea =~ s/\$//g;		#elimina el simbolo '$'	
	
	decode($linea);
}

close(OUT) or die "ERROR: $!";
print("Archivo '$output' creado existosamente.\n");