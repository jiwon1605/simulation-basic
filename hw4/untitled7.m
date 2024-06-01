f = (1/sqrt(2*pi))*exp(-x.^2/2);
N = 10000;
randn('seed', 0);
L = 1;
R = 5;
hits = 0;
nsquare = 0;
sigma = sqrt(1/2);%정규분포의 표준편차
for i = 1:N
    x = randn*sigma;
    y = randn*sigma;
    if x>=L && x<=R && y>=0 && y<=1
        nsquare = nsquare+1;
        if y<=f && abs(x)<=100
            hits = hits+1;
        end
    end
end
P = (hits / N)*(R-L)