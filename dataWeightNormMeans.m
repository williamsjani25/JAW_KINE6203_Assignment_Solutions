

function [normDay1mean, normDay2mean, normDay3mean] = dataWeightNormMeans(Day1,Day2,Day3,Weight)
%This function weight normalizes isokinetic data and calculate the group
%means for each day testing took place. 

%Provides the weight normalized data for Day 1
normDay1mean = mean(Day1./Weight)

%Provides the weight normalized data for Day 2
normDay2mean = mean (Day2./Weight)

%Provides the weight normalized data for Day 3
normDay3mean = mean(Day3./Weight)
end