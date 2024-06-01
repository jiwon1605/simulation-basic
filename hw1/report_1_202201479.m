% 범위[L,R] 입력받기
L = input('Enter L:');
R = input('Enter R: ');

% cos(L), cos(R)을 순서대로 출력
disp(cos(L));
disp(cos(R));

% 최댓값이 1이 아닌 cos(L)인 경우(아래의 모든 L과 R은 모두 절대값으로 바꾸어 취급한다.)
% 1.L을 2*pi로 나눈 몫은 R을 2*pi로 나눈 몫보다 항상 작다.
% 2.L은 모두 2*pi로 나누었을 때 몫이 0이면 안된다. (범위에 2*pi를 포함하면 최댓값이 1이 되기 때문)
% 3.범위의 간격이 2*pi혹은 2 이상이 되어버리면 최댓값이 1이 되는 부분을 포함해버린다. 고로, abs(R-L)은 2 미만, 2*pi 이하여야만 한다.
if mod(abs(L), 2*pi) <= mod(abs(R), 2*pi) && (mod(abs(L), 2*pi) ~= 0) && abs(R - L) < 2*pi && abs(R - L) < 2
    fprintf("Maximum = %g\n", cos(L));

% 최댓값이 1이 아닌 cos(R)인 경우(아래의 모든 L과 R은 모두 절대값으로 바꾸어 취급한다.)
% 1.R을 2*pi로 나눈 몫은 L을 2*pi로 나눈 몫보다 항상 작다.
% 2.R은 모두 2*pi로 나누었을 때 몫이 0이면 안된다. (범위에 2*pi를 포함하면 최댓값이 1이 되기 때문)
% 3.범위의 간격이 2*pi혹은 2 이상이 되어버리면 최댓값이 1이 되는 부분을 포함해버린다. 고로, abs(R-L)은 2 미만, 2*pi 미만이여야만 한다.
elseif mod(abs(L), 2*pi) >= mod(abs(R), 2*pi) && (mod(abs(R), 2*pi) ~= 0) && abs(R - L) < 2*pi && abs(R - L) < 2
    fprintf("Maximum = %g\n", cos(R));
    
% 최댓값이 무조건 1이 되어버리는 경우
else
    fprintf("Maximum = 1\n");

end

