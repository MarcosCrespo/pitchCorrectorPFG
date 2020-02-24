function [a,tau] = FundamentalFrecuencyFinder(in,N)

R = zeros(N,1);

for t = 1:N
    
    q = 0;

    for n = 1:N
        q = q + ((in(n) - in(n + t)))^2;

    end
    
    q = q/N;
    
    if q > 0.01
       R(t) = q;
    else 
       R(t) = 10;
    end 
    
    
end

[a,tau] = min(R(:));

end