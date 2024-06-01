%적도와 극 반경 입력
r_1 = input('적도 반경을 입력하세요: ');
r_2 = input('극 반경을 입력하세요: ');

%A(r1,r2)와 A의 근사화한 결과 대입 
format long
A = 2*pi*((r_1)^2+((r_2)^2/sin(acos(r_2/r_1))*log(cos(acos(r_2/r_1))/(1-sin(acos(r_2/r_1))))));
format long
A_approximation = 4*pi*(((r_2+r_1)/2)^2);

%A와 A의 근사화 출력
fprintf("회전 타원체의 표면적: %f\n", A);
fprintf("근사화한 표면적: %f\n", A_approximation);