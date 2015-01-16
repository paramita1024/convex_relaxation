%%it solves convex relaxation of combinatorial penulties
clear;
clc;
%min_sample=50;
%diff = 25;
%max_sample=750;

%no_of_loop = (max_sample-min_sample)/diff + 1;
dim = 256;%specify
supp =160;
max_sample = 500;
%max_itr = 1;
%hamming_dist = zeros(1,max_sample);
%l2_dist = zeros(1,max_sample);
lambda = .5;

opts = [];
opts.handle = f_r(dim);
opts.lambda = lambda;
opts.GEN_PLOTS = false;
opts.V = 1:dim;

%for itr = 1:max_itr
    data = create_data( dim , supp , max_sample  );
 %   disp(itr)
 %   for sample_size = min_sample:diff: max_sample
 %       disp(sample_size)
        %write how to get X,Y from data
        opts.X=data.X;%(1:sample_size,:);
        opts.Y = data.Y;%(1:sample_size);
        
        %w_lasso = apg(@gradient_lasso, @proximal_lasso, size(opts.X,2), opts);
        w_omega_norm = apg(@gradient_pen, @proximal, size(opts.X,2), opts);
        %w_L2_norm = apg(@gradient_lasso, @proximal_lasso, size(opts.X,2), opts);
        %hamming_dist(sample_size) = (hamming_dist(sample_size)*itr+ pdist([w' ; data.w0'] , 'hamming') )/(itr+1);
        %l2_dist(sample_size) = (l2_dist(sample_size)*itr+ pdist([w' ; data.w0'] , 'euclidean') )/(itr+1);
        
 %   end
%end

%code for plotting dimension of w versus l2 and hamming distance between
%solution and optimal
%figure
%title('sample size Vs hamming distance and l2-distance')
%plot(min_sample:max_sample, hamming_dist(min_sample:max_sample), '--r*');
%plot(min_sample:max_sample, l2_dist(min_sample:max_sample), '--r*');
