% ECE112.1 Laboratory
% BS ECE IV - January 21, 2022
% JEPH MARI DALIGDIG & DENNIS GEORGE YLAYA
% PROBLEM 3-6 SOLUTION
syms s
G=[2/(s*(s+2)),10;5/s,1/(s+1)]
H=[1,0;0,1]
A=eye(2)+G*H
B=inv(A)
Clp=simplify(B*G)
