function [a,tau] = FundamentalFrecuencyFinder(in,N)

R = zeros(N,1);

for t = 1:N
    
    q = 0;

    for n = 1:N
        q = q + (in(n) * in(n - t));

    end
    
    R(t) = q;

    
end

[a,tau] = min(R(:));

end