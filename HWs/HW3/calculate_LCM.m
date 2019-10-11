function lcm_val = calculate_LCM(x,y)

%This function calculates the least common multiple of two integers.

%Initializes the multiple associated with x-input
mult_x=x;

%Initializes the multiple associated with y-input
mult_y=y;

%runs while loop while multiples are not equal
while mult_x ~= mult_y
    
    %if the x multiple is larger than the y multiple, this if statement
    %runs and adds another multiple to the y multiple.
    if mult_x>mult_y
        mult_y = mult_y + y;
    
    %if the y multiple is larger than the x multiple, this else statement
    %runs and adds another multiple to the x multiple.
    else
        mult_x = mult_x + x;
    end
    
    %this while loop runs until the mult_x and mult_y are equal to
    %eachother.  Once they are equal, the least common multiple has been
    %found.  
end

%sets the least common multiple value to be output.  
lcm_val = mult_x;

%if the user enters the same value for the x and y, this if statement will
%run, setting the least common multiple equal to the number inputed.  
if mult_x==mult_y
   
    lcm_val=mult_x;
    
end