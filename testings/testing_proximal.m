clear;
dim_x = 32;
no_of_zero = 10;
z = rand(1,dim_x);
%null_index = randi([1 , dim_x] , 1 , no_of_zero);
null_index = 1:no_of_zero;
z(null_index) = 0;
lambda = .01;

opts.lambda = lambda;
opts.X =[];
opts.Y = [];
opts.V = 1:dim_x;
opts.handle = f_r(dim_x);




x_omega_norm =proximal( z, lambda, opts);

x_L2_norm =proximal_L2_norm( z, lambda, opts);

plot(1:dim_x , x_omega_norm , 'r', 1:dim_x, z,'b*' , 1:dim_x , x_L2_norm , 'g');

%plot(1:dim_x , x , 'r', 1:dim_x, z,'b');
%plot(1:dim_x,expand_new(null_index,dim_x),'r',1:dim_x,z,'b');
%**************************************************************************

% %testing function f_r
% d=10;
% z=[3 10]
% f = f_r(d);
% f(z)

%************************************************************************
% %testing f_minus_t
% d=10;
% f = f_r(d);
% t = ceil(rand(1,d));
% t(3)=4;
% 
% f1= f_minus_t(f,t);
%A = sfo_queyranne(f1,1:d);

%***********************************************************************
%testing restrict and contract
% f_handle = f;
% A = [3:10];
% f_restricted = restrict(f_handle, A);
% f_restricted([1 2 ])

% 
% f_handle = f;
% A = [5:10];
% A_c = [1:3] ; 
% f_contracted = contract(f_handle, A , A_c);
% f_contracted([ 5  10  ])