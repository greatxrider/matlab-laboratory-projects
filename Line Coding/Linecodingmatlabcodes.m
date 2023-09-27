% Jeph Mari M. Daligdig BS ECE III
% ECE 106.1 Laboratory Line Coding

x=[1 0 1 1 0 1 1 1 0]
nx=size(x,2)
sign=1
i=1
while i<nx+1
    t = i:0.001:i+1-0.001
    if x(i)==1
        unipolar_code=square(t*2*pi,100)
        polar_code=square(t*2*pi,100)
        bipolar_code=sign*square(t*2*pi,100)
        sign=sign*-1
        manchester_code=-square(t*2*pi,50)
    else
        unipolar_code=0
        polar_code=-square(t*2*pi,100)
        bipolar_code=0
        manchester_code=square(t*2*pi,50)
    end
    subplot(4,1,1)
    plot(t,unipolar_code)
    ylabel('unipolar code')
    hold on
    grid on
    axis([1 10 -2 2])
    subplot(4,1,2)
    plot(t,polar_code);
    ylabel('polar code')
    hold on
    grid on
    axis([1 10 -2 2])
    subplot(4,1,3)
    plot(t,bipolar_code)
    ylabel('bipolar code')
    hold on
    grid on
    axis([1 10 -2 2])
    subplot(4,1,4)
    plot(t,manchester_code)
    ylabel('manchester code')
    hold on
    grid on
    axis([1 10 -2 2])
    i=i+1
end
