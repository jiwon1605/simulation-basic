clear;
close all;
x=linspace(0, 6, 13);
y=linspace(0, 4, 9);
% x, y와 그 x, y 위치에서의 온도
[x,y]=meshgrid(x, y); %meshgrid 사용
Tvals = T_plate(x,y); %Tvlas에 fOnGrid대신 T_plate 직접 대입
contour(x, y, Tvals); % 등고선 그리기
colorbar