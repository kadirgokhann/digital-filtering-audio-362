% read a file sample.wav
[y, fs] = audioread('sample.wav'); % sound(y, fs);

%Helper plots:
PlotTimeAmpPlot(fs, y, 'Time vs Amplitude Graph');
PlotFreqAmpPlot(fs, y, "Spectrum");

% Instruction 1
%PlotSpectrogram(fs, y, 128, 100, 256)
%PlotSpectrogram(fs, y, 256, 200, 512)
PlotSpectrogram(fs, y, 512, 400, 1024, 'Spectrogram');
f1              = 4000;
f2              = 5000;
[lcoff, hcoff]  = GetCutOffs(fs, f1, f2);

% Instruction 2
[y_fir_filtered, b_fir] = BandStopFilter(y, lcoff, hcoff);
PlotAndWriteSignal(fs, y_fir_filtered, 'FIR Filtered');

% Instruction 3
% Functions are ready.
% ButterworthFilter(lcoff, hcoff, order, y);
% Chebyshev1Filter (lcoff, hcoff, order, y, Rp);
% EllipticFilter   (lcoff, hcoff, order, y, Rp, Rs);

% Instruction 4
Rp  = 0.1;
Rs  = 50;

[n4Elliptic, n4Chebyshev, n4Butter] = FindOrdersForFilters(lcoff, hcoff, Rp, Rs, b_fir, fs);
PlotFIRFinal(lcoff, hcoff, Rp, Rs, n4Butter, n4Chebyshev, n4Elliptic, b_fir,fs, 4);

% Instruction 5
[y_butterworth, y_cheby1, y_ellip] = PlotFilteredSignals(lcoff, hcoff, n4Butter, n4Chebyshev, n4Elliptic,y, Rp, Rs, fs);


PlotFIRFinal(lcoff, hcoff, Rp, Rs, 13, 13, 10, b_fir,fs, 6);
