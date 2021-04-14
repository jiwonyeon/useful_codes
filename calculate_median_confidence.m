function [low, high] = calculate_median_confidence(conf, nRating)
%%% conf = a vector of confidence responses
%%% nRating = confidence response scale (e.g. 4 for 1-4 scales)

conf = conf(:);
nTrials = length(conf);

ratio = [];
for r = 1:nRating-1
    ratio(r) = sum(conf<=r)/nTrials;
end
ratio = abs(ratio -.5);
low = find(ratio == min(ratio));
high = low+1;


