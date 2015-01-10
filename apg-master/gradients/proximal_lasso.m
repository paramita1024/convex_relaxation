function v = proximal_lasso(x, t, opts)
    v = sign(x) .* max(abs(x) - t*opts.lambda,0);
end