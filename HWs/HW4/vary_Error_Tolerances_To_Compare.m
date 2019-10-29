function vary_Error_Tolerances_To_Compare()

%This function tests and plots our functions for the Golden Search
%Algorithm and the Successive Parabolic Interpolation Algorithm for 
%different error tolerances.  

%initializes vector of different error tolerances.  
errTolVec=[1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];

for i=1:length(errTolVec) %increasing by increments of 1 from 1 to the length of the vector.  
   
   %solves for number of iterations for golden search and successive
   %parabolic interpolaition for the value of error tolerance in the
   %current position of the errTolVec and stores the number of iterations
   %in two new vectors.  
   N_GS(i)=golden_Search(errTolVec(i)); 
   N_SPI(i)=successive_Parabolic_Intepolation(errTolVec(i));
    
end

%Creates the first figure where we plot the error tolerance versus the
%number of iterations for the Golden Search Algorithm using semilogx.  
hold on 
figure(1)
semilogx(errTolVec, N_GS,'b','LineWidth',5);

%Lable the x and y axis 
xlabel('Error Tolerance');
ylabel('Number of Iterations');

%Creates a legend for the plot
leg = legend('Golden Search');
hold off

%Creates the second figure where we plot the error tolerance versus the
%number of iterations for the Successive Parabolic Interpolation Algorithm
%using loglog.  
figure(2)
hold on
loglog(errTolVec, N_SPI, 'r','LineWidth',5);

%Lable the x and y axis 
xlabel('Error Tolerance');
ylabel('Number of Iterations');

%Creates a legend for the plot
leg = legend('Succ. Par. Interp.');

hold off

%a) It seems that the Successive Parabolice Interpolation Algorithm
%converges to the minimum quicker than the Golden Search Algorithm for less 
%accurate tolerances.  
%
%b)After a certain tolerance, the Golden Search converges to the minimum
%quicker than the Successive Parabolice Interpolation Algorithm.  The
%convergence speed slows down significantly because the new values of x1,
%x2, and x3, are changing slower than they initially were for successive 
%parabolic interpolation.  



