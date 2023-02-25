
_main:

;LEDPushButton.c,1 :: 		void main() {
;LEDPushButton.c,2 :: 		int count = 0;
	CLRF       main_count_L0+0
	CLRF       main_count_L0+1
;LEDPushButton.c,3 :: 		TRISB=0x00;         // PortB as Output
	CLRF       TRISB+0
;LEDPushButton.c,4 :: 		TRISD=0xff;         // PortD as Input
	MOVLW      255
	MOVWF      TRISD+0
;LEDPushButton.c,5 :: 		portb=0;
	CLRF       PORTB+0
;LEDPushButton.c,6 :: 		while(1){
L_main0:
;LEDPushButton.c,8 :: 		if(portd.f0==1)
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;LEDPushButton.c,10 :: 		delay_ms(500);   // For set State
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
;LEDPushButton.c,11 :: 		if(count==0)
	MOVLW      0
	XORWF      main_count_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      0
	XORWF      main_count_L0+0, 0
L__main11:
	BTFSS      STATUS+0, 2
	GOTO       L_main4
;LEDPushButton.c,12 :: 		count = 1;
	MOVLW      1
	MOVWF      main_count_L0+0
	MOVLW      0
	MOVWF      main_count_L0+1
	GOTO       L_main5
L_main4:
;LEDPushButton.c,14 :: 		count = 0;
	CLRF       main_count_L0+0
	CLRF       main_count_L0+1
L_main5:
;LEDPushButton.c,15 :: 		}
L_main2:
;LEDPushButton.c,16 :: 		if(count==1){
	MOVLW      0
	XORWF      main_count_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      1
	XORWF      main_count_L0+0, 0
L__main12:
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;LEDPushButton.c,17 :: 		portb.f0=1;      // D1 Off
	BSF        PORTB+0, 0
;LEDPushButton.c,18 :: 		portb.f5=0;      // D2 ONN
	BCF        PORTB+0, 5
;LEDPushButton.c,19 :: 		delay_ms(500);
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
;LEDPushButton.c,20 :: 		portb.f0=0;      // D1 ONN
	BCF        PORTB+0, 0
;LEDPushButton.c,21 :: 		portb.f5=1;      // D2 Off
	BSF        PORTB+0, 5
;LEDPushButton.c,22 :: 		delay_ms(500);
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
;LEDPushButton.c,23 :: 		}
	GOTO       L_main9
L_main6:
;LEDPushButton.c,25 :: 		portb.f0=0;
	BCF        PORTB+0, 0
;LEDPushButton.c,26 :: 		portb.f5=0;
	BCF        PORTB+0, 5
;LEDPushButton.c,27 :: 		}
L_main9:
;LEDPushButton.c,28 :: 		}
	GOTO       L_main0
;LEDPushButton.c,29 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
