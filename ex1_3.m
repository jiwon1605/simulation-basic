% A: 구의 표면적
% r: 구의 반지름
% delta_r: 표면적 증가분 
r=input('Enter the radius (kilometers):');
delta_r=input('Enter increase (millimeteres):');

fprintf('Sphere radius = %12.6f kilometeres\n', r);
fprintf('Radius increase = %12.6f milimeters\n\n', delta_r);

dr=delta_r/10^6;  % milimeter를 kilometer로 표현  

% original surface area
OSA=4*pi*r^2*10^6;
fprintf('\n original surface area is %15.6f square meters\n', OSA);

% 수식 1: 제곱 미터 형태로 변형 
delta_A1=(4*pi*(r+dr)^2-4*pi*r^2)*10^6;
fprintf('\n Method 1: %15.6f square meters\n', delta_A1)
% 수식 2: 제곱 미터 형태로 변형 
delta_A2=(4*pi*(2*r+dr)*dr)*10^6;
fprintf('\n Method 2: %15.6f square meters\n', delta_A2)
% 수식 3: 제곱 미터 형태로 변형 
delta_A3=(8*pi*r*dr)*10^6;
fprintf('\n Method 3: %15.6f square meters\n', delta_A3)
