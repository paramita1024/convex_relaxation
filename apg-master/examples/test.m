x = 1:10;
y = sin(x);
z = exp(x);
w = cos(x);
figure
plot(x,y,'-go');
hold on
plot(x,z,'--r*');
hold on
plot(x,w,'--b');
