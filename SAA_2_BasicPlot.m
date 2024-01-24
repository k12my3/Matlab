% Making a quick plot

x = [0:0.1:75]; %x : 0, 0.1, 0.2,..., 75
y = cos(x); %y : cos(0), cos(0.1),...., cos(75)
plot(x,y); % plot x vs y
xlabel("X : 0 - 75, 0.1 ----->");
ylabel("Y : Cos(x) ----->");
title("x vs cos(x)");