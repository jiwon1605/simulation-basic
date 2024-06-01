x = linspace(-100,100,1000);
f = (1/sqrt(2*pi))*exp(-x.^2/2);
xlim([-100,100])
plot(x,f)