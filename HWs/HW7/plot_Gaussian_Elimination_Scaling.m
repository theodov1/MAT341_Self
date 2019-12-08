function plot_Gaussian_Elimination_Scaling()

%Initializes vector of N values
Nvec = 2:1:100;

for i = 1:length(Nvec)
    
    %Runs the go_Go_Gaussian_Elimination(N) function
    OpCount(i) = go_Go_Gaussian_Elimination(Nvec(i));
end

%creating the loglog plot
figure(1); loglog(Nvec, OpCount, 'b', 'LineWidth', 5)
xlabel('N')
ylabel('OpCount')

%creating the plot
figure(2); plot(Nvec, OpCount, 'b', 'LineWidth', 5)
xlabel('N')
ylabel('OpCount')

% As the size of N increases, the OpCount ie number of operations 
% increases.  The plot in figure 1 has a linear relationship while figure 2
% has a quadratic relationship.  