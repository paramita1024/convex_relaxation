clear;
clc;
delete('t.txt', 'A.txt', 'log.txt');

dim_x = 32;
z = rand(1,dim_x);
z(1:7)=0;
lambda = .05;
opts.lambda = lambda;
opts.X =[];
opts.Y = [];
opts.V = 1:dim_x;
opts.handle = f_r(dim_x);

x =proximal( z, lambda, opts);

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