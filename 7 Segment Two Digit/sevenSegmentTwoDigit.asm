
_main:

;sevenSegmentTwoDigit.c,3 :: 		void main() {
;sevenSegmentTwoDigit.c,4 :: 		trisb=0x00;       //portB set as output
	CLRF       TRISB+0
;sevenSegmentTwoDigit.c,5 :: 		trisc=0x00;       //PortC set as output
	CLRF       TRISC+0
;sevenSegmentTwoDigit.c,6 :: 		portb=0x00;       //Initialize portb as off state
	CLRF       PORTB+0
;sevenSegmentTwoDigit.c,7 :: 		portc=0x00;       //Initialize portC as off state
	CLRF       PORTC+0
;sevenSegmentTwoDigit.c,8 :: 		trisd=0xff;       //PortD set as Input
	MOVLW      255
	MOVWF      TRISD+0
;sevenSegmentTwoDigit.c,9 :: 		portd=0;          //Initialize portD as Off state
	CLRF       PORTD+0
;sevenSegmentTwoDigit.c,10 :: 		while(1){
L_main0:
;sevenSegmentTwoDigit.c,11 :: 		portc.f0=0;               //  First Digit On
	BCF        PORTC+0, 0
;sevenSegmentTwoDigit.c,12 :: 		portb=segment[i/10];      //  First Digit Calculate
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentTwoDigit.c,13 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	NOP
;sevenSegmentTwoDigit.c,14 :: 		portc.f0=1;               //  First Digit OFF
	BSF        PORTC+0, 0
;sevenSegmentTwoDigit.c,17 :: 		portc.f1=0;               //  Second Digit On
	BCF        PORTC+0, 1
;sevenSegmentTwoDigit.c,18 :: 		portb=segment[i%10];      // Second Digit Calculate
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _i+0, 0
	MOVWF      R0+0
	MOVF       _i+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	ADDLW      _segment+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegmentTwoDigit.c,19 :: 		delay_ms(10);
	MOVLW      26
	MOVWF      R12+0
	MOVLW      248
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	NOP
;sevenSegmentTwoDigit.c,20 :: 		portc.f1=1;                //  Second Digit OFF
	BSF        PORTC+0, 1
;sevenSegmentTwoDigit.c,23 :: 		if(portd.f0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main4
;sevenSegmentTwoDigit.c,24 :: 		i++;
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;sevenSegmentTwoDigit.c,25 :: 		while(portd.f0)
L_main5:
	BTFSS      PORTD+0, 0
	GOTO       L_main6
;sevenSegmentTwoDigit.c,26 :: 		portd.f0==1;
	GOTO       L_main5
L_main6:
;sevenSegmentTwoDigit.c,27 :: 		}
L_main4:
;sevenSegmentTwoDigit.c,29 :: 		if(portd.f1==1){
	BTFSS      PORTD+0, 1
	GOTO       L_main7
;sevenSegmentTwoDigit.c,30 :: 		i--;
	MOVLW      1
	SUBWF      _i+0, 1
	BTFSS      STATUS+0, 0
	DECF       _i+1, 1
;sevenSegmentTwoDigit.c,31 :: 		while(portd.f1)
L_main8:
	BTFSS      PORTD+0, 1
	GOTO       L_main9
;sevenSegmentTwoDigit.c,32 :: 		portd.f1==1;
	GOTO       L_main8
L_main9:
;sevenSegmentTwoDigit.c,33 :: 		}
L_main7:
;sevenSegmentTwoDigit.c,34 :: 		if(i<0 || i>99)
	MOVLW      128
	XORWF      _i+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main15
	MOVLW      0
	SUBWF      _i+0, 0
L__main15:
	BTFSS      STATUS+0, 0
	GOTO       L__main13
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main16
	MOVF       _i+0, 0
	SUBLW      99
L__main16:
	BTFSS      STATUS+0, 0
	GOTO       L__main13
	GOTO       L_main12
L__main13:
;sevenSegmentTwoDigit.c,35 :: 		i=0;
	CLRF       _i+0
	CLRF       _i+1
L_main12:
;sevenSegmentTwoDigit.c,36 :: 		}
	GOTO       L_main0
;sevenSegmentTwoDigit.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
