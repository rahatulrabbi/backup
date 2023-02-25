
_main:

;StepperMotor.c,1 :: 		void main()
;StepperMotor.c,3 :: 		CMCON=0x07;    // To turn off comparetor
	MOVLW      7
	MOVWF      CMCON+0
;StepperMotor.c,4 :: 		ADCON1=0x06;   // To turn off analog to digital converter
	MOVLW      6
	MOVWF      ADCON1+0
;StepperMotor.c,5 :: 		TRISB=0;
	CLRF       TRISB+0
;StepperMotor.c,6 :: 		portb=0x0F;
	MOVLW      15
	MOVWF      PORTB+0
;StepperMotor.c,22 :: 		while(1)                // Differece between 45 degree
L_main0:
;StepperMotor.c,24 :: 		portb=0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;StepperMotor.c,25 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;StepperMotor.c,26 :: 		portb=0b00000011;
	MOVLW      3
	MOVWF      PORTB+0
;StepperMotor.c,27 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;StepperMotor.c,28 :: 		portb=0b00000010;
	MOVLW      2
	MOVWF      PORTB+0
;StepperMotor.c,29 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;StepperMotor.c,30 :: 		portb=0b00000110;
	MOVLW      6
	MOVWF      PORTB+0
;StepperMotor.c,31 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;StepperMotor.c,32 :: 		portb=0b00000100;
	MOVLW      4
	MOVWF      PORTB+0
;StepperMotor.c,33 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;StepperMotor.c,34 :: 		portb=0b00001100;
	MOVLW      12
	MOVWF      PORTB+0
;StepperMotor.c,35 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;StepperMotor.c,36 :: 		portb=0b00001000;
	MOVLW      8
	MOVWF      PORTB+0
;StepperMotor.c,37 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;StepperMotor.c,38 :: 		portb=0b00001001;
	MOVLW      9
	MOVWF      PORTB+0
;StepperMotor.c,39 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;StepperMotor.c,40 :: 		}
	GOTO       L_main0
;StepperMotor.c,55 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
