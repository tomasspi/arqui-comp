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


sub decode
{
	my @string = @_;
	my @word;
	my $binary = "";
	
	print("STRING RECIBIDO: @string\n");
	
	if($string[0] =~ m(([(])|([)]))g) #detecta parentesis
	{
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
		#lui tiene la base en 0 
		$binary = sprintf("%s%s%s%s\n", $code, $base, $rt, 
						  $offset);
	}
	else 
	{
		foreach my $i (@string)
		{
			push(@word,split(/,/, $i));
		}
		
		if($instructions{uc $word[0]}{opcode} eq $R_type)
		{
			if($instructions{uc $word[0]}{funct} eq 
			   $instructions{SLL}{funct} || 
			   $instructions{uc $word[0]}{funct} eq 
			   $instructions{SRA}{funct} ||
			   $instructions{uc $word[0]}{funct} eq 
			   $instructions{SRL}{funct})
			{
				$code  = $instructions{uc $word[0]}{opcode};
				$rs    = sprintf("%.5b", $word[3]);
				$rt    = $registers{$word[2]};
				$rd	   = $registers{$word[1]};
				$funct = $instructions{uc $word[0]}{funct};
				
				$binary = sprintf("%s%s%s%s%s%s\n", 
								  $code, $sa, $rt, $rd, $rs, 
								  $funct);
			}
			else
			{
				$code  = $instructions{uc $word[0]}{opcode};
				$rs    = $registers{$word[2]};
				$rt    = $registers{$word[3]};
				$rd	   = $registers{$word[1]};
				$funct = $instructions{uc $word[0]}{funct};
				
				$binary = sprintf("%s%s%s%s%s%s\n", 
								  $code, $rs, $rt, $rd, $sa, 
								  $funct);
			}
		}
		else 
		{print "J o I\n";
			#jump
			if($instructions{uc $word[0]}{opcode} eq 
			   $instructions{J}{opcode} || 
			   $instructions{uc $word[0]}{opcode} eq 
			   $instructions{JAL}{opcode})
			{print "J-JAL\n";
				$code   = $instructions{uc $word[0]}{opcode};
				$offset = sprintf("%.26b", $word[1]);
				
				$binary = sprintf("%s%s\n", $code, $offset);
		    }
			elsif($instructions{uc $word[0]}{opcode} eq 
			      $instructions{JALR}{opcode})
			{print "JALR\n";
				if($#word == 1)
				{
					#000000-rs-00000-31-00000-funct
					$rd = sprintf("%.5b", 31);
					$binary = sprintf("%s%s%s%s%s%s\n",
									  $R_type, $registers{$word[1]},
									  $sa, $rd, $sa, 
									  $instructions{uc $word[0]}{opcode});
				}
				else
				{
					#000000-rs-00000-rd-00000-funct
					$binary = sprintf("%s%s%s%s%s%s\n",
									  $R_type, $registers{$word[1]},
									  $sa, $registers{$word[2]}, $sa, 
									  $instructions{uc $word[0]}{opcode});
				}
			}
			elsif(uc $word[0] eq "JR")
			{
				print "JR\n";
				$binary = sprintf("%s%s%s%s%s%s\n",
								  $R_type, $registers{$word[1]},
								  $sa, $sa, $sa, 
								  $instructions{uc $word[0]}{opcode});
			}
			else
			{
				print("ES IMMEDIATE\n");
				$code      = $instructions{uc $word[0]}{opcode};
				$rs        = $registers{$word[2]};
				$rt  	   = $registers{$word[1]};
				$immediate = sprintf("%.16b", $word[3]);
				
				$binary = sprintf("%s%s%s%s\n", $code, $rs, $rt, 
						  $immediate);
			}
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