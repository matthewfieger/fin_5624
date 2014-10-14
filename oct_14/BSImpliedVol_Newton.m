function return_val = BSImpliedVol_Newton(S,K,T,r,Price,q,IsCall)
	DeltaVol = @ (vol) (BSPrice(S,K,T,r,vol,q,IsCall) - Price)/BSVega(S,K,T,r,vol,q);
	vol = 0.10;
	dv = DeltaVol(vol);
	vol=vol - dv;
	while (abs(dv) > eps)
		dv = DeltaVol(vol);
		vol = vol-dv;
		%disp(vol);
	end
	return_val = vol;
