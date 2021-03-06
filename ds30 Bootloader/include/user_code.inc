;------------------------------------------------------------------------------
;
; Title:			ds30 Loader for PIC24 and dsPIC
;
; File description:	user init and exit code
;
; Copyright: 		Copyright � 2011, Mikael Gustafsson
;                                                                             
;------------------------------------------------------------------------------


;------------------------------------------------------------------------------
;    This file is part of ds30 Loader.
;
;    ds30 Loader is free software: you can redistribute it and/or modify
;    it under the terms of the GNU General Public License as published by
;    the Free Software Foundation.
;
;    ds30 Loader is distributed in the hope that it will be useful,
;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;    GNU General Public License for more details.
;
;    You should have received a copy of the GNU General Public License
;    along with ds30 Loader. If not, see <http://www.gnu.org/licenses/>.
;------------------------------------------------------------------------------


;------------------------------------------------------------------------------
; UserInit()
; Description: this is executed immediately on start-up before the boot loader code
;------------------------------------------------------------------------------
 		.macro UserInit
			;----------------------------------------------------------------------
			; Set up the clock
			;----------------------------------------------------------------------
			; CLKDIVbits.PLLPRE=0;        // PLLPRE (N2) 0=/2
			MOV 	CLKDIV, W5
			MOV 	#0xFFE0, W4
			AND 	W5, W4, W4
			MOV 	W4, CLKDIV
			; PLLFBD=20;                  // pll multiplier (M) = +2
			MOV 	#0x14, W4
			MOV	 	W4, PLLFBD
			; CLKDIVbits.PLLPOST=0;       // PLLPOST (N1) 0=/2
			MOV 	CLKDIV, W4
			BCLR 	W4, #6
			BCLR 	W4, #7
			mov 	W4, CLKDIV
			;while(!OSCCONbits.LOCK);    // wait for PLL ready
pllWhile: 	NOP
			MOV 	OSCCON, W5
			MOV 	#0x20, W4
			AND 	W5, W4, W4
			SUB 	W4, #0x0, [W15]
			BRA 	Z, pllWhile
	

			;----------------------------------------------------------------------
			; Make uart pins digital
			;----------------------------------------------------------------------
			.ifdecl ADPCFGL				
				;.error "Do you need to configure communication pins to be digital? If not, remove this line"
			.else
				.ifdecl AD1PCFGL
					.error "Do you need to configure communication pins to be digital? If not, remove this line"
				.endif
			.endif 
			
			
			;----------------------------------------------------------------------
			; UART/CAN pps config
			;----------------------------------------------------------------------
			.ifdef HAS_PPS
				.error "PPS is not configured. More information in the firmware manual."			;xxx remove this line when PPS is configured						
			
				; ** IMPORTANT **
				;
				; THIS CODE IS JUST A TEMPLATE AND WILL MOST LIKELY NOT WORK FOR YOU, 
				; READ THE DATASHEET AND ALTER LINES MARKED WITH XXX
				;
				; ** IMPORTANT **
	
				; Receive, map pin (14 = 1110) to uart
				bclr	RPINR18, #U1RXR0		;xxx
				bset	RPINR18, #U1RXR1		;xxx
				bset	RPINR18, #U1RXR2		;xxx
				bset	RPINR18, #U1RXR3		;xxx
				bclr	RPINR18, #U1RXR4		;xxx
				bclr	RPINR18, #U1RXR5		;xxx
						
				; Transmit, map uart to pin
				bset	RPOR7, #RP15R0			;xxx
				bset	RPOR7, #RP15R1			;xxx
				bclr	RPOR7, #RP15R2			;xxx
				bclr	RPOR7, #RP15R3			;xxx
				bclr	RPOR7, #RP15R4			;xxx
				bclr	RPOR7, #RP15R5			;xxx
			.endif	
		
		; End of macro
		.endm
		
		
;------------------------------------------------------------------------------
; UserExit()
; Description: this is executed right before the user application is loadaed
;------------------------------------------------------------------------------
 		.macro UserExit
 		
		
		; End of macro
		.endm
		

;------------------------------------------------------------------------------
; End of file
;------------------------------------------------------------------------------	
