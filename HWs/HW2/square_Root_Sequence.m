function val = square_Root_Sequence(m,n)

% This function calculates the nested square root sequence t_n from HW2 and
% is used to help determine the limit of t_n as n gets large for m.  The 
% inputs for the function are m and n.  m is the value to be plugged into 
% the sequence and n is used to determine the nth term in the sequence.
% This function will return the value of the sequence for m at term t_n.  

%This while loop runs while n is odd.  
while mod(n,2)==1
    
    %initialize val2 to calculate the term in the sequence
    val2 = sqrt(m);
    
    %calculate t_1 term
    if n == 1
        val = sqrt(m);
    end

    %for loop to calculate for odd values of n>1. Runs until l=n finding 
    %the nth term.  Initialize value of l which is used to determine if 
    %you're adding or subtracting the previous value under the square root.  
    for l=2:1:n

        %if l is even, you add the value and set val equal to new computed
        %val2.
        if mod(l,2)==0
            val2 = sqrt(m + val2);
            val=val2;
        end

        %if l is odd, you subtract the value and set val equal to new computed
        %val2.
        if mod(l,2)==1
            val2 = sqrt(m - val2);
            val = val2;
        end
    end
    
    %forces the while loop to end
    break
end

%This while loop runs while n is even. 
while mod(n,2)==0
    
    %initialize val2 to calculate the term in the sequence
    val2 = 0;

    %for loop to calculate for even values of n. Runs until l=n finding 
    %the nth term.  Initialize value of l which is used to determine if 
    %you're adding or subtracting the previous value under the square root.
    for l=1:1:n
        
        %if l is odd, you add the value and set val equal to new computed
        %val2.
        if mod(l,2)==1
            val2 = sqrt(m + val2);
            val=val2;
        end

        %if l is even, you subtract the value and set val equal to new computed
        %val2.
        if mod(l,2)==0
            val2 = sqrt(m - val2);
            val = val2;
        end
         
    end
    
    %forces the while loop to end
    break
end

% When m=13, the sequence converges to 3.  
% When m=31, the sequence converges to 5.
% When m=43, the sequence converges to 6.  
