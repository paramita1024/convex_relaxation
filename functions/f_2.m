function F = f_2( f_handle , grid_axis_1 , grid_axis_2 )
fn = @(A) eval_f_2( f_handle , grid_axis_1 , grid_axis_2 , A) ;
F = sfo_fn_wrapper(fn);

function w = eval_f_2(f_handle ,  grid_axis_1 , grid_axis_2, A )
w = f_handle(intersect(grid_axis_1, A))+ f_handle(intersect(grid_axis_2, A));
