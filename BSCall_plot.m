% Write a script function that plots the price
% of a European call versus the Stock price S
% given K = 50, r = 4%, q = 1.7%, vol = 20%, T =1.

x=1:100;
y=x;
for i = x
    y(i)=BSCall(x(i),50,.04,.017,.20,1);
end

plot(x,y);
xlabel('Spot Price')
ylabel('Option Price')
title('K = 50, r = 4%, q = 1.7%, vol = 20%, T =1')
