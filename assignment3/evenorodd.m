function [result]=evenOrOdd(input)
%The evenOrOdd function determines whether or not a function is even or
%odd. 
% 
%Input:
%Input = the number you'd like to evaluate
%
%Output:
%Result = the determination if the number is even or odd. 
%If the input number is odd, the result will return Woo. If the input
%number is even, the result will return Hah. 

if mod(input,2) == 0 %An even number would be divisable by 2. 
    result = 'Woo'
else
    result = 'Hah' %If it is not divisable by 2, it is an odd number. 
end
end 