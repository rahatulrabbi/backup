#line 1 "E:/3-1/Computer Architechture & Microcontroller/Lab/code/LED/LED.c"
void main() {
 TRISB = 0X00;
 PORTB = 0X00;
 while(1){
 portb.f0 = 0xff;
 delay_ms(200);
 portb.f0 = 0x00;
 portb.f1 = 0xff;
 delay_ms(200);
 portb.f1 = 0x00;
 portb.f2 = 0xff;
 delay_ms(200);
 portb.f2 = 0x00;
 }
}
