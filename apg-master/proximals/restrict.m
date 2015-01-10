function F = restrict(f_handle, domain)
fn = @(A) eval_restrict(f_handle,domain , A) ;
F = sfo_fn_wrapper(fn);

function w = eval_restrict(f_handle, domain, A)
w = f_handle( intersect(A,domain) ) ;

