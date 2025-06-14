function y_butter = ButterworthFilter(low_cutoff, high_cutoff, order, y)
    [b_butter, a_butter] = butter(order, [low_cutoff high_cutoff], 'stop');
    y_butter             = filter(b_butter, a_butter, y);
end