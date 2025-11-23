function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1, Day2, Day3 )
%%The purpose of this function is to create a matrix indetifying individual mean isometric strength
%values for 3 days of lifting for both men and women, and then return a
%mean of all the subject means for each gender. 
%
%Inputs: 
%Gender
%Day 1 = Day 1 Strength Data
%Day 2 = Day 2 Strength Data
%Day 3 = Day 3 Strength Data
%
%Outputs
%MaleIsoIndMeans = The mean of the male strength data per subject ID for
%the 3 testing days 
%FemaleIsoIndMeans = The mean of the female strength data per subject ID for
%the 3 testing days 
%MaleGroupIsoMean = The mean of all the male strength data for the three
%days of testing 
%FemaleGroupIsoMean = The mean of all the female strength data for the three
%days of testing 

%Divides the subject IDs by gender
male_ids = Gender == 'M' 
female_ids = Gender == 'F'

%Returns the mean of the 3 day strength data collections in relation to the
%subject ID for male subjects 
maleIsoIndMeans = mean(Day1(male_ids)+Day2(male_ids)+Day3(male_ids))

%Returns the mean of the 3 day strength data collections in relation to the
%subject ID for female subjects 
femaleIsoIndMeans = mean(Day1(female_ids)+Day2(female_ids)+Day3(female_ids))

%Returns an overall average of all the male strength data collected over
%the 3 day period 
maleGroupIsoMean = mean(maleIsoIndMeans)

%Returns an overall average of all the female strength data collected over
%the 3 day period 
femaleGroupIsoMean = mean(femaleIsoIndMeans)

end 
