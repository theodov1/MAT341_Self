function prob = estimate_Coin_In_Square_Probablity(r,N)

%This function calculates the estimated probability of a circle landing
%within a 1x1 square given inputed radius r and number of trials N.  

%The value of N=1e5 is a reasonable number of trials.  For smaller values
%of N, the results were approaching the approximate value of .80901 for
%N=1e5 and r=0.1 and larger values were equivalent to a certain decimal
%point.

%This problem is more difficult because we do not know the probability of
%the circle landing within the square where as we know when you flip a
%coin, the probability of it landing on one side or the other is 
%approximately 0.5.  

count=0;

for i=1:N
    
    %find center of circle within a 1x1 square.
    center_x=rand();
    center_y=rand();
    
    %determines the reach of the radius in the x and y direction
    radius_x=center_x+r;
    radius_y=center_y+r;
    
    %determines if the circle is within the square or not.
    if radius_x<1 && radius_y<1
        
        %if the circle is within the square, it adds one to the number of
        %times the circle landed in the square.
        count=count+1;
    end
end


%finds the probability of the circle landing in the square given the
%number of trials performed.  
prob=count/N;



