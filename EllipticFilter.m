function y_ellip = EllipticFilter(low_cutoff, high_cutoff, order, y, Rp, Rs)
    [b_ellip, a_ellip]   = ellip(order, Rp, Rs, [low_cutoff high_cutoff], 'stop');
    y_ellip              = filter(b_ellip, a_ellip, y);
end