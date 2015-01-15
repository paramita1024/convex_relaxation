%create A
%create b which is set of y 
rho = 500;
opts = [];
dim = 500;
max_sample =  5000;
data.w0 = 2.*rand(dim , 1)-1; 
data.X = mvnrnd( zeros(1, dim) , diag( ones( 1,dim ) ) , max_sample );
epsilon = mvnrnd( zeros(1, max_sample ) , diag( ones( 1,max_sample ) ) );
data.Y = data.X*(data.w0) + epsilon';

%call apg
x = apg_log_reg(data.X , data.Y , rho , opts);
figure
subplot(3,1,1)
hist(data.w0);
%plot(1:max_sample,data.X*x,'r', 1:max_sample, data.Y , 'b');
subplot(3,1,2) 
hist(x)
subplot(3,1,3)
err = data.X*x - data.Y ;
min_sample = 1;
plot(min_sample:max_sample,err,'r');


% let us have a histogram plot of x