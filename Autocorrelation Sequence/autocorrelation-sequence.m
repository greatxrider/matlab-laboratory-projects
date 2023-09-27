% Jeph Mari M. Daligdig BS-ECE III
% Problem 3: autocorrelation of sequence x(n) = 0.9 ^ n, 0 <= n <= 20
% using the conv_m function

nx = [0:20]
nx =
     0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20
x = 0.9 .^ nx
x =
  Columns 1 through 14
    1.0000    0.9000    0.8100    0.7290    0.6561    0.5905    0.5314    0.4783    0.4305    0.3874    0.3487    0.3138    0.2824    0.2542
  Columns 15 through 21
    0.2288    0.2059    0.1853    0.1668    0.1501    0.1351    0.1216
[xf,nxf] = sigfold(x,nx)
nx =
     0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20
xf =
  Columns 1 through 14
    0.1216    0.1351    0.1501    0.1668    0.1853    0.2059    0.2288    0.2542    0.2824    0.3138    0.3487    0.3874    0.4305    0.4783
  Columns 15 through 21
    0.5314    0.5905    0.6561    0.7290    0.8100    0.9000    1.0000
nxf =
   -20   -19   -18   -17   -16   -15   -14   -13   -12   -11   -10    -9    -8    -7    -6    -5    -4    -3    -2    -1     0
[rxx,nrxx] = conv_m(x,nx,xf,nxf)
rxx =
  Columns 1 through 14
    0.1216    0.2445    0.3701    0.4999    0.6352    0.7776    0.9286    1.0899    1.2634    1.4508    1.6544    1.8764    2.1192    2.3856
  Columns 15 through 28
    2.6785    3.0011    3.3571    3.7504    4.1854    4.6668    5.2001    4.6668    4.1854    3.7504    3.3571    3.0011    2.6785    2.3856
  Columns 29 through 41
    2.1192    1.8764    1.6544    1.4508    1.2634    1.0899    0.9286    0.7776    0.6352    0.4999    0.3701    0.2445    0.1216
nrxx =
  Columns 1 through 24
   -20   -19   -18   -17   -16   -15   -14   -13   -12   -11   -10    -9    -8    -7    -6    -5    -4    -3    -2    -1     0     1     2     3
  Columns 25 through 41
     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20
Hf_1 = figure
Hf_1 = 
  Figure (2) with properties:

      Number: 2
        Name: ''
       Color: [0.9400 0.9400 0.9400]
    Position: [403 246 560 420]
       Units: 'pixels'

  Show all properties
set(Hf_1,'NumberTitle','off','Name','Problem 3')
Hs = stem(nrxx,rxx)
Hs = 
  Stem with properties:

              Color: [0 0.4470 0.7410]
          LineStyle: '-'
          LineWidth: 0.5000
             Marker: 'o'
         MarkerSize: 6
    MarkerFaceColor: 'none'
          BaseValue: 0
              XData: [1×41 double]
              YData: [1×41 double]

  Show all properties
set(Hs,'markersize',2)
xlabel('n','FontSize',15)
ylabel('r_x_x(n)','FontSize',15)
title('Autocorrelation of x(n)','FontSize',15)
axis([min(nrxx)-1,max(nrxx)+1,min(rxx),max(rxx)+1])
ntick = [nrxx(1):4:nrxx(end)]
ntick =
   -20   -16   -12    -8    -4     0     4     8    12    16    20
set(gca,'XTick',ntick)

