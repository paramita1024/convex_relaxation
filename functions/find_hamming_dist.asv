function hamming_dist = find_hamming_dist( hamming_dist , w , w0  )
%w : structure (components are parameter corresponding to diff penulty function)
%w0 : original parameter
% hamming_dist: structure
% 1) itr: no of iteration 
% 2) one vector for each of the penulty function

itr = hamming_dist.itr;
hamming_dist.penulty = (pdist([w' ; w0'] , 'hamming' )+hamming_dist.penulty*itr)/(itr+1);
hamming_dist.itr = itr+1;