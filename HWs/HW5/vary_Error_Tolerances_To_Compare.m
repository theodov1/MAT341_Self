function vary_Error_Tolerances_To_Compare()

%This function tests and plots our functions for the Golden Search
%Algorithm, Newton's Method for 1-D and the Successive Parabolic 
%Interpolation Algorithm for different error tolerances.  

%initializes vector of different error tolerances.  
errTolVec=[1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];

for i=1:length(errTolVec) %increasing by increments of 1 from 1 to the length of the vector.  
   
   %solves for number of iterations for golden search, Newton's method and successive
   %parabolic interpolaition for the value of error tolerance in the
   %current position of the errTolVec and stores the number of iterations
   %in two new vectors.  
   N_GS(i)=golden_Search(errTolVec(i));
   N_SPI(i)=successive_Parabolic_Intepolation(errTolVec(i));
   N_NM1D(i)=Newtons_Method_1D(errTolVec(i));
    
end


%Creates the first figure where we plot the error tolerance versus the
%number of iterations for the Golden Search Algorithm Newton's method and 
%successive parabolic interpolaition using semilogx.  

figure(1)
semilogx(errTolVec, N_GS,'b','LineWidth',5); hold on 
semilogx(errTolVec, N_SPI,'r','LineWidth',5);hold on 
semilogx(errTolVec, N_NM1D,'k','LineWidth',5);hold on 

%Lable the x and y axis 
xlabel('Error Tolerance');
ylabel('Number of Iterations');

%Creates a legend for the plot
leg = legend('Golden Search','Succ. Para. Interp.','Newton Method');


%Creates the second figure where we plot the error tolerance versus the
%number of iterations for the Golden Search Algorithm Newton's method and 
%successive parabolic interpolaition using loglog.  

figure(2)

loglog(errTolVec, N_GS,'b','LineWidth',5); hold on
loglog(errTolVec, N_SPI,'r','LineWidth',5); hold on
loglog(errTolVec, N_NM1D,'k','LineWidth',5); hold on

%Lable the x and y axis 
xlabel('Error Tolerance');
ylabel('Number of Iterations');

%Creates a legend for the plot
leg = legend('Golden Search','Succ. Para. Interp.','Newton Method');


% a) Newtons Method converges faster that the other approximation methods.   

% b) When you increase the accuracy threshold, it takes less iterations to
% find the values to achieve that accuracy level.  No it does not which can 
% be seen reflected in the graph.  

% c) The convergence rates could change for these algorithms if the intial
% conditions change.  


