% JEPH MARI M. DALIGD BS-ECE III
% x(n) = (0.8)^n u(n − 2)
b = [0 0 0.64]

b =

         0         0    0.6400

 a = [1 -0.8]

a =

    1.0000   -0.8000

 [delta,n] = impseq(0,0,10)

delta =

  1×11 logical array

   1   0   0   0   0   0   0   0   0   0   0


n =

     0     1     2     3     4     5     6     7     8     9    10

xb1 = filter(b,a,delta)

xb1 =

         0         0    0.6400    0.5120    0.4096    0.3277    0.2621    0.2097    0.1678    0.1342    0.1074

[u,n] = stepseq(2,0,10)

u =

  1×11 logical array

   0   0   1   1   1   1   1   1   1   1   1


n =

     0     1     2     3     4     5     6     7     8     9    10

 xb2 = ((0.8).^n).*u

xb2 =

         0         0    0.6400    0.5120    0.4096    0.3277    0.2621    0.2097    0.1678    0.1342    0.1074

error = max(abs(xb1-xb2))

error =

   1.1102e-16

