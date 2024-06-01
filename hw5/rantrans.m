function P = rantrans(n)
    P = rand(n,n);
    P = P./sum(P,1);
end
