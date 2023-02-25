
_main:

;sevenSegment0To9.c,1 :: 		void main() {
;sevenSegment0To9.c,3 :: 		char arra[]={0x40,0x79,0x24,0x30,0x19,0x12,0x02,0x78,0x00,0x10};       // For Common Anode
	MOVLW      64
	MOVWF      main_arra_L0+0
	MOVLW      121
	MOVWF      main_arra_L0+1
	MOVLW      36
	MOVWF      main_arra_L0+2
	MOVLW      48
	MOVWF      main_arra_L0+3
	MOVLW      25
	MOVWF      main_arra_L0+4
	MOVLW      18
	MOVWF      main_arra_L0+5
	MOVLW      2
	MOVWF      main_arra_L0+6
	MOVLW      120
	MOVWF      main_arra_L0+7
	CLRF       main_arra_L0+8
	MOVLW      16
	MOVWF      main_arra_L0+9
;sevenSegment0To9.c,4 :: 		TRISB=0x00;      // PORTB as Output
	CLRF       TRISB+0
;sevenSegment0To9.c,5 :: 		portb=0x00;      // Initialize Portb as off  state
	CLRF       PORTB+0
;sevenSegment0To9.c,6 :: 		while(1){
L_main0:
;sevenSegment0To9.c,8 :: 		for(i=0; i<10;i++){
	CLRF       R1+0
	CLRF       R1+1
L_main2:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main11
	MOVLW      10
	SUBWF      R1+0, 0
L__main11:
	BTFSC      STATUS+0, 0
	GOTO       L_main3
;sevenSegment0To9.c,9 :: 		portb=arra[i];
	MOVF       R1+0, 0
	ADDLW      main_arra_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegment0To9.c,10 :: 		delay_ms(500);
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
;sevenSegment0To9.c,8 :: 		for(i=0; i<10;i++){
	INCF       R1+0, 1
	BTFSC      STATUS+0, 2
	INCF       R1+1, 1
;sevenSegment0To9.c,11 :: 		}
	GOTO       L_main2
L_main3:
;sevenSegment0To9.c,13 :: 		for(i=9; i>=0;i--){
	MOVLW      9
	MOVWF      R1+0
	MOVLW      0
	MOVWF      R1+1
L_main6:
	MOVLW      128
	XORWF      R1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main12
	MOVLW      0
	SUBWF      R1+0, 0
L__main12:
	BTFSS      STATUS+0, 0
	GOTO       L_main7
;sevenSegment0To9.c,14 :: 		portb=arra[i];
	MOVF       R1+0, 0
	ADDLW      main_arra_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTB+0
;sevenSegment0To9.c,15 :: 		delay_ms(500);
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
;sevenSegment0To9.c,13 :: 		for(i=9; i>=0;i--){
	MOVLW      1
	SUBWF      R1+0, 1
	BTFSS      STATUS+0, 0
	DECF       R1+1, 1
;sevenSegment0To9.c,16 :: 		}
	GOTO       L_main6
L_main7:
;sevenSegment0To9.c,18 :: 		}
	GOTO       L_main0
;sevenSegment0To9.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
