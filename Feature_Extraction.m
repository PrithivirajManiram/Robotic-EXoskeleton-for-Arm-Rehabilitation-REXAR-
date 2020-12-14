data = raw_data; % size: (n x 8), n = length of data
window_length = 102;
first_range = 1;
second_range = first_range + window_length; %length of a window = 102
len = length(data)/window_length;

for i = 1:len  
    input = data(first_range:second_range,:);
    Waveformlength(i,:) = emgWaveformLen(input);
    Variance(i,:) = emgvariance(input);
    RootMeanSquare(i,:) = rms(input); % rms: default function in Matlab
    NZC(i,:) = zero_crossing(input);
    first_range = second_range + 1;
    second_range = first_range + window_length;
    
    if (second_range > length(data))
        break;
    end
end

