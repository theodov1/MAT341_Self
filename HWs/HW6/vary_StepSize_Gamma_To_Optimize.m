function vary_StepSize_Gamma_To_Optimize()

%This script calls the Gradient_Descent_1 function and determines which
%value of gamma minimizes the total number of iterations needed to achieve
%a 1e-10 accuracy.  


%Initialize gamma vector that stores different values of gamma 
gammaVec=[0.5:0.02:1.5];

%run this loop for the length of the gamma vector
for i = 1:length(gammaVec)
    
    %Calculate the number of iterations for each gamma 
    gVec(i)= Gradient_Descent_1(1e-10,gammaVec(i));
    
end

figure(1);

%Plot the values of gamma vs the number of iterations, make the plot blue
%with a line width of 5pts.  
semilogx(gammaVec,gVec, 'blue', 'Linewidth', 5);

%Lable the y axis
ylabel('Number of Iterations');

%Label the x axis
xlabel('Gamma step-size');

%Create a legend for the plot
legend('fixed step');

%The best value for gamma step size seems to be 1 for this particular
%function.  