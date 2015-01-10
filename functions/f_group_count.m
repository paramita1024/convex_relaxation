function F = f_group_count(G,w)
fn = @(A) eval_group_count(G,w,A) ;
F = sfo_fn_wrapper(fn);

function w = eval_group_count(G,weight , A)
working_set = [];
for i = 1:length(A)
   working_set = union(working_set , find(  G(A(i),:) ));
   
end
working_set
w = sum(weight(working_set));

