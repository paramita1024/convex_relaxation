disp('I am adding this line to check git')
disp('I am again chenging')
% clear ;
% dim_x = 5;
% sample_size = [10];
% i=1;
%  w0= rand( 1 , dim_x );
%     mu = zeros(1, dim_x);
%     sigma = diag( ones( 1,dim_x ) );
%     X = mvnrnd( mu , sigma , sample_size(i) );
%     epsilon = mvnrnd( zeros(1, sample_size(i)) , diag( ones( 1,sample_size(i) ) ) );
%     Y = X*w0' + epsilon';
data = create_data( 4 , 2 , 6  );
