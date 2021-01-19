## Universidad Nacional de Córdoba
### Facultad de Ciencias Exactas, Físicas y Naturales
#### Arquitectura de computadoras
#### Año 2020

------------------

#### Trabajo práctico N° 1: [**_ALU_**](https://github.com/tomasspi/arqui2020/tree/main/tp1-alu)

**Objetivo:** Implementar en FPGA una ALU.

**Requerimientos:**

- La ALU debe ser parametrizable (bus de datos) para poder ser utilizada 
posteriormente en el trabajo final;
- Validar el desarrollo por medio de -Test Bench*;
- Las operaciones de la ALU deben ser las siguientes:
	-	ADD: `100000`
	-	SUB: `100010`
	-	AND: `100100`
	-	OR:  `100101`
	-	XOR: `100110`
	-	SRA: `000011`
	-	SRL: `000010`
	-	NOR: `100111`

**Esquema:**

<img src="tp1-alu.png" alt="imgs/esquema-alu" width="500"/>
	

------------------

#### Trabajo práctico N° 2: [**_UART_**](https://github.com/tomasspi/arqui2020/tree/main/tp2-uart)

**Objetivo:** Implementar en FPGA una UART.
utilizando máquinas de estado. 

**Requerimientos:**

- Crear un módulo UART para enviar los datos A, B y
operación a la ALU y recibir el resultado de la 
misma;
- Crear una interfaz que comunique la ALU con el 
módulo UART;
- Validar el desarrollo por medio de -Test Bench*.

**Esquema:**

<img src="tp2-uart.png" alt="imgs/esquema-uart" width="500"/>

------------------

#### Trabajo práctico N° 3: [**_BIP I_**](https://github.com/tomasspi/arqui2020/tree/main/tp3-bip)

**Objetivo:** Implementar un procesador monocilo sin saltos: BIP I.

**Requerimientos:**

- Se debe ejecutar una instrucción por ciclo de reloj;
- Se deben implementar las siguientes instrucciones:

|     Instrucción    | Código | Mnemónico | Actualización de ACC y DM |
|:------------------:|:------:|:---------:|:-------------------------:|
| Halt               |  00000 |    HLT    |             -             |
| Store Variable     |  00001 |    STO    | DM[operando] <- ACC       |
| Load Variable      |  00010 |     LD    | ACC <- DM[operando]       |
| Load Immediate     |  00011 |    LDI    | ACC <- operando           |
| Add Variable       |  00100 |    ADD    | ACC <- ACC + DM[operando] |
| Add Immediate      |  00101 |    ADDI   | ACC <- ACC + operando     |
| Subtract Variable  |  00110 |    SUB    | ACC <- ACC + DM[operando] |
| Subtract Immediate |  00111 |    SUBI   | ACC <- ACC + operando     |

-  Al ejecutar la instrucción `HLT`, se debe transmitir por UART el valor del acumulador;
- Validar el desarrollo por medio de -Test Bench*.

**Esquema:**

<img src="tp3-BIP.png" alt="imgs/esquema-bip" width="500"/>


------------------

#### Trabajo práctico N° 4: [**_MIPS IV_**](https://github.com/tomasspi/arqui2020/tree/main/tp4-MIPS)

**Objetivo:** Implementar un procesador MIPS pipelined.

**Requerimientos:**
- Implementar las 5 etapas del pipeline:
	- IF (Instruction Fetch): busca la instrucción
	- ID (Instruction Decode): la decodifica y lee los registros.
	- EX (Execute): la ejecuta.
	- MEM (Memory Access): R/W de la memoria de datos.
	- WB (Write back): escribe los resultados en los registros.
- Implementar las instrucciones:
	- Tipo R:
		`SLL, SRL, SRA SLLV, SRLV, SRAV, ADDU, SUBU, AND, OR, XOR, NOR, SLT`
	- Tipo L:
		`LB, LH, LW, LWU, LBU, LHU, SB, SH, SW, ADDI, ANDI, ORI, XORI, LUI, SLTI, BEQ, BNE, J, JAL`
	- Tipo J:
		`JR, JALR`
- El procesador debe soportar los tres tipos de riesgos (estructurales, datos, control):
	- Unidad de cortocircuitos;
	- Unidad de detección de riesgos.
- El programa a ejecutar debe ser cargado en la memoria de programa mediante
un archivo de ensamblado (asm):
	- Convertir código MIPS ASM a código de instrucción.
	- Se debe transmitir mediante la UART antes de empezar la ejecución.
- Simular una unidad de Debugging, que envía info desde y hacia el 
procesador mediante UART:
	- Contenido de los 32 registros;
	- Program Counter;
	- Contenido de la memoria de datos usada;
	- Cantidad de ciclos de clock desde el inicio.
- Modo de operación: antes de comenzar la ejecución, el procesador
espera un programa madiente la unidad de depuración. Una vez cargado
el programa, se deben permitir dos modos de operación:
	1. Continuo: se envía un comando por UART y la ejecución se realiza de inicio a final, mostrando los valores correspondientes en pantalla;
	2. Paso a paso: se ejecuta de un ciclo de clock a la vez, mostrando en cada paso los valores correspondientes en la pantalla.

