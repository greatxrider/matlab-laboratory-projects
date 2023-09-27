 % JEPH MARI M. DALIGD BS-ECE III
%  x(n) = {3, 2, 1 ↑, −2, −3}: Then X(z) = 3z2 + 2z + 1 − 2z−1 + 3z−2, 0 < |z| < ∞
b1 = [0 2 3]

b1 =

     0     2     3

a1 = [1]

a1 =

     1

 [delta,n] = impseq(0,0,4)

delta =

  1×5 logical array

   1   0   0   0   0


n =

     0     1     2     3     4

xb1 = filter(b1,a1,delta)

xb1 =

     0     2     3     0     0

xb1 = fliplr(xb1)

xb1 =

     0     0     3     2     0

n1 = -fliplr(n)

n1 =

    -4    -3    -2    -1     0

b2 = [1 -2 -3]

b2 =

     1    -2    -3

 a2 = [1]

a2 =

     1

 xb2 = filter(b2,a2,delta)

xb2 =

     1    -2    -3     0     0

n2 = n

n2 =

     0     1     2     3     4

[xa1,na1] = sigadd(xb1,n1,xb2,n2)

xa1 =

     0     0     3     2     1    -2    -3     0     0


na1 =

    -4    -3    -2    -1     0     1     2     3     4

xa2 = [0 0 3 2 1 -2 -3 0 0]

xa2 =

     0     0     3     2     1    -2    -3     0     0

error = max(abs(xa1-xa2))

error =

     0

