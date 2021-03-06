clc
clear
close all

data1 = dlmread('C2_D1.txt','',1,0);

Vy = data1(:,1);
Vx = data1(:,2);

figure();
plot(Vy,Vx,"-k"); hold on;
plot(Vy,Vy,"--k");
grid on;
title("Input Voltage / Output Voltage");
xlabel("Input Voltage(V)");
ylabel("Output Voltage(V)");

data2 = dlmread('C2_D2.txt','',1,0);

freq = data2(:,1);
dB = data2(:,2);

figure();
semilogx(freq,dB,"-k");
grid on;
title("Frequency Input Voltage / Output Voltage");
xlabel("Frequency (Hz)");
ylabel("Gain (dB)");
axis([0 5*10e9 -25 5]);