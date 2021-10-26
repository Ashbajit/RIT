% Plot Power - angle characteristics of salient pole machine

% Q. A non- salient pole synchronous machine has the following parameters,
% zero armature resistance, synchronous reactance, of 0.e p.u. , terminal
% voltage of 1 p.u. , power factor of 0.8 and power of 0.5 p.u.. Write a
% program to obtain the power angle characteristics of machine.

clc;
close all;

%Initial Parameter values

Ra = 0; %Terminal Resistance
Xs = 0.3; %Synchronous Reactance
Vt = 1; %Terminal Voltage
Pf = 0.8; %Power Factor
P = 0.5; %Power

% Calculations

delta = 0:1:180;
del_rad = delta .* pi / 180; %conversion to radians

phi = acos(Pf); %From power factor

I = P / (Vt .* Pf);
Ia = (I.*Pf)-((I.*sin(phi))*1i);
Z = complex(Ra, Xs);
E = Vt + (Ia .* Z);

%Plot

Pm = (abs(E) .* abs(Vt)) / (Xs);
P_t = Pm .* sin(del_rad);
plot(delta, P_t);
xlabel('Delta(degrees)');
ylabel('Power(pu)');
title('Power angle characteristics of salient pole machine');
