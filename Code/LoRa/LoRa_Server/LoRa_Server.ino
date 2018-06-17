#include <SPI.h>
#include <RH_RF95.h>

RH_RF95 rf95;

int led = A2;
float frequency = 868.0;

void setup() 
{
  pinMode(led, OUTPUT);     
  Serial.begin(9600);

  Serial.println("Start Sketch");
  
  rf95.setFrequency(frequency);
  
  rf95.setTxPower(13);
  rf95.setSignalBandwidth(62500);
  rf95.setCodingRate4(5);
  
  Serial.print("Listening on frequency: ");
  Serial.println(frequency);
}
//screen /dev/ttyUSB0
void loop()
{
  if (rf95.available())
  {
    
    uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
    uint8_t len = sizeof(buf);
    
    if (rf95.recv(buf, &len))
    {
      RH_RF95::printBuffer("request: ", buf, len);
      Serial.print("got request: ");
      Serial.println((char*)buf);
      Serial.print("RSSI: ");
      Serial.println(rf95.lastRssi(), DEC);
      
      uint8_t data[] = "Hello back to you";
      rf95.send(data, sizeof(data));
      rf95.waitPacketSent();
      Serial.println("Sent a reply");
    }
    else
    {
      Serial.println("recv failed");
    }
  }
}
