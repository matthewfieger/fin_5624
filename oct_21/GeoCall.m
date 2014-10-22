function [ return_val ] = GeoCall(S, K, r, q, vol, T)
% Calculates the price of a geometric Asian call option
% based on the Black-Scholes option pricing model.

    % S = Spot price of the underlying asset
    % K = Strike price of the option
    % r = Current risk free rate, annual continuous compounding
    % q = Dividend yield
    % vol = Standard deviaton of returns of the underlying asset
    % T = Time to experitation
        
    b_a = .5*(r-q-vol^2/6);
    vol_a = vol/sqrt(3);

    d_1 = (log(S/K)+(b_a+vol_a^2/2)*T)/(vol_a*sqrt(T));
    d_2 = d_1-vol_a*sqrt(T);

    Nd_1 = normcdf(d_1,0,1);
    Nd_2 = normcdf(d_2,0,1);

    c = S*exp((b_a-r)*T)*Nd_1-K*exp(-r*T)*Nd_2;
    % disp(c);
    return_val = c;

end
