
_main:

;LED.c,1 :: 		void main() {
;LED.c,2 :: 		TRISB = 0X00;      //PortB as Output
	CLRF       TRISB+0
;LED.c,3 :: 		PORTB = 0X00;      //Initialize  PortB as off state
	CLRF       PORTB+0
;LED.c,4 :: 		while(1){
L_main0:
;LED.c,5 :: 		portb.f0 = 0xff;     //On
	BSF        PORTB+0, 0
;LED.c,6 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;LED.c,7 :: 		portb.f0 = 0x00;     //off
	BCF        PORTB+0, 0
;LED.c,8 :: 		portb.f1 = 0xff;     //On
	BSF        PORTB+0, 1
;LED.c,9 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;LED.c,10 :: 		portb.f1 = 0x00;     //off
	BCF        PORTB+0, 1
;LED.c,11 :: 		portb.f2 = 0xff;     //On
	BSF        PORTB+0, 2
;LED.c,12 :: 		delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;LED.c,13 :: 		portb.f2 = 0x00;     //off
	BCF        PORTB+0, 2
;LED.c,14 :: 		}
	GOTO       L_main0
;LED.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
