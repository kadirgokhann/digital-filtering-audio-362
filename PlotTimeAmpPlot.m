function res = PlotTimeAmpPlot(fs,y, name)
    t       = 0:1/fs:5;
    t(end)  = [];
    figure('Name', name, 'NumberTitle', 'off');
    hold on;
    plot(t, y, 'b', 'DisplayName', 'Signal');
    title('Time vs Amplitude Graph');
    xlabel('Time (s)');
    ylabel('Amplitude');
    legend('show');
    grid on;
    res = 1;
end