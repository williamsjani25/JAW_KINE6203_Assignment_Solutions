function [firstCharacter,lastCharacter,characterLength]=stringValueFunc(stringvalue)
%The stringValueFunc function will return the first and last character of a
%string, and the character length of the entire string.
%
%Input:
%stringvalue = the text/string value you'd like to evaluate. In order for
%this function to work, please enclose the string to evaluate in apostrophes.
%For example, call this function as such:
%
%stringValueFunc('insert string to be evaluated here'), and then press
%enter. 
%
%Outputs:
%firstCharacter = returns the first character of the string value
%lastCharacter = returns the last character of the string value
%characterLength = will return the total number of characters in the
%string. 

firstCharacter = stringvalue(1)
lastCharacter = stringvalue(end)
characterLength = strlength(stringvalue)
end 

