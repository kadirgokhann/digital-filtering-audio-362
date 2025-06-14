function [nElliptic, nChebyshev, nButter] =  FindOrdersForFilters(lcoff, hcoff, Rp, Rs, b_fir, fs)
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 3, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 4, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 5, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 6, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 7, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 8, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 9, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 10, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 11, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 12, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 13, b_fir, fs);
    PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, 14, b_fir, fs);
    nElliptic  = 5;
    nChebyshev = 8;
    nButter    = 10;
end