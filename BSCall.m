function [ return_val ] = BSCall(S, K, r, q, vol, T)
% Calculates the price of a European call option
% based on the Black-Scholes option pricing model.

    % S = Spot price of the underlying asset
    % K = Strike price of the option
    % r = Current risk free rate, annual continuous compounding
    % q = Dividend yield
    % vol = Standard deviaton of returns of the underlying asset
    % T = Time to experitation
    
    d_1 = (log(S/K)+(r-q+vol^2/2)*T)/(vol*sqrt(T));
    d_2 =  d_1 - vol*sqrt(T);

    Nd_1 = normcdf(d_1,0,1);
    Nd_2 = normcdf(d_2,0,1);

    c = S*exp(-q*T)*Nd_1 - K*exp(-r*T)*Nd_2;
    disp(c);
    return_val = c;

end
