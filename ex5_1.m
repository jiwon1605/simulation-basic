% finding the best in a set
% initiate bestsofar
M=input('Enter M: ');
pbest=1;  % 현재까지 찾은 best p 초기화
qbest=1;  % 현재까지 찾은 best q 초기화
err=abs(pbest/qbest-pi); % 현재 오차
% loop over set 
tic
for p=1:M
    for q=1:M
        % if current is better than bestsofar
        if abs(p/q - pi) < err    % |p/q- pi|를 최소화 시키는 p, q를 찾음
            % bestsofar <- current 
            pbest=p;                 % 현재까지 best p, q 조합 업데이트
            qbest=q;
            err=abs(p/q-pi);     % 현재까지 best 오차 업데이트
        end
    end
end
toc
% 출력 
mypi=pbest/qbest
pbest
qbest
err

