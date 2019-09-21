function val = square_Root_Sequence_test_even(m,n)

while mod(n,2)==0
    
    val2 = 0;

    % start of while loop.  Runs while k does not equal n.  

    for l=1:1:n
        % Runs this if statement while the value of k is odd.  

        if mod(l,2)==1
            % subtracts the value of the previous term from m and finds the
            % square root of that value.  
            val2 = sqrt(m + val2);
            val=val2;
        end

        if mod(l,2)==0
            % adds the value of the previous term to m and finds the square
            % root of that value. 
            val2 = sqrt(m - val2);
            val = val2;
        end
         
    end
    break
end