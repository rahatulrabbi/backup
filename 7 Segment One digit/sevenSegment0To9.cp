#line 1 "E:/3-1/Computer Architechture & Microcontroller/Lab/code/7 Segment One digit/sevenSegment0To9.c"
void main() {
 int i;
 char arra[]={0x40,0x79,0x24,0x30,0x19,0x12,0x02,0x78,0x00,0x10};
 TRISB=0x00;
 portb=0x00;
 while(1){

 for(i=0; i<10;i++){
 portb=arra[i];
 delay_ms(500);
 }

 for(i=9; i>=0;i--){
 portb=arra[i];
 delay_ms(500);
 }

 }
}
