clc
clear
format long
%commandwindow
%filebrowser
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
%ping13 = readtable("wifidata/newwifi/ping13");
%ping14 = readtable("wifidata/newwifi/ping14");
%ping15 = readtable("wifidata/newwifi/ping15");
%ping16 = readtable("wifidata/newwifi/ping16");
%ping17 = readtable("wifidata/newwifi/ping17");
%ping18 = readtable("wifidata/newwifi/ping18");
%ping19 = readtable("wifidata/newwifi/ping19");
%ping20 = readtable("wifidata/newwifi/ping20");

pingAvgRssi = zeros(1,fileCount);
pingMaxRssi = zeros(1,fileCount);
pingMinRssi = zeros(1,fileCount);

pingAvgRssi(1) = mean(table2array(ping00(:,22)));
pingAvgRssi(2) = mean(table2array(ping01(:,22)));
pingAvgRssi(3) = mean(table2array(ping02(:,22)));
pingAvgRssi(4) = mean(table2array(ping03(:,22)));
pingAvgRssi(5) = mean(table2array(ping04(:,22)));
pingAvgRssi(6) = mean(table2array(ping05(:,22)));
pingAvgRssi(7) = mean(table2array(ping06(:,22)));
pingAvgRssi(8) = mean(table2array(ping07(:,22)));
pingAvgRssi(9) = mean(table2array(ping08(:,22)));
pingAvgRssi(10) = mean(table2array(ping09(:,22)));
pingAvgRssi(11) = mean(table2array(ping10(:,22)));
pingAvgRssi(12) = mean(table2array(ping11(:,22)));
pingAvgRssi(13) = mean(table2array(ping12(:,22)));
%pingAvgRssi(14) = mean(table2array(ping13(:,22)));
%pingAvgRssi(15) = mean(table2array(ping14(:,22)));
%pingAvgRssi(16) = mean(table2array(ping15(:,22)));
%pingAvgRssi(17) = mean(table2array(ping16(:,22)));
%pingAvgRssi(18) = mean(table2array(ping17(:,22)));
%pingAvgRssi(19) = mean(table2array(ping18(:,22)));
%pingAvgRssi(20) = mean(table2array(ping19(:,22)));
%pingAvgRssi(21) = mean(table2array(ping20(:,22)));

pingMaxRssi(1) = max(table2array(ping00(:,22)));
pingMaxRssi(2) = max(table2array(ping01(:,22)));
pingMaxRssi(3) = max(table2array(ping02(:,22)));
pingMaxRssi(4) = max(table2array(ping03(:,22)));
pingMaxRssi(5) = max(table2array(ping04(:,22)));
pingMaxRssi(6) = max(table2array(ping05(:,22)));
pingMaxRssi(7) = max(table2array(ping06(:,22)));
pingMaxRssi(8) = max(table2array(ping07(:,22)));
pingMaxRssi(9) = max(table2array(ping08(:,22)));
pingMaxRssi(10) = max(table2array(ping09(:,22)));
pingMaxRssi(11) = max(table2array(ping10(:,22)));
pingMaxRssi(12) = max(table2array(ping11(:,22)));
pingMaxRssi(13) = max(table2array(ping12(:,22)));
%pingMaxRssi(14) = max(table2array(ping13(:,22)));
%pingMaxRssi(15) = max(table2array(ping14(:,22)));
%pingMaxRssi(16) = max(table2array(ping15(:,22)));
%pingMaxRssi(17) = max(table2array(ping16(:,22)));
%pingMaxRssi(18) = max(table2array(ping17(:,22)));
%pingMaxRssi(19) = max(table2array(ping18(:,22)));
%pingMaxRssi(20) = max(table2array(ping19(:,22)));
%pingMaxRssi(21) = max(table2array(ping20(:,22)));%

pingMinRssi(1) = min(table2array(ping00(:,22)));
pingMinRssi(2) = min(table2array(ping01(:,22)));
pingMinRssi(3) = min(table2array(ping02(:,22)));
pingMinRssi(4) = min(table2array(ping03(:,22)));
pingMinRssi(5) = min(table2array(ping04(:,22)));
pingMinRssi(6) = min(table2array(ping05(:,22)));
pingMinRssi(7) = min(table2array(ping06(:,22)));
pingMinRssi(8) = min(table2array(ping07(:,22)));
pingMinRssi(9) = min(table2array(ping08(:,22)));
pingMinRssi(10) = min(table2array(ping09(:,22)));
pingMinRssi(11) = min(table2array(ping10(:,22)));
pingMinRssi(12) = min(table2array(ping11(:,22)));
pingMinRssi(13) = min(table2array(ping12(:,22)));
%pingMinRssi(14) = min(table2array(ping13(:,22)));
%pingMinRssi(15) = min(table2array(ping14(:,22)));
%pingMinRssi(16) = min(table2array(ping15(:,22)));
%pingMinRssi(17) = min(table2array(ping16(:,22)));
%pingMinRssi(18) = min(table2array(ping17(:,22)));
%pingMinRssi(19) = min(table2array(ping18(:,22)));
%pingMinRssi(20) = min(table2array(ping19(:,22)));
%pingMinRssi(21) = min(table2array(ping20(:,22)));


a1 = plot(jammer, pingMaxRssi, 'r'); p1 = "Maximum";
hold on
a2 = plot(jammer, pingAvgRssi, 'b'); p2 = "Average";
hold on
a3 = plot(jammer, pingMinRssi, 'g'); p3 = "Minimum";

%title("802.11 wireless RSSI plotted against jamming noise")
ylabel("RSSI (dBm)");
xlabel("Jammer noise (dBm)");
legend([a1, a2, a3], [p1, p2, p3]);
hold off
shg
