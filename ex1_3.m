% A: ���� ǥ����
% r: ���� ������
% delta_r: ǥ���� ������ 
r=input('Enter the radius (kilometers):');
delta_r=input('Enter increase (millimeteres):');

fprintf('Sphere radius = %12.6f kilometeres\n', r);
fprintf('Radius increase = %12.6f milimeters\n\n', delta_r);

dr=delta_r/10^6;  % milimeter�� kilometer�� ǥ��  

% original surface area
OSA=4*pi*r^2*10^6;
fprintf('\n original surface area is %15.6f square meters\n', OSA);

% ���� 1: ���� ���� ���·� ���� 
delta_A1=(4*pi*(r+dr)^2-4*pi*r^2)*10^6;
fprintf('\n Method 1: %15.6f square meters\n', delta_A1)
% ���� 2: ���� ���� ���·� ���� 
delta_A2=(4*pi*(2*r+dr)*dr)*10^6;
fprintf('\n Method 2: %15.6f square meters\n', delta_A2)
% ���� 3: ���� ���� ���·� ���� 
delta_A3=(8*pi*r*dr)*10^6;
fprintf('\n Method 3: %15.6f square meters\n', delta_A3)
