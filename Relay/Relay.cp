#line 1 "E:/3-1/Computer Architechture & Microcontroller/Lab/code/Relay/Relay.c"
void main() {
 TRISB = 0x00;
 portb = 0x00;
 while(1)
 {
 portb.f1=1;
 delay_ms(2000);
 portb.f1=0;
 delay_ms(2000);
 }
}
