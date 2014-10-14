function Delta = BSDelta(S,K,T,r,vol,q,IsCall)
	% Returns Black Scholes Delta for a European Call or Put Option
	d_1 = (log(S/K)+(r-q+0.5*vol^2)*T)/(vol*sqrt(T));
	if IsCall
		Delta = exp(-q*T)*normcdf(d_1);
	else
		Delta = -exp(-q*T)*normcdf(-d_1);
	end