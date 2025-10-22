function isTriangleValidAnswer = isValidTriangle(sides)
%The isValidTriangle function will evaluate if the numbers included in a 3
%element array make a valid traingle. As a reminder, a valid triangle is
%created when largest side is smaller than the two sides added together. 
%
%Input:
%Sides = The 3 element array to be evaluated. 
%To ensure the array is evaluated correctly, input it as such ''isValidTriangle([*insert 3 number
%array here]), and then hit enter to run the code. 
%
%Output:
%isTriangleValidAnswer = Whether or not the triangle is valid. 
%If the triangle is valid, Matlab will return a 1 for True. 
%If the triangle is invalid, Matlab will return a 0 for False. 


% This function will return a Boolean if the input is not a 3-element
% array. Only 3 element arrays will work for this function, as a triangle
% only has 3 sides. 
if length(sides) ~= 3
    error('Input must be a 3-element array.');
end

%This will sort the sides from highest to lowest. The highest number will
%be designated as the longest side and will be assiggned to side1. 
sort(sides,"descend");

% The following code will check if side 1 (the longest side), is less/greater
%than sides 2 and 3 when added together. If it is less than, the traingle
%is valid. If it is more than, the triangle is invalid. 
if sides(1) < sides(2) + sides(3) 
    isTriangleValidAnswer = 1;
else 
    isTriangleValidAnswer = 0;  

end
   

end 