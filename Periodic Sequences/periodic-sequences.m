% Jeph Mari M. Daligdig BS-ECE III
% Problem 1: x1(n) = {...,-2,-1,0,1,2,-2,-1,0,1,2...} periodic. 5 periods

n1 = [-12:12]
n1 =
   -12   -11   -10    -9    -8    -7    -6    -5    -4    -3    -2    -1     0     1     2     3     4     5     6     7     8     9    10    11    12
x1 = [-2,-1,0,1,2]
x1 =
    -2    -1     0     1     2
x1 = x1'*ones(1,5)
x1 =
    -2    -2    -2    -2    -2
    -1    -1    -1    -1    -1
     0     0     0     0     0
     1     1     1     1     1
     2     2     2     2     2
x1 = (x1(:))'
x1 =
    -2    -1     0     1     2    -2    -1     0     1     2    -2    -1     0     1     2    -2    -1     0     1     2    -2    -1     0     1     2
Hf_1 = figure
Hf_1 = 
  Figure (1) with properties:

      Number: 1
        Name: ''
       Color: [0.9400 0.9400 0.9400]
    Position: [403 246 560 420]
       Units: 'pixels'

  Show all properties
set(Hf_1,'NumberTitle','off','Name','Problem 1')
Hs = stem(n1,x1,'filled')
Hs = 
  Stem with properties:

              Color: [0 0.4470 0.7410]
          LineStyle: '-'
          LineWidth: 0.5000
             Marker: 'o'
         MarkerSize: 6
    MarkerFaceColor: 'auto'
          BaseValue: 0
              XData: [-12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12]
              YData: [-2 -1 0 1 2 -2 -1 0 1 2 -2 -1 0 1 2 -2 -1 0 1 2 -2 -1 0 1 2]

  Show all properties
set(Hs,'markersize',2)
axis([min(n1)-1,max(n1)+1,min(x1)-1,max(x1)+1])
xlabel('n','FontSize',15)
ylabel('x_1(n)','FontSize',15)
title('Sequence x_1(n)','FontSize',15)
ntick = [n1(1):2:n1(end)]
ntick =
   -12   -10    -8    -6    -4    -2     0     2     4     6     8    10    12
ytick = [min(x1) - 1:max(x1) + 1]
ytick =
    -3    -2    -1     0     1     2     3
set(gca,'XTickMode','manual','XTick',ntick)
set(gca,'YTickMode','manual','YTick',ytick)