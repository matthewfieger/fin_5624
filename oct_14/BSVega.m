function Vega = BSVega(S,K,T,r,vol,q,IsCall)
	% Returns Black Scholes Psi for a European Call or Put Option
	d_1 = (log(S/K)+(r-q+0.5*vol^2)*T)/(vol*sqrt(T));
	Vega = exp(-q*T)*S*pdf('Normal',d_1,0,1)*sqrt(T);