function F = contract(f_handle, domain_c , domain )
fn = @(A) eval_contract(f_handle,domain , domain_c , A) ;
F = sfo_fn_wrapper(fn);

function w = eval_contract(f_handle, domain, domain_c , A)
working_Set = intersect(A , domain);
w = f_handle( union(working_Set, domain_c )  ) - f_handle( domain_c  );