function plot_Nested_Times()

% This funtion calls the function calculate_Nested_For_Loop_Time(N) to 
% calculate the time it takes to run the Nested For Loop for all the 
% integers in the vector N.  Then, it plots times calculated for different 
% values of N for funtion using loglog.  

%Initialize the N vector for values of N to be plugged into the function
%calculate_Nested_For_Loop_Time(N).  
N = [1:1:10 20:10:100 125 150 175 200 225 250];

% Beginning of For loop.  Initialize and increment the value of k. k is 
% used to point to the appropriate element in vector N and to point to the 
% element in vector time_vec to assign the value.  

for k=1:length(N)
    
    % calculates time for nested for loop to run for the element of N and 
    % stores the time in new vector.  
    time_vec(k) = calculate_Nested_For_Loop_Time(N(k));
    
end

% Plots function using loglog.  Assigns N to the x-axis and time_vec to the
% y-axis.  Colors the plotted line magenta and made the line width 2.

loglog(N, time_vec,'m','LineWidth',2);

%Labels the x-axis 'N-Value'
xlabel('N-Value');

%Labels the y-axis 'Time to Run (seconds)'
ylabel('Time to Run (seconds)');
