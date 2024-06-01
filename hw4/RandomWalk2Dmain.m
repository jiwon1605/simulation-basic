clc
disp('  n��        ��� �湮 Ƚ��')
disp('---------------------------')
Trials = 10000; % �� 1000�� ���� �ݺ� 

for n = 5:5:20  % n���� 5���� 5�� ���� 
    count = 0;
    for k=1:Trials
        count = count+RandomWalk2D(n);
        
    end
    ave = count/Trials; % ��ü ���迡�� �κ��� ��� �̵� Ƚ�� 
    fprintf(' %3d         %8.3f\n',n,ave)
end
fprintf('\n\n(Results based on %d trials)\n',Trials)