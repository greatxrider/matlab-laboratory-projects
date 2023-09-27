% Jeph Mari M. Daligdig BS-ECE III
% Part 3b: crosscorrelation of sequence x(n) = 0.9 ^ n, 0 <= n <= 20
% with sequence y = 0.8.^n, -20 <=n <= 0 using the conv_m function
nx = [0:20]
nx =
     0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20
x = 0.9 .^ nx
x =
  Columns 1 through 14
    1.0000    0.9000    0.8100    0.7290    0.6561    0.5905    0.5314    0.4783    0.4305    0.3874    0.3487    0.3138    0.2824    0.2542
  Columns 15 through 21
    0.2288    0.2059    0.1853    0.1668    0.1501    0.1351    0.1216
ny = [-20:0]
ny =
   -20   -19   -18   -17   -16   -15   -14   -13   -12   -11   -10    -9    -8    -7    -6    -5    -4    -3    -2    -1     0
y = 0.8 .^ ny
y =
  Columns 1 through 14
   86.7362   69.3889   55.5112   44.4089   35.5271   28.4217   22.7374   18.1899   14.5519   11.6415    9.3132    7.4506    5.9605    4.7684
  Columns 15 through 21
    3.8147    3.0518    2.4414    1.9531    1.5625    1.2500    1.0000
[yf,nyf] = sigfold(y,ny)
nx =
     0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20
yf =
  Columns 1 through 14
    1.0000    1.2500    1.5625    1.9531    2.4414    3.0518    3.8147    4.7684    5.9605    7.4506    9.3132   11.6415   14.5519   18.1899
  Columns 15 through 21
   22.7374   28.4217   35.5271   44.4089   55.5112   69.3889   86.7362
nyf =
     0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20
[rxy,nrxy] = conv_m(x,nx,yf,nyf)
rxy =
  Columns 1 through 14
    1.0000    2.1500    3.4975    5.1009    7.0322    9.3807   12.2574   15.8000   20.1805   25.6130   32.3649   40.7700   51.2449   64.3103
  Columns 15 through 28
   80.6166  100.9767  126.4061  158.1744  197.8682  247.4703  309.4594  278.4041  250.4269  225.2132  202.4782  181.9632  163.4330  146.6723
  Columns 29 through 41
  131.4833  117.6828  105.0993   93.5703   82.9395   73.0533   63.7576   54.8940   46.2947   37.7779   29.1409   20.1528   10.5451
nrxy =
  Columns 1 through 24
     0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19    20    21    22    23
  Columns 25 through 41
    24    25    26    27    28    29    30    31    32    33    34    35    36    37    38    39    40
Hf_1 = figure
Hf_1 = 
  Figure (1) with properties:

      Number: 1
        Name: ''
       Color: [0.9400 0.9400 0.9400]
    Position: [403 246 560 420]
       Units: 'pixels'

  Show all properties
set(Hf_1,'NumberTitle','off','Name','Problem 3b')
Hs = stem(nrxy,rxy)
Hs = 
  Stem with properties:

              Color: [0 0.4470 0.7410]
          LineStyle: '-'
          LineWidth: 0.5000
             Marker: 'o'
         MarkerSize: 6
    MarkerFaceColor: 'none'
          BaseValue: 0
              XData: [0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40]
              YData: [1×41 double]

  Show all properties
set(Hs,'markersize',2)
xlabel('n','FontSize',15)
ylabel('r_x_y(n)','FontSize',15)
title('Crosscorrelation of x(n) and y(n)','FontSize',15)
axis([min(nrxy)-1,max(nrxy)+1,min(rxy)-1,max(rxy)+20])
ytick = [0:50:300 320]
ytick =
     0    50   100   150   200   250   300   320
ntick = [nrxy(1):2:nrxy(end)]
ntick =
     0     2     4     6     8    10    12    14    16    18    20    22    24    26    28    30    32    34    36    38    40
set(gca,'XTick',ntick)
set(gca,'YTick',ytick)
