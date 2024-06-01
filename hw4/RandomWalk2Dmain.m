clc
disp('  n값        평균 방문 횟수')
disp('---------------------------')
Trials = 10000; % 총 1000번 실험 반복 

for n = 5:5:20  % n값을 5부터 5씩 증가 
    count = 0;
    for k=1:Trials
        count = count+RandomWalk2D(n);
        
    end
    ave = count/Trials; % 전체 실험에서 로봇이 평균 이동 횟수 
    fprintf(' %3d         %8.3f\n',n,ave)
end
fprintf('\n\n(Results based on %d trials)\n',Trials)