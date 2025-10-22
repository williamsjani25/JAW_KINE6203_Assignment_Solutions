function plotValues(vector1,vector2)
%The plotValues function will plot the input values. In order for this
%function to work, matrices must be the same length. 
%
%Inputs:
%Vector1: The first vector you'd like to evaluate
%Vector2: The second vector you'd like to evaluate
%
%There is no output for this function, as the plot is the output. 

%This if statement will check if the vectors are the same length. If they
%aren't, it will return a personalized error Boolean, stating why it cannot go forward.  
if length(vector1) ~= length(vector2)
    error('Input vectors must be of the same length.');
end

%Plots the graph. Will provide the following titles to the xlabel, ylable,
%and title. 
plot(vector1,vector2)
xlabel('x axis')
ylabel('y axis')
title('plotValues Graph')
end 

