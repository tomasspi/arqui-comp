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

my $R_type 	  = '000000';
my $sa	   	  = '00000';
my $line_cntr = 0;
my %labels	  = ();
my $label	  = "";

my ($code, $rs, $rt, $rd, $funct, $base, $offset, $immediate);

my %registers = (
	0    => '00000', 1 => '00001',  2 => '00010',  3 => '00011',
	4	 => '00100', 5 => '00101',  6 => '00110',  7 => '00111', 
	8	 => '01000', 9 => '01001',  10 => '01010', 11 => '01011', 
	12	 => '01100', 13 => '01101', 14 => '01110', 15 => '01111', 
	16	 => '10000', 17 => '10001', 18 => '10010', 19 => '10011', 
	20	 => '10100', 21 => '10101', 22 => '10110', 23 => '10111', 
	24	 => '11000', 25 => '11001', 26 => '11010', 27 => '11011', 
	28	 => '11100', 29 => '11101', 30 => '11110', 31 => '11111' 
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
chomp(my @lines = <FILE>);					#array[i] = linea i
close(FILE) or die "ERROR: $!";				#cerrar archivo

sub decode
{
	my @string = @_;
	my @word;
	my $binary = "";
			
	if($string[0] eq "halt")
	{
		$binary = sprintf("%b", hex("ffffffff"));
	}
	else
	{
		if($string[0] =~ m(([(])|([)]))g) #detecta parentesis
		{
			#elimina los parentesis
			$string[0] =~ s/\(/,/g;
			$string[0] =~ s/\)//g;
			
			#divide la instruccion
			foreach my $i (@string)
			{
				push(@word,split(/,/, $i));
			}
			
			#check por si tuvo un label
			if($word[0] eq "")
			{
				shift(@word);
			}
			
			$code   = $instructions{uc $word[0]}{opcode};
			$rt     = $registers{$word[1]};
			$base   = $registers{$word[3]};
			$offset = sprintf("%.16b", $word[2]);
					
			#print("En binario: ");		
			
			$binary = sprintf("%s%s%s%s\n", $code, $base, $rt, 
							  $offset);
		}
		else 
		{
			foreach my $i (@string)
			{
				push(@word,split(/,/, $i));
			}
			
			#check por si tuvo un label
			if($word[0] eq "")
			{
				shift(@word);
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
				elsif($instructions{uc $word[0]}{funct} eq 
				      $instructions{SLLV}{funct} || 
				      $instructions{uc $word[0]}{funct} eq 
				      $instructions{SRAV}{funct} ||
				      $instructions{uc $word[0]}{funct} eq 
				      $instructions{SRLV}{funct})
				{
					$code  = $instructions{uc $word[0]}{opcode};
					$rs    = sprintf("%.5b", $word[3]);
					$rt    = $registers{$word[2]};
					$rd	   = $registers{$word[1]};
					$funct = $instructions{uc $word[0]}{funct};
					
					$binary = sprintf("%s%s%s%s%s%s\n", 
									  $code, $rs, $rt, $rd, $sa, 
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
			elsif($instructions{uc $word[0]}{opcode} eq 
				   $instructions{J}{opcode} ||
				   $instructions{uc $word[0]}{opcode} eq 
				   $instructions{JAL}{opcode})
			{
				$code   = $instructions{uc $word[0]}{opcode};
				$offset = sprintf("%.26b", $labels{$word[1]});
				
				$binary = sprintf("%s%s\n", $code, $offset);
			}
			elsif($instructions{uc $word[0]}{opcode} eq 
				  $instructions{JALR}{opcode})
			{
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
			elsif($word[0] eq "jr")
			{
				$binary = sprintf("%s%s%s%s%s%s\n",
								  $R_type, $registers{$word[1]},
								  $sa, $sa, $sa, 
								  $instructions{uc $word[0]}{opcode});
			} 
			elsif($instructions{uc $word[0]}{opcode} eq 
			      $instructions{BEQ}{opcode} ||
			      $instructions{uc $word[0]}{opcode} eq 
			      $instructions{BNE}{opcode})
			{
				$code   = $instructions{uc $word[0]}{opcode};
				$rs     = $registers{$word[1]};
				$rt     = $registers{$word[2]};
				$offset = sprintf("%.16b", $labels{$word[3]});
				
				$binary = sprintf("%s%s%s%s\n",
								  $code, $rs, $rt, $offset);
			}
			elsif($instructions{uc $word[0]}{opcode} eq 
			      $instructions{LUI}{opcode})
			{
				$code = $instructions{uc $word[0]}{opcode};
				$rs   = $sa;
				$rt   = $registers{$word[1]};
				$immediate = sprintf("%.16b", $word[2]);
					
				$binary = sprintf("%s%s%s%s\n", $code, $rs, $rt, 
						  $immediate);
			}
			else
			{
				$code      = $instructions{uc $word[0]}{opcode};
				$rs        = $registers{$word[2]};
				$rt  	   = $registers{$word[1]};
				$immediate = sprintf("%.16b", $word[3]);
				
				$binary = sprintf("%s%s%s%s\n", $code, $rs, $rt, 
						  $immediate);
			}
		}
	}
	
	#escribe en el archivo la instruccion decodificada
	print OUT $binary; 
	#print("===============================\n");
}

sub find_labels
{
	my @line = @_;
	my @word;	
	
	#divido la instruccion
	foreach my $i (@line)
	{
		push(@word,split(/,/, $i));
	}
		
	#detecta instrucciones de salto
	#y guarda el label
	if((uc $word[0]) =~ /J/)
	{
		$labels{$word[1]};
	}
	elsif((uc $word[0]) =~ /BEQ|BNE/)
	{
		$labels{$word[3]};
	}
}

#crea el archivo destino
open(OUT, '>', $output) or die "ERROR: $!";

foreach my $line (@lines) #recorre el array
{	
	$line = lc $line;		#convierte a lowercase
	$line =~ s/#.*//g;		#elimina los comentarios
	$line =~ s/^\s+|\s+$//;	#elimina los espacios de la linea
	$line =~ s/\s+/,/g;		#reemplaza espacios con ','
	$line =~ s/\$//g;		#elimina el simbolo '$'	
	
	find_labels($line);
	
	if($line =~ /:/)
	{
		#obtengo el label
		$label = substr($line, 0, index($line, ":"));
		#elimina el campo 'label:'
		$line =~ s/^.*:,//g; 
		#actualizo la posicion del label
		$labels{$label} = $line_cntr;		
	}
	$line_cntr++;
}

foreach my $line (@lines)
{
	decode($line);
}

close(OUT) or die "ERROR: $!";
print("Archivo '$output' creado exitosamente.\n");