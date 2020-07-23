x = [10.421, 10.939, 11.321, 11.794, 12.242, 12.668];
y = [10.5, 29.49, 42.7, 60.01, 75.51, 91.05];

plot(x,y,'or'), grid;
hold on

A = [(x.^1)', (x.^0)'];
Y = y';
X = inv(A' * A) * (A' * Y);

a = X(1);
fprintf('%.8f\n',a);
b = X(2)
fprintf('%.8f\n',b);

xx = min(x) : 0.01 : max(x);
yy = a * xx + b;

plot(xx,yy,'b');
hold off
