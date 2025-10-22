function [sum,difference,product,max] = mathFunction(input1,input2)
%This mathfunction provides the sum, difference, product, and maximum value
%of two inputs. This function does work with matrices of the same length.
%Matrices of different lengths will result in an error. 
%
%Inputs:
%Input1 = The first number you'd like to assess. 
%Input2 = The second number you'd like to assess.
%
%Outputs:
%Sum = Will return the result of input1 plus input2. 
%Difference = Will ALWAYS return the value of input1 - input2. Negative
%answers are possible. 
%Product = Will return the value of input1 multiplied by input2.
%Max = Will return the larger value of input1 and input2.

%Sum calculator 
sum = input1 + input2

%Difference calculator 
difference = input1 - input2  

%Product calculator 
product = input1 .* input2 

%Maximum calculator 
if input1>input2
    max= input1
else input2 > input1
    max=input2
end 

end 
