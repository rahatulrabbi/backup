#line 1 "E:/3-1/Computer Architechture & Microcontroller/Lab/code/stepper Motor/StepperMotor.c"
 void main()
 {
 CMCON=0x07;
 ADCON1=0x06;
 TRISB=0;
 portb=0x0F;
#line 22 "E:/3-1/Computer Architechture & Microcontroller/Lab/code/stepper Motor/StepperMotor.c"
 while(1)
 {
 portb=0b00000001;
 Delay_ms(500);
 portb=0b00000011;
 Delay_ms(500);
 portb=0b00000010;
 Delay_ms(500);
 portb=0b00000110;
 Delay_ms(500);
 portb=0b00000100;
 Delay_ms(500);
 portb=0b00001100;
 Delay_ms(500);
 portb=0b00001000;
 Delay_ms(500);
 portb=0b00001001;
 Delay_ms(500);
 }
#line 55 "E:/3-1/Computer Architechture & Microcontroller/Lab/code/stepper Motor/StepperMotor.c"
 }
