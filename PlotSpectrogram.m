
function res = PlotSpectrogram(fs, y, window, noverlap, f, name) 
    figure('Name', name , 'NumberTitle', 'off');
    hold on;
    spectrogram(y, window, noverlap, f, fs, 'yaxis');
    ylim([0 12]); 
    yticks(0:1/2:12);
    colorbar;
    title('Spectrogram');
    res = 1;
end


