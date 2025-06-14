function [y_butterworth, y_cheby1, y_ellip] = PlotFilteredSignals(lcoff, hcoff, n4Butter, n4Chebyshev, n4Elliptic,y, Rp, Rs, fs)
    y_butterworth         = ButterworthFilter(lcoff, hcoff, n4Butter,    y);
    y_cheby1              = Chebyshev1Filter (lcoff, hcoff, n4Chebyshev, y, Rp);
    y_ellip               = EllipticFilter   (lcoff, hcoff, n4Elliptic,  y, Rp, Rs);
    PlotAndWriteSignal(fs, y_butterworth, 'Butterworth_Filtered'); 
    PlotAndWriteSignal(fs, y_cheby1,      'Chebyshev_1_Filtered');
    PlotAndWriteSignal(fs, y_ellip,       'Elliptic_Filtered');
end

