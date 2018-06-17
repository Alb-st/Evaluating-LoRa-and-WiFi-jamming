
clc
clear
format long
%jammer = 0:0.1:1.4;
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
%ping14 = readtable("wifidata/newwifi/ping14");
%ping15 = readtable("wifidata/newwifi/ping15");
%ping16 = readtable("wifidata/newwifi/ping16");
%ping17 = readtable("wifidata/newwifi/ping17");
%ping18 = readtable("wifidata/newwifi/ping18");
%ping19 = readtable("wifidata/newwifi/ping19");
%ping20 = readtable("wifidata/newwifi/ping20");

pingMaxRtt = zeros(1,fileCount);
pingMinRtt = zeros(1,fileCount);
pingAvgRtt = zeros(1,fileCount);

pingAvgRtt(1) = mean(table2array(ping00(:,13)));
pingAvgRtt(2) = mean(table2array(ping01(:,13)));
pingAvgRtt(3) = mean(table2array(ping02(:,13)));
pingAvgRtt(4) = mean(table2array(ping03(:,13)));
pingAvgRtt(5) = mean(table2array(ping04(:,13)));
pingAvgRtt(6) = mean(table2array(ping05(:,13)));
pingAvgRtt(7) = mean(table2array(ping06(:,13)));
pingAvgRtt(8) = mean(table2array(ping07(:,13)));
pingAvgRtt(9) = mean(table2array(ping08(:,13)));
pingAvgRtt(10) = mean(table2array(ping09(:,13)));
pingAvgRtt(11) = mean(table2array(ping10(:,13)));
pingAvgRtt(12) = mean(table2array(ping11(:,13)));
pingAvgRtt(13) = mean(table2array(ping12(:,13)));
%pingAvgRtt(14) = mean(table2array(ping13(:,13)));
%pingAvgRtt(15) = mean(table2array(ping14(:,13)));
%pingAvgRtt(16) = mean(table2array(ping15(:,13)));
%pingAvgRtt(17) = mean(table2array(ping16(:,13)));
%pingAvgRtt(18) = mean(table2array(ping17(:,13)));
%pingAvgRtt(19) = mean(table2array(ping18(:,13)));
%pingAvgRtt(20) = mean(table2array(ping19(:,13)));
%pingAvgRtt(21) = mean(table2array(ping20(:,13)));

pingMinRtt(1) = min(table2array(ping00(:,13)));
pingMinRtt(2) = min(table2array(ping01(:,13)));
pingMinRtt(3) = min(table2array(ping02(:,13)));
pingMinRtt(4) = min(table2array(ping03(:,13)));
pingMinRtt(5) = min(table2array(ping04(:,13)));
pingMinRtt(6) = min(table2array(ping05(:,13)));
pingMinRtt(7) = min(table2array(ping06(:,13)));
pingMinRtt(8) = min(table2array(ping07(:,13)));
pingMinRtt(9) = min(table2array(ping08(:,13)));
pingMinRtt(10) = min(table2array(ping09(:,13)));
pingMinRtt(11) = min(table2array(ping10(:,13)));
pingMinRtt(12) = min(table2array(ping11(:,13)));
pingMinRtt(13) = min(table2array(ping12(:,13)));
%pingMinRtt(14) = min(table2array(ping13(:,13)));
%pingMinRtt(15) = min(table2array(ping14(:,13)));
%pingMinRtt(16) = min(table2array(ping15(:,13)));
%pingMinRtt(17) = min(table2array(ping16(:,13)));
%pingMinRtt(18) = min(table2array(ping17(:,13)));
%pingMinRtt(19) = min(table2array(ping18(:,13)));
%pingMinRtt(20) = min(table2array(ping19(:,13)));
%pingMinRtt(21) = min(table2array(ping20(:,13)));

pingMaxRtt(1) = max(table2array(ping00(:,13)));
pingMaxRtt(2) = max(table2array(ping01(:,13)));
pingMaxRtt(3) = max(table2array(ping02(:,13)));
pingMaxRtt(4) = max(table2array(ping03(:,13)));
pingMaxRtt(5) = max(table2array(ping04(:,13)));
pingMaxRtt(6) = max(table2array(ping05(:,13)));
pingMaxRtt(7) = max(table2array(ping06(:,13)));
pingMaxRtt(8) = max(table2array(ping07(:,13)));
pingMaxRtt(9) = max(table2array(ping08(:,13)));
pingMaxRtt(10) = max(table2array(ping09(:,13)));
pingMaxRtt(11) = max(table2array(ping10(:,13)));
pingMaxRtt(12) = max(table2array(ping11(:,13)));
pingMaxRtt(13) = max(table2array(ping12(:,13)));
%pingMaxRtt(14) = max(table2array(ping13(:,13)));
%pingMaxRtt(15) = max(table2array(ping14(:,13)));
%pingMaxRtt(16) = max(table2array(ping15(:,13)));
%pingMaxRtt(17) = max(table2array(ping16(:,13)));
%pingMaxRtt(18) = max(table2array(ping17(:,13)));
%pingMaxRtt(19) = max(table2array(ping18(:,13)));
%pingMaxRtt(20) = max(table2array(ping19(:,13)));
%pingMaxRtt(21) = max(table2array(ping20(:,13)));

a1 = plot(jammer, pingMaxRtt, 'r'); p1 = "Maximum";
hold on
a2 = plot(jammer, pingAvgRtt, 'b'); p2 = "Average";
hold on
a3 = plot(jammer, pingMinRtt, 'g'); p3 = "Minimum";

%title("802.11 wireless RTT plotted against jamming noise")
ylabel("Round trip time (ms)");
xlabel("Jammer noise (dBm)");
legend([a1, a2, a3], [p1, p2, p3]);
hold off
shg