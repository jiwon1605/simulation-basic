n = 4;
P = rantrans(n);
x = 1000000*ones(4,1);
% Simulate 5 time steps and display...

disp(' x(1) x(2) x(3) x(4) ')
disp('--------------------------------------------')
disp(sprintf(' %8.0f ',x))

y = Transition(P,x);
t = 0;
while ~isequal(int64(x),int64(y))
    x = y;
    y = Transition(P,x);
    disp(sprintf(' %8.0f ',y))
    t = t+ 1;
end
disp("steady state: "+t+"years")


