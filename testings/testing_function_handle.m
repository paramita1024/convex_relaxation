%t = [1 1 2 5 6 ];
G = [ 1 0 0 ; 1 0 0 ; 0 1 0 ; 0 1 0 ; 0 0 1 ];
w = [ 2 1 3 ];
f_handle = f_group_count(G,w);
%f1 = f_minus_t(f_handle, t);
f_handle([ 1 2 3 4 ])