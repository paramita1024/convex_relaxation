function  data = create_data( dim , supp , max_sample  )
data = [];
%create w0
lower = floor(rand(1,1)*(dim/2));
upper = lower+supp;
data.w0 = zeros(  dim,1 );
w0_temp= rand(  upper-lower+1 ,1 );
Support = lower:upper;
data.w0(Support) = w0_temp;

data.X = mvnrnd( zeros(1, dim) , diag( ones( 1,dim ) ) , max_sample );
epsilon = mvnrnd( zeros(1, max_sample ) , diag( ones( 1,max_sample ) ) );



data.Y = data.X*(data.w0) + epsilon';