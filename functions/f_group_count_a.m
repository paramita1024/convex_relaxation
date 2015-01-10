function [ w ] = f_group_count_a( A , G , weight )
% val =   sum over all partition  ( weight of i-th partition * size ( input ( intersect )
% partition ) )

w = 0;

for i = 1:length(A)
    
   partition = find(  G(A(i),:) );
   w = w+weight(partition);
   
end

