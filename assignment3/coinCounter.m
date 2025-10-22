function [totalInDollars]=coinCounter(quarters,dimes,nickles,pennies)
%This coin counter function enables you to count the amount of coins by
%simply putting the quantity of each type of coin in the correspondining
%input variable. If there are no coins of a certain kind to be counted,
%please provide a 0 in the corresponding spot. 
%
%For example, if there are no quarters to be counted, the first input
%should be 0. 
%
%Inputs:
%Quarters = The quantity of quarters to be counted.
%Dimes = The quantity of dimes to be counted.
%Nickels = The quantity of nickels to be counted.
%Pennies = The quantity of pennies to be counted.
%Outputs:
%totalInDollars = The total dollar amount of the coins counted. 

%Takes the quantity of quarters, and multiplies it by 0.25. 
Q1=quarters.*0.25

%Takes the quantity of dimes, and multiplies it by 0.10. 
D1=dimes.*0.10

%Takes the quantity of nickels, and multiplies it by 0.05. 
N1=nickles.*0.05

%Takes the quanitity of pennies, and multiplies it by 0.01. 
P1=pennies.*0.01

%Will add all of the coin amounts together, and provide a total in decimal
%format. 
totalInDollars = (Q1 + D1 + N1 + P1)

end 