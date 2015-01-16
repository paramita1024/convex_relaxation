function [r] = expand_new(x,dim)
r = zeros(1,dim);
r(x) = 1;