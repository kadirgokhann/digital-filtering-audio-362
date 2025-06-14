function y = PlotFIRWithOrder(lcoff, hcoff, Rp, Rs, order, b_fir, fs)
    [b_butter, a_butter] = butter(order,         [lcoff hcoff], 'stop');
    [b_cheby1, a_cheby1] = cheby1(order, Rp,     [lcoff hcoff], 'stop');
    [b_ellip,  a_ellip]  = ellip (order, Rp, Rs, [lcoff hcoff], 'stop');
    
    % Get frequency responses
    [H_fir,    f_fir]    = freqz(b_fir,    1,        1024, fs);
    [H_butter, f_butter] = freqz(b_butter, a_butter, 1024, fs);
    [H_cheby1, f_cheby1] = freqz(b_cheby1, a_cheby1, 1024, fs);
    [H_ellip,  f_ellip]  = freqz(b_ellip,  a_ellip,  1024, fs);
    
    % Plot log-magnitude (in dB)
 
    figure('Name', strcat("Finding Orders with order", int2str(order)) , 'NumberTitle', 'off');
    hold on;
    plot(f_fir,    20*log10(abs(H_fir)),    'LineWidth', 1.5); 
    plot(f_butter, 20*log10(abs(H_butter)), 'LineWidth', 1.5);
    plot(f_cheby1, 20*log10(abs(H_cheby1)), 'LineWidth', 1.5);
    plot(f_ellip,  20*log10(abs(H_ellip)),  'LineWidth', 1.5);
    grid on;
    xlabel('Frequency (Hz)');
    ylabel('Magnitude (dB)');
    title('Frequency Responses of FIR, Butterworth, Chebyshev I, and Elliptic Filters');
    legend('FIR', 'Butterworth', 'Chebyshev I', 'Elliptic');
    xlim([0 10000]);
    ylim([-100 5]);
    y = 1;
end