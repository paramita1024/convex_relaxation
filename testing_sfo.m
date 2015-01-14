clear;
num_elm = 10;
V = 1:num_elm;
% construct G
load G.mat;
F = sfo_fn_cutfun(G)
opt =[];
b = 1;
a = -1;

t = (b-a)*rand(num_elm,1)+a;
F1 = f_minus_t(F,t);

for i = 1 : num_elm
    set = 1:i;
    ans = [ sum(t(set)) F(set) F1(set) ];
    disp(ans);
    
end


[A,subopt]=sfo_min_norm_point(F1,V, opt);  
%opt_len = length(A);