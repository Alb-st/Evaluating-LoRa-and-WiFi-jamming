clc
clear
format long
jammer = -65:5:0;

fileCount = 14;

lora00 = readtable("loradata/newlora/lora00");
lora01 = readtable("loradata/newlora/lora01");
lora02 = readtable("loradata/newlora/lora02");
lora03 = readtable("loradata/newlora/lora03");
lora04 = readtable("loradata/newlora/lora04");
lora05 = readtable("loradata/newlora/lora05");
lora06 = readtable("loradata/newlora/lora06");
lora07 = readtable("loradata/newlora/lora07");
lora08 = readtable("loradata/newlora/lora08");
lora09 = readtable("loradata/newlora/lora09");
lora10 = readtable("loradata/newlora/lora10");
lora11 = readtable("loradata/newlora/lora11");
lora12 = readtable("loradata/newlora/lora12");
lora13 = readtable("loradata/newlora/lora13");

loraPackets = zeros(1,fileCount);
loraMaxRtt = zeros(1,fileCount);
loraMinRtt = zeros(1,fileCount);

loraPackets(1) = size(table2array(lora00(:,9)),1);
loraPackets(2) = size(table2array(lora01(:,9)),1);
loraPackets(3) = size(table2array(lora02(:,9)),1);
loraPackets(4) = size(table2array(lora03(:,9)),1);
loraPackets(5) = size(table2array(lora04(:,9)),1);
loraPackets(6) = size(table2array(lora05(:,9)),1);
loraPackets(7) = size(table2array(lora06(:,9)),1);
loraPackets(8) = size(table2array(lora07(:,9)),1);
loraPackets(9) = size(table2array(lora08(:,9)),1);
loraPackets(10) = size(table2array(lora09(:,9)),1);
loraPackets(11) = size(table2array(lora10(:,9)),1);
loraPackets(12) = size(table2array(lora11(:,9)),1);
loraPackets(13) = size(table2array(lora12(:,9)),1);
loraPackets(14) = size(table2array(lora13(:,9)),1);

for i=1:length(loraPackets)
    loraPackets(i) = 100-loraPackets(i); 

end



a1 = plot(jammer, loraPackets, 'b');
hold on

%title("LoRa packet loss plotted against jamming noise")
ylabel("Packets lost");
xlabel("Jammer noise (dBm)");
%yticks([ round(min(loraPackets)) round(mean(loraPackets)) round(max(loraPackets)) ])
yticks(1:1:3);
legend(a1, "Packet loss");
hold off
shg

