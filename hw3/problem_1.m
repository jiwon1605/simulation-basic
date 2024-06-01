a = input("Enter a: "); %a를 입력 받음
b = input("Enter b: "); %a를 입력 받음
n = 3; %n을 3으로 초기화

while(abs(P_inner(a,b,n)-P_inner(a,b,n+1))>=0.001)
    n = n + 1;
end %두 수의 차가 0.001보다 작을때 까지 n 1씩 증가

disp(n) %n 출력
