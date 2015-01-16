function [x] = proximal_L2norm(z , lambda , opts )
x = (1/(1+2*lambda))*z;