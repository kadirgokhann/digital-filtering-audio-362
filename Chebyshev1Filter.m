function y_cheby1 = Chebyshev1Filter(low_cutoff, high_cutoff, order, y, Rp)
    [b_cheby1, a_cheby1] = cheby1(order, Rp, [low_cutoff high_cutoff], 'stop');
    y_cheby1              = filter(b_cheby1, a_cheby1, y);
end
    