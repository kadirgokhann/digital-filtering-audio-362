function [y_filtered, b_fir] = BandStopFilter(y, low_cutoff, high_cutoff)
    % Design a 256th-order FIR bandstop filter using the fir1() function. 
    % Use (f1 − 500, f2 + 500) as cutoff frequencies. If your estimated 
    % frequency range (f1, f2) is sufficiently accurate, this filter 
    % should significantly reduce the noise (almost inaudible).
 
    b_fir       = fir1(256, [low_cutoff high_cutoff], 'stop');
    y_filtered  = filter(b_fir, 1, y);
end