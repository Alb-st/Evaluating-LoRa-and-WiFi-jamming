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

loraAvgRssi(1) = mean(table2array(lora00(:,9)));
loraAvgRssi(2) = mean(table2array(lora01(:,9)));
loraAvgRssi(3) = mean(table2array(lora02(:,9)));
loraAvgRssi(4) = mean(table2array(lora03(:,9)));
loraAvgRssi(5) = mean(table2array(lora04(:,9)));
loraAvgRssi(6) = mean(table2array(lora05(:,9)));
loraAvgRssi(7) = mean(table2array(lora06(:,9)));
loraAvgRssi(8) = mean(table2array(lora07(:,9)));
loraAvgRssi(9) = mean(table2array(lora08(:,9)));
loraAvgRssi(10) = mean(table2array(lora09(:,9)));
loraAvgRssi(11) = mean(table2array(lora10(:,9)));
loraAvgRssi(12) = mean(table2array(lora11(:,9)));
loraAvgRssi(13) = mean(table2array(lora12(:,9)));
loraAvgRssi(14) = mean(table2array(lora13(:,9)));

loraMaxRssi(1) = max(table2array(lora00(:,9)));
loraMaxRssi(2) = max(table2array(lora01(:,9)));
loraMaxRssi(3) = max(table2array(lora02(:,9)));
loraMaxRssi(4) = max(table2array(lora03(:,9)));
loraMaxRssi(5) = max(table2array(lora04(:,9)));
loraMaxRssi(6) = max(table2array(lora05(:,9)));
loraMaxRssi(7) = max(table2array(lora06(:,9)));
loraMaxRssi(8) = max(table2array(lora07(:,9)));
loraMaxRssi(9) = max(table2array(lora08(:,9)));
loraMaxRssi(10) = max(table2array(lora09(:,9)));
loraMaxRssi(11) = max(table2array(lora10(:,9)));
loraMaxRssi(12) = max(table2array(lora11(:,9)));
loraMaxRssi(13) = max(table2array(lora12(:,9)));
loraMaxRssi(14) = max(table2array(lora13(:,9)));

loraMinRssi(1) = min(table2array(lora00(:,9)));
loraMinRssi(2) = min(table2array(lora01(:,9)));
loraMinRssi(3) = min(table2array(lora02(:,9)));
loraMinRssi(4) = min(table2array(lora03(:,9)));
loraMinRssi(5) = min(table2array(lora04(:,9)));
loraMinRssi(6) = min(table2array(lora05(:,9)));
loraMinRssi(7) = min(table2array(lora06(:,9)));
loraMinRssi(8) = min(table2array(lora07(:,9)));
loraMinRssi(9) = min(table2array(lora08(:,9)));
loraMinRssi(10) = min(table2array(lora09(:,9)));
loraMinRssi(11) = min(table2array(lora10(:,9)));
loraMinRssi(12) = min(table2array(lora11(:,9)));
loraMinRssi(13) = min(table2array(lora12(:,9)));
loraMinRssi(14) = min(table2array(lora13(:,9)));


a1 = plot(jammer, loraMaxRssi, 'r'); p1 = "Maximum";
hold on
a2 = plot(jammer, loraAvgRssi, 'b'); p2 = "Average";
hold on
a3 = plot(jammer, loraMinRssi, 'g'); p3 = "Minimum";

%title("LoRa RSSI plotted against jamming noise")
ylabel("RSSI (dBm)");
xlabel("Jammer noise (dBm)");
legend([a1, a2, a3],[p1, p2, p3]);

hold off
shg
