function g = gradient_lasso(w, opts)
    g = opts.X'*(opts.X*w - opts.Y);
end