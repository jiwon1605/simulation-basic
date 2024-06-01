x = linspace(-100,100,1000);
N = 10000;
L = -4;
R = 4;
hits = 0;

for i = 1:N
    x = rand*(R-L)+L;
    y = rand;
    f = (1/sqrt(2*pi))*exp(-x.^2/2);
    if y<=f
        hits = hits+1;
    end
end
P = (hits / N)*(R-L)