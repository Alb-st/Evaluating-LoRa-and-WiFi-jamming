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

loraAvgRtt(1) = mean(table2array(lora00(:,11)));
loraAvgRtt(2) = mean(table2array(lora01(:,11)));
loraAvgRtt(3) = mean(table2array(lora02(:,11)));
loraAvgRtt(4) = mean(table2array(lora03(:,11)));
loraAvgRtt(5) = mean(table2array(lora04(:,11)));
loraAvgRtt(6) = mean(table2array(lora05(:,11)));
loraAvgRtt(7) = mean(table2array(lora06(:,11)));
loraAvgRtt(8) = mean(table2array(lora07(:,11)));
loraAvgRtt(9) = mean(table2array(lora08(:,11)));
loraAvgRtt(10) = mean(table2array(lora09(:,11)));
loraAvgRtt(11) = mean(table2array(lora10(:,11)));
loraAvgRtt(12) = mean(table2array(lora11(:,11)));
loraAvgRtt(13) = mean(table2array(lora12(:,11)));
loraAvgRtt(14) = mean(table2array(lora13(:,11)));

loraMaxRtt(1) = max(table2array(lora00(:,11)));
loraMaxRtt(2) = max(table2array(lora01(:,11)));
loraMaxRtt(3) = max(table2array(lora02(:,11)));
loraMaxRtt(4) = max(table2array(lora03(:,11)));
loraMaxRtt(5) = max(table2array(lora04(:,11)));
loraMaxRtt(6) = max(table2array(lora05(:,11)));
loraMaxRtt(7) = max(table2array(lora06(:,11)));
loraMaxRtt(8) = max(table2array(lora07(:,11)));
loraMaxRtt(9) = max(table2array(lora08(:,11)));
loraMaxRtt(10) = max(table2array(lora09(:,11)));
loraMaxRtt(11) = max(table2array(lora10(:,11)));
loraMaxRtt(12) = max(table2array(lora11(:,11)));
loraMaxRtt(13) = max(table2array(lora12(:,11)));
loraMaxRtt(14) = max(table2array(lora13(:,11)));

loraMinRtt(1) = min(table2array(lora00(:,11)));
loraMinRtt(2) = min(table2array(lora01(:,11)));
loraMinRtt(3) = min(table2array(lora02(:,11)));
loraMinRtt(4) = min(table2array(lora03(:,11)));
loraMinRtt(5) = min(table2array(lora04(:,11)));
loraMinRtt(6) = min(table2array(lora05(:,11)));
loraMinRtt(7) = min(table2array(lora06(:,11)));
loraMinRtt(8) = min(table2array(lora07(:,11)));
loraMinRtt(9) = min(table2array(lora08(:,11)));
loraMinRtt(10) = min(table2array(lora09(:,11)));
loraMinRtt(11) = min(table2array(lora10(:,11)));
loraMinRtt(12) = min(table2array(lora11(:,11)));
loraMinRtt(13) = min(table2array(lora12(:,11)));
loraMinRtt(14) = min(table2array(lora13(:,11)));

loraAvgRtt = loraAvgRtt./1000; %from us to ms
loraMaxRtt = loraMaxRtt./1000;
loraMinRtt = loraMinRtt./1000;

a1 = plot(jammer, loraMaxRtt, 'r'); p1 = "Maximum";
hold on
a2 = plot(jammer, loraAvgRtt, 'b'); p2 = "Average";
hold on
a3 = plot(jammer, loraMinRtt, 'g'); p3 = "Minimum";

%title("LoRa RTT plotted against jamming noise")
ylabel("Round trip time (ms)")
xlabel("Jammer noise (dBm)")
%yticks([ round(min(loraMinRtt)) round(mean(loraAvgRtt)) round(max(loraMaxRtt)) ]);
legend([a1, a2, a3],[p1, p2, p3]);

hold off
shg

