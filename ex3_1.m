% pi 근사화 
N1=0;
n=input('정수 n 입력:');
for k=1:n
    % matlab의 바닥 함수: floor
    m=floor(sqrt(n^2-k^2));
    N1=N1+m;
end
rho_n=4*N1/n^2;
err=abs(pi-rho_n); % abs :절대값 
fprintf('rho_n=%12.8f\n', rho_n);
fprintf('error=%12.8f\n', err);
