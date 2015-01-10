function F = f_minus_t(f_handle,t)
fn = @(A) eval_minus_t(f_handle,t,A) ;
F = sfo_fn_wrapper(fn);

function w = eval_minus_t(f_handle,t,A)

w = f_handle(A) - sum(t(A));

