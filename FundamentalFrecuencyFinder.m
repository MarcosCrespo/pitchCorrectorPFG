function [tau] = FundamentalFrecuencyFinder(in,N)

R = zeros(N,1);

for t = 1:N
    
    q = 0;
    p = 0;
    
    for n = 1:N
        q = q + (in(n)*in(n + t));
        p = p + in(n + t)^2;
    end
    
    R(t) = q / sqrt(p);
    
end

[~,tau] = max(R(:));

end