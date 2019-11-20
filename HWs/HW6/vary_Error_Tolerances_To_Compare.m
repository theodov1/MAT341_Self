function vary_Error_Tolerances_To_Compare()

errTolVec=[1e-1 1e-2 1e-3 1e-4 1e-5 1e-6 1e-7 1e-8 1e-9 1e-10 1e-11 1e-12];

for i=1:length(errTolVec) %increasing by increments of 1 from 1 to the length of the vector.  
   
   %solves for number of iterations for both Gradient Descent Methods 
   %for the value of error tolerance in thecurrent position of the 
   %errTolVec and stores the number of iterations in two new vectors.  
   GradDesc1vec(i)=Gradient_Descent_1(errTolVec(i),0.5);
   GradDesc2vec(i)=Gradient_Descent_2(errTolVec(i));
       
end

%Creates the first figure where we plot the error tolerance versus the
%number of iterations for the Gradient_Descent_1 Function and 
%Gradient_Descent_2 Function  using semilogx.  
figure(1)
semilogx(errTolVec, GradDesc1vec,'b','LineWidth',5);
hold on
semilogx(errTolVec, GradDesc2vec,'r','LineWidth',5);
hold off

%Lable the x and y axis 
xlabel('Error Tolerance');
ylabel('Number of Iterations');

%Creates a legend for the plot
legend('Fixed Steps', 'Barzilai-Browein')

%Creates the second figure where we plot the error tolerance versus the
%number of iterations for the Gradient_Descent_1 Function and 
%Gradient_Descent_2 Function  using loglog.  
figure(2)
loglog(errTolVec, GradDesc1vec,'b','LineWidth',5);
hold on
loglog(errTolVec, GradDesc2vec,'r','LineWidth',5);
hold off

%Lable the x and y axis 
xlabel('Error Tolerance');
ylabel('Number of Iterations');

%Creates a legend for the plot
legend('Fixed Steps', 'Barzilai-Browein')

%a)From the behavior of the graphs with a gamma being set equal to 1, it
%seems like they converge to the minimum at the same rate.

%b)With the fixed step size of gamma=0.5, it appears that the
%Gradient_Descent_2 function converges to the minimum faster.

%c)The Barzilai-Browein step size takes less iterations to converge so it
%takes less time.  

%d)I would use the Barzilai-Browein step size method since it is a more
%efficient method.  
