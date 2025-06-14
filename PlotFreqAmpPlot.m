function res = PlotFreqAmpPlot(fs, y, name)
    N = length(y);
    X = fft(y);
    f = (0:N-1)*(fs/N); 
    magnitude = abs(X);
    
    half_N = floor(N/2) + 1;
    
    figure('Name', name, 'NumberTitle', 'off');
    stem(f(1:half_N), magnitude(1:half_N), 'filled');
    xlabel('Frequency (Hz)');
    ylabel('Amplitude');
    xlim([0 10000])
    xticks(0:1000:10000);
    title('Frequency domain signal');
    grid on;
    
    res = 1;
end