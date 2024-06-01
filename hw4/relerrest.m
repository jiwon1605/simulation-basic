a = input('Enter a:');
b = input('Enter b:');
clc
fprintf('a = %5.3f b  = %5.3f\n\n',a,b)
disp('n           Rel_err(inner)    Rel_err(outer)')
disp('______________________________')

for n = logspace(1,4,4)
    Inner = P_inner(a,b,n);
    Outer = P_outer(a,b,n);
    Ave = (Inner+Outer)/2; %그대로
    Rel_err_O = abs(2*Ave -Inner)/((2*Ave+Inner)/2);
    Rel_err_I = abs(2*Ave - Outer)/((2*Ave+Outer)/2);
    fprintf('%6.2e     %10.6e     %10.6e\n',n, Rel_err_I ,Rel_err_O )
end