% pi 근사화 
N1=0; %uncut tile = N1
n=input('정수 n 입력:'); %n 입력
B = 0; %B = 0

for k=1:n
    % matlab의 바닥 함수: floor
    m=floor(sqrt(n^2-k^2)); %m은 x의 값을 floor함수에 대입한 것, 즉 uncut tile
    B = B + ceil((sqrt(n^2-k^2))-m); %B는 x-m의 값을 ceil 함수에 대입한 것, 즉 잘린 타일이 포함된 타일만을 센것
    N1=N1+m; %N1에 m 증가
end
B = B/2; %B를 2로 나눔, 잘린 타일들이기 때문
B*4
pn=4*(N1+B)/n^2; %파이의 근사값
err=abs(pi-pn); % err은 오차
fprintf('rho_n=%12.8f\n', pn); %파이의 근사값 출력
fprintf('error=%12.8f\n', err); %파이의 오차 출력