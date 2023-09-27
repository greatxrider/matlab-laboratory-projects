% ECE112.1 Laboratory
% BS ECE IV - January 21, 2022
% JEPH MARI DALIGDIG & DENNIS GEORGE YLAYA
% PROBLEM 4-22 c SOLUTION
clear all
m=20.5 %kg
M=60 %kg
K=100000 %N/m
Om=157 %rad/s
B=60 %N-m/s
e=0.15 %m
G=tf([m*e*Om^2],[M B K])
t=0:0.01:1;
u=1*sin(Om*t);
lsim(G,u,t)
xlabel( 'Time(sec)');
ylabel('Amplitude');