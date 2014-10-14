function [return_val] = BlackScholes(S,K,T,r,vol,q,IsCall,Result)
	%{
		S 		Asset Price
		K 		Strike Price
		T 		Time to maturity (yrs)
		r 		Domestic Risk Free Rate
		vol 	Volatility.  For case Result=7, enter Price

		q		(i) Div yield for stock index options
				(ii) Foreign risk free rate for currency options
				(iii) Enter q=r domestic risk free rate for futures options

		IsCall	1 if call, 0 if put

		Result	0 = Price
				1 = Delta (per $)
				2 = Gamma (per $ per $)
				3 = Vega (per \%)
				4 = Theta (per day)
				5 = Rho (per basis point)
				6 = Psi (per \%)
				7 = Implied Volatility
	%}

	switch Result
		case 0 % Price
			return_val = BSPrice (S,K,T,r,vol,q,IsCall);
		case 1 % Delta
			return_val = BSDelta (S,K,T,r,vol,q,IsCall);
		case 2 % Gamma
			return_val = BSGamma (S,K,T,r,vol,q);
		case 3 % Vega
			Vega = BSVega(S,K,T,r,vol,q);
			% Vega per \% requires dividing by 100
			return_val  = Vega/100;
		case 4 % Theta
			Theta= BSPrice (S,K,T,r,vol,q);
			% Theta per day requires dividing by 365
			return_val = Theta/365;
		case 5 % Rho
			Rho = BSRho(S,K,T,r,vol,q,IsCall);
			% Rho per basis point requires dividing by 10,000;
			return_val = Rho/10000;
		case 6 % Psi
			Psi = BSPsi(S,K,T,r,vol,q,IsCall);
			% Psi per \% requires dividing by 100
			Result = Psi/100;
		case 7 % Implied Vol
			Price = vol;
			return_val = BSImpliedVol(S,K,T,r,Price,q,IsCall);
		end