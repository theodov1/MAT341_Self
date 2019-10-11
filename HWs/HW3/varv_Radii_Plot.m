function varv_Radii_Plot()

%This function determines the probability of multiple circles of different 
%radii "r" landing within a 1x1 square and plots the resuts.   

%Probability for Radius 0.5 is approximately .25158
%Probability for Radius 0.1 is approximately .80901
%Probability for Radius 0.01 is approximately .98042

%creates the vector that initializes the different values of r to be tested
rVec = [0.01:0.005:0.10 0.1:0.01:0.5];

%sets the number of trials to be run
N=1e5;


%determines the number of times for the program to run the funtion
for i=1:length(rVec)
    
    %calls the function to calculate the probability for each radii and
    %store it in a vector
    prob_val(i)=estimate_Coin_In_Square_Probablity(rVec(i),N);
    
end

%plots the radius values and calculated probability values
loglog(rVec, prob_val, 'r*')

%Labels the x-axis
xlabel('Radius')

%Labels the y-axis
ylabel('Probability')
