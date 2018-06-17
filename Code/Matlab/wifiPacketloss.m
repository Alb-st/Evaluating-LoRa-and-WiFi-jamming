clc
clear
format long
jammer = -65:5:0;

fileCount = 14;

ping00 = readtable("wifidata/newwifi/ping00");
ping01 = readtable("wifidata/newwifi/ping01");
ping02 = readtable("wifidata/newwifi/ping02");
ping03 = readtable("wifidata/newwifi/ping03");
ping04 = readtable("wifidata/newwifi/ping04");
ping05 = readtable("wifidata/newwifi/ping05");
ping06 = readtable("wifidata/newwifi/ping06");
ping07 = readtable("wifidata/newwifi/ping07");
ping08 = readtable("wifidata/newwifi/ping08");
ping09 = readtable("wifidata/newwifi/ping09");
ping10 = readtable("wifidata/newwifi/ping10");
ping11 = readtable("wifidata/newwifi/ping11");
ping12 = readtable("wifidata/newwifi/ping12");
ping13 = readtable("wifidata/newwifi/ping13");

pingPackets = zeros(1,fileCount);
pingMaxRtt = zeros(1,fileCount);
pingMinRtt = zeros(1,fileCount);
pingAvgRtt = zeros(1,fileCount);

pingPackets(1) = size(table2array(ping00(:,13)),1);
pingPackets(2) = size(table2array(ping01(:,13)),1);
pingPackets(3) = size(table2array(ping02(:,13)),1);
pingPackets(4) = size(table2array(ping03(:,13)),1);
pingPackets(5) = size(table2array(ping04(:,13)),1);
pingPackets(6) = size(table2array(ping05(:,13)),1);
pingPackets(7) = size(table2array(ping06(:,13)),1);
pingPackets(8) = size(table2array(ping07(:,13)),1);
pingPackets(9) = size(table2array(ping08(:,13)),1);
pingPackets(10) = size(table2array(ping09(:,13)),1);
pingPackets(11) = size(table2array(ping10(:,13)),1);
pingPackets(12) = size(table2array(ping11(:,13)),1);
pingPackets(13) = size(table2array(ping12(:,13)),1);
%pingPackets(14) = size(table2array(ping13(:,13)),1);

for i=1:length(pingPackets)
    pingPackets(i) = 100-pingPackets(i); 
end

% stdPing = zeros(1, fileCount);
% stdPing(1) = std(table2array(ping00(:,13)));
% stdPing(2) = std(table2array(ping01(:,13)));
% stdPing(3) = std(table2array(ping02(:,13)));
% stdPing(4) = std(table2array(ping03(:,13)));
% stdPing(5) = std(table2array(ping04(:,13)));
% stdPing(6) = std(table2array(ping05(:,13)));
% stdPing(7) = std(table2array(ping06(:,13)));
% stdPing(8) = std(table2array(ping07(:,13)));

a1 = plot(jammer, pingPackets, 'b')
hold on
% plot(jammer, stdPing, 'ro');
%title("802.11 wireless packet loss plotted against jamming noise")
ylabel("Packets lost");
xlabel("Jammer noise (dBm)");
legend(a1, "Packet loss");
hold off
shg



















