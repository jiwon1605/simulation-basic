% finding the best in a set
% initiate bestsofar
M=input('Enter M: ');
pbest=1;  % ������� ã�� best p �ʱ�ȭ
qbest=1;  % ������� ã�� best q �ʱ�ȭ
err=abs(pbest/qbest-pi); % ���� ����
% loop over set 
tic
for p=1:M
    for q=1:M
        % if current is better than bestsofar
        if abs(p/q - pi) < err    % |p/q- pi|�� �ּ�ȭ ��Ű�� p, q�� ã��
            % bestsofar <- current 
            pbest=p;                 % ������� best p, q ���� ������Ʈ
            qbest=q;
            err=abs(p/q-pi);     % ������� best ���� ������Ʈ
        end
    end
end
toc
% ��� 
mypi=pbest/qbest
pbest
qbest
err

