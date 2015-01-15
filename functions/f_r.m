function F = f_r(d)
fn = @(A) eval_f_r(d,A) ;
F = sfo_fn_wrapper(fn);

function w = eval_f_r(d , A)
if isempty(A)
    w = 0;
else
    if max(A) > d 
        %echo on;
        %echo 'error';
        w=0;
    else
        w =  d + max(A)- min(A);
    end
end