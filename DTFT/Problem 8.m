% JEPH MARI M. DALIGDIG BS-ECE III
% x(n) = [(0.5)n + (−0.8)n]u(n)
b = [ 2 0.3]

b =

    2.0000    0.3000

a = [1 0.3 -0.4]

a =

    1.0000    0.3000   -0.4000

 [delta,n] = impseq(0,0,7)

delta =

  1×8 logical array

   1   0   0   0   0   0   0   0


n =

     0     1     2     3     4     5     6     7

xb1 = filter(b,a,delta)

xb1 =

    2.0000   -0.3000    0.8900   -0.3870    0.4721   -0.2964    0.2778   -0.2019

[u,n] = stepseq(0,0,7)

u =

  1×8 logical array

   1   1   1   1   1   1   1   1


n =

     0     1     2     3     4     5     6     7

 xb2 = (((0.5).^n).*u)+(((-0.8).^n).*u)

xb2 =

    2.0000   -0.3000    0.8900   -0.3870    0.4721   -0.2964    0.2778   -0.2019

error = max(abs(xb1-xb2))

error =

   1.1102e-16

