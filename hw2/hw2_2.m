delta = input('enter delta: '); %양의 임계치 (delta)를 입력 받음
n = 3; %최초의 n = 3, 점이 최소 3개여야 내접 다각형 생성 가능하니까
A_n=n/2*sin(2*pi/n); %내접 다각형의 넓이
B_n=n*tan(pi/n); %외접 다각형의 넓이
error=B_n-A_n; %error
A_n1 =(n+1)/2*sin(2*pi/(n+1)); %n+1 해준 A_n의 값을 A_n1에 대입
B_n1=(n+1)*tan(pi/(n+1)); %n+1 해준 B_n의 값을 B_n1에 대입

%abs(A_n1 - A_n) >= delta || abs(B_n1 - B_n) >= delta일때까지 반복
while abs(A_n1 - A_n) >= delta || abs(B_n1 - B_n) >= delta
    n=n+1; %n의 개수 증가
    A_n=n/2*sin(2*pi/n); %n의 개수가 증가 되었으니 재정의
    B_n=n*tan(pi/n);
    A_n1 =(n+1)/2*sin(2*pi/(n+1));
    B_n1=(n+1)*tan(pi/(n+1));
    error=B_n-A_n;
end
nstar = n;

fprintf('*n = %20.15f\n', nstar); %nstar 출력
fprintf('pn = %20.15f\n', (A_n+B_n)/2) %pn 출력