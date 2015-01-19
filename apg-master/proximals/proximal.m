function [ x ]=proximal( z, lambda, opts)
% input z \in R^d , \lambda > 0
% output w
% computes proximal_{\lambda * \omega_p} (z)

if size(z,1)==1
    z = z';
end
opts.X=[];
opts.Y=[];
f_handle = opts.handle;
V = opts.V;
n=length(z);
%disp(V)

A = find(z);
disp('proximal starts')
if( isempty(V) ) 
    disp('working set V is empty');
end
if length(A)<n
    
    x = zeros( n,1 );
    if length(A) == 0
        
        return 
    end
    disp('support of z is a subset V')
    f_restricted = restrict(f_handle, A);
    f_modified = modify(f_restricted , A);
    opts.handle=f_modified;
    opts.V = 1:length(A);
    x(A) = proximal( z(A), lambda , opts );
    %disp('leaving proximal A subset V')
    return 
end

disp('support of z is V')
disp('minimization start')
norm_z = norm(z);
t = zeros(n,1);
for i=1:n
    t(i) = z(i)*z(i);
end
t = (t*f_handle(V)) / (norm_z*norm_z);
F = f_minus_t(f_handle,t);
%A = sfo_queyranne(F,V);
A_new = sfo_min_norm_point(F, V , opts);
disp('minimization end')
disp('minimizer set')
disp(F(A_new))
%if( isempty(V) ) 
    %disp('argmin(A \in V ) (F-t)(A)  is empty');
%end 
% 
% 
if f_handle(A_new) == sum(t(A_new))
    disp('t is inside polytope of F ')
    x = zeros( n,1 );
    temp = norm_z - lambda*sqrt( f_handle( V ) );
    if temp > 0
        x = (temp/norm(z))*z;
    end
    disp('proximal ends')
    
    return
end

disp('t is outside')


f_restricted = restrict(f_handle, A_new );
f_modified = modify(f_restricted , A_new);
opts.handle=f_modified;
opts.V = 1:length(A_new);
x(A_new) = proximal(z(A_new),lambda , opts);%f_restricted , A

A_c = setdiff(V,A_new);

f_contracted = contract(f_handle, A_new , A_c );
%opts.handle = f_contracted ;
%opts.V = A_c;
f_modified = modify(f_contracted , A_c);
opts.handle=f_modified;
opts.V = 1:length(A_c);
x(A_c) = proximal(z(A_c),lambda , opts);%f_contracted, A_c
disp('proximal ends')