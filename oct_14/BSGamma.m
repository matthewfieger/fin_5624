function Gamma = BSGamma(S,K,T,r,vol,q,IsCall)
	% Returns Black Scholes Gamma for a European Call or Put Option
	d_1 = (log(S/K)+(r-q+0.5*vol^2)*T)/(vol*sqrt(T));
	Gamma = exp(-q*T)*pdf('Normal',d_1,0,1)/(S*vol*sqrt(T));