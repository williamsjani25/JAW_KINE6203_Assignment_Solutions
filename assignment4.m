%This is the master script file for Assignment number 4. This master file
%will allow for a master run of different functions to allow for the
%completion of assignment for. This master script was created by Ja'Niyah
%Williams on a Lenovo PC in November of 2025. 

%This first function inports data from the isok_data_6803.csv file, saving
%each subject heading as a varibale. 
[SubjectID, Age, Gender, Weight, Day1, Day2, Day3] = importfile('isok_data_6803.csv')

%The purpose of this function is to create a matrix indetifying individual mean isometric strength
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
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1, Day2, Day3 )

%The purpose of this function is to return subject IDs of individuals who
%show an increase between Day 1 and 2 of strength testing.
%
%Inputs: 
%Subject IDs
%Day 1 = Day1
%Day 2 = Day2
%
%Outputs:
%The subject ID numbers who showed an increased between the two days. 
day1toDay2 = dayComparer(SubjectID,Day1,Day2)

%The purpose of this function is to return subject IDs of individuals who
%show an increase between Day 2 and 3 of strength testing.
%
%Inputs: 
%Subject IDs
%Day 1 = Day1
%Day 2 = Day2
%
%Outputs:
%The subject ID numbers who showed an increased between the two days. 
day2toDay3 = dayComparer(SubjectID,Day2,Day3)

%This function weight normalizes isokinetic data and calculate the group
%means for each day testing took place. 
[normDay1mean, normDay2mean, normDay3mean] = dataWeightNormMeans(Day1,Day2,Day3,Weight) 

%This function and question was honestly a struggle. I talked to other
%classmates about how they did it; however, when I came home, I could not figure out how to make it work. I know the pad function should be utilized. 
%At the time being, this code is still under construction and will produce an error message. 
%For the time being, I created this pathway; however, I will stop by office hours after Thanksgiving
%Break to talk through how to fix this. 
%
%This code will combine all of the individual workspaces into one large
%table. 
combinedWorkspace = table(SubjectID, Age, Gender, Weight, maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1mean, normDay2mean, normDay3mean);

%Finally, the combined workspace table will be saved as a csv file. 
writematrix(combinedWorkspace, 'iso_results.csv');

