% computes gradient of norm(Y - X*w)^2 
function g = gradient_pen(w, opts)
    g = opts.X'*(opts.X*w - opts.Y);
end
