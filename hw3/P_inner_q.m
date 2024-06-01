function P = P_inner_q(a,b,n)
% a and b are the semiaxes of an ellipse E.
% n is a positive integer bigger than 2.
% P is the perimeter of the inner polygon whose
% vertices are on E.

theta = (2*pi/n)/4; %다각형의 1/4에 해당하여야하므로 4로 나눔
innerSum = 0;
% Sum the side lengths...
for k=1:n
    % Coordinates of vertex k...
    xk = a*cos(k*theta);
    yk = b*sin(k*theta);
    % Coordinates of vertex k+1...
    xkp1 = a*cos((k+1)*theta);
    ykp1 = b*sin((k+1)*theta);
    % Add in the distance between them...
    dk = sqrt((xk-xkp1)^2 + (yk-ykp1)^2);
    innerSum = innerSum + dk;
end
P = innerSum*4; %총 둘레의 합이어야하므로 4를 다시 곱해줌