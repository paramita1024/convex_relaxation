function F = modify(f_handle, domain)
fn = @(A) eval_modify(f_handle,domain , A) ;
F = sfo_fn_wrapper(fn);

function w = eval_modify(f_handle, domain, A)
w=f_handle(domain(A));