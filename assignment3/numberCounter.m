function numberCounter(input1,input2)
% The numberCounter function takes 2 numbers and will count up from 
%the lower to the higher number.
%
%Inputs:
%input1 = The lower number
%input2 = The higher number
%The number order DOES matter. 

%If input 2 is higher han input 1, it will count up from input 1 to input
%2. 
while input1 <= input2
    disp(input1)
    input1 = input1 + 1;
end

