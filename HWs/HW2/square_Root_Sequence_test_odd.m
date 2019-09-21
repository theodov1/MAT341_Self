function val = square_Root_Sequence_test_odd(m,n)

% This function calculates the nested square root sequence tn from HW2 and
% is used to help determine the limit of tn as n gets large for m.  The 
% inputs for the function are m and n.  m is the value to be plugged into 
% the sequence and n is the to determine the nth term in the sequence.
% This function will return the value of the sequence for m at term tn.  

% initialize the value of tn
% t = sqrt(m+sqrt(m));

% initialize the value of k
% k=0;
while mod(n,2)==1
    
    val2 = sqrt(m);

    % start of while loop.  Runs while k does not equal n.  
    if n == 1
        val = sqrt(m);
    end

    for l=2:1:n
        % Runs this if statement while the value of k is odd.  

        if mod(l,2)==0
            % subtracts the value of the previous term from m and finds the
            % square root of that value.  
            val2 = sqrt(m + val2);
            val=val2;
        end

        if mod(l,2)==1
            % adds the value of the previous term to m and finds the square
            % root of that value. 
            val2 = sqrt(m - val2);
            val = val2;
        end
         
    end
    break
end