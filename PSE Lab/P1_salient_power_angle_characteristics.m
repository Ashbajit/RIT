% Plot power angle characteristics of salient pole machine
% Q. A salient pole synchronous machine has following parameters. Zero
% armature resistance, direct axis reactance of 1 p.u., quadrature ais
% reactance of 0.6 p.u. , terminal voltage of 1 p.u., unity power factor
% and induced emf of 1.1 p.u. Write a program to obtain power angle
% characteristics of machine.
clc;
clear all;
%Initial parameter values
Ra = 0; %Armature resistance
Xd = 1; %Direct axis reactance
Xq = 0.6; %Quadrature axis reactance
Vt = 1; %Terminal Voltage
Pf = 1; %Power factor
E = 1.1; %Induced EMF
delta = 0:1:180; %delta varying from 0 to 180 degrees
del_rad = delta .* pi / 180; %converting to degrees

%Power calculations
Pm1 = (abs(E) .* abs(Vt)) / Xd;
y1 = Pm1 .* sin(del_rad); % power
Pm2 = ((Vt.^2) .* (Xd - Xq)) / (2 .* Xd .* Xq);
y2 = Pm2 .* sin(2 .* del_rad); % power
P = y1 + y2; %Total power

%Plot

plot(delta, P, 'r')
hold on
plot(delta, y1, 'b')
hold on
plot(delta, y2, 'm')
xlabel('Delta(degrees)-->');
ylabel('Power(pu)-->');
title('Power-angle characteristics of salient pole machine');
legend('P', 'Pm1sin(delta)', 'Pm2sin(2delta)');
