% pi �ٻ�ȭ 
N1=0;
n=input('���� n �Է�:');
for k=1:n
    % matlab�� �ٴ� �Լ�: floor
    m=floor(sqrt(n^2-k^2));
    N1=N1+m;
end
rho_n=4*N1/n^2;
err=abs(pi-rho_n); % abs :���밪 
fprintf('rho_n=%12.8f\n', rho_n);
fprintf('error=%12.8f\n', err);
