%Dummy index for loop part.2
%Summation of set of sequential values

sum1 = 0; %initial sum
disp("Sequence Sum Steps: ");
for k = 0:9 %for adding values of k from 0 to 9
    disp((k+1) + ") " + sum1 + " + " + k);
    sum1 = sum1+k; %add each value of k to final sum
end
disp("Final Sum = " + sum1); %display final sum