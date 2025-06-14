function y = PlotAndWriteSignal(fs, y, name)    
    PlotSpectrogram(fs, y, 256, 200, 512, strcat('Spectrogram .', name));
    PlotFreqAmpPlot(fs, y, strcat("Spectrum .", name));
    PlotTimeAmpPlot(fs, y, strcat('Time vs Amplitude Graph .', name));
    y_ = y / max(abs(y));
    audiowrite(strcat(strcat("filtered_signals/filtered_with_", name), ".wav"), y_, fs);
end