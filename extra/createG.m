function [G,w ] = createG( n , no_of_cls  )
%n = 50;
%no_of_cls = 10;

G = zeros( n, no_of_cls );
val = rand( n , 1);

for i =1:n
        G(i,ceil( val(i)*no_of_cls ))=1;
end
dlmwrite('G.txt', [ n no_of_cls ]);
dlmwrite( 'G.txt', G , '-append');
        
w = rand(1,no_of_cls);
dlmwrite('w.txt', w );

%G
%w
