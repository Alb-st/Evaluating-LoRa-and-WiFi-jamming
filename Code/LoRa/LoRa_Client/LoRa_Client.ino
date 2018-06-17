#include <SPI.h>
#include <RH_RF95.h>

RH_RF95 rf95;
float frequency = 868.0;
int packetsToSend = 0;
unsigned int totalTimeTaken = 0;

void setup()
{
  Serial.begin(9600);
  while(!Serial);
  
  Serial.println("Start LoRa Client");
  
  rf95.setFrequency(frequency);
  rf95.setTxPower(13);
  rf95.setSpreadingFactor(7); //Spread factor 6-12
  rf95.setSignalBandwidth(62500); //BandWidth: 7800,10400,15600,20800,31200,41700,62500,125000,250000,500000
  rf95.setCodingRate4(5); //Coding Rate: 5 (4/5), 6 (4/6), 7 (4/7), 8 (4/8)
}

void loop()
{
  if (packetsToSend < 100) {
    packetsToSend++;
    
    uint8_t data[] = "Hello";
    
    unsigned long timeStart = micros(); //Start the "RTT" timer
    
    rf95.send(data, sizeof(data));
    rf95.waitPacketSent();
    
    //Wait for a reply
    uint8_t buf[RH_RF95_MAX_MESSAGE_LEN];
    uint8_t len = sizeof(buf);
  
    if (rf95.waitAvailableTimeout(5000))
    {
      
      if (rf95.recv(buf, &len))
      {
        unsigned long timeEnd = micros();
        unsigned long timeRTT = timeEnd - timeStart;
        Serial.print("\t Got reply: ");
        Serial.print((char*)buf);
        Serial.print("\t RSSI: ");
        Serial.print(rf95.lastRssi(), DEC);
        Serial.print("\t rtt: ");
        Serial.print(timeRTT);
        Serial.print("\t   µs");
      }
      else
      {
        Serial.println("recv failed");
      }
      Serial.print("\t count: ");
      Serial.println(packetsToSend);
    }
    else
    {
    }
    delay(1000);
  }
  else {
    while(1);
    }
}
