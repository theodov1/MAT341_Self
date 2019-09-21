function time = calculate_Nested_For_Loop_Time(N)

% The function calculate_Nested_For_Loop_Time.m takes a single argument of
% an integer N and passes back the time it takes this loop to run for the
% given N.  

% starts timing code using tic
tic

% initialize k value
k = 0;

% code for the nested for loop
for i1 = 1:N
    for i2 = 1:N
        for i3 = 1:N
            for i4 = 1:N
                k = k+1;
            end
        end
    end
end

% ends the timer for the code and allows time to equal the ending time.  
time = toc;



