function l2_dist = find_l2_dist( l2_dist , w , w0  )
%w : structure (components are parameter corresponding to diff penulty function)
%w0 : original parameter
% l2_dist: structure
% 1) itr: no of iteration 
% 2) one vector for each of the penulty function

itr = l2_dist.itr;
l2_dist.pen = (pdist([w.pen ; w0] , 'euclidean' )+l2_dist.pen*itr)/(itr+1);
% l2_dist.lasso = pdist([w.lasso' ; w0'] , 'euclidean' );
% l2_dist.ridge = pl2_dist([w.ridge ; w0] , 'euclidean' );
% l2_dist.GL = pl2_dist([w.pen ; w0] , 'euclidean' );
% l2_dist.GL_w = pl2_dist([w.GL_w ; w0] , 'euclidean' );

l2_dist.itr = itr+1;