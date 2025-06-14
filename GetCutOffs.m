function [low_cutoff, high_cutoff] = GetCutOffs(fs, f1, f2)    
    low_cutoff  = (f1 - 500)/(fs/2);
    high_cutoff = (f2 + 500)/(fs/2);
end