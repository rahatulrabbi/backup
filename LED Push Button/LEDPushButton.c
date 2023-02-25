void main() {
     int count = 0;
     TRISB=0x00;         // PortB as Output
     TRISD=0xff;         // PortD as Input
     portb=0;
     while(1){

       if(portd.f0==1)
         {
             delay_ms(500);   // For set State
             if(count==0)
                 count = 1;
             else
                 count = 0;
        }
       if(count==1){
            portb.f0=1;      // D1 Off
            portb.f5=0;      // D2 ONN
            delay_ms(500);
            portb.f0=0;      // D1 ONN
            portb.f5=1;      // D2 Off
            delay_ms(500);
        }
        else{                // OFF all port
             portb.f0=0;
             portb.f5=0;
        }
   }
}