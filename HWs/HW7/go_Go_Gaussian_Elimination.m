function OpCount = go_Go_Gaussian_Elimination(N)

%this Function takes in one input, N which is the size of the matrix, and 
%returns the operation count, OpCount, necessary to row reduce a matrix, A
% exists R^(NxN), to reduced-row echelon form.

%Creates the NxN random matrix
A = rand(N,N);

%Initializes the counter
OpCount = 0;

%this loop is reducing the matrix into Row Echelon Form
for k=1:N
    
    for i=k:N
        
        for j=1:N
            
            %Divides the matrix rows
            B = (A(i,j)/A(k,k));
            
            %Increases the counter
            OpCount = OpCount+1;
            
            if i==k
                
                A(i,j) = B;
                
            else 
                
                val = B*A(k,j);
                
                OpCount = OpCount+1;
                
                A(i,j) = val-A(i,j);
                
                OpCount = OpCount+1;
            end
        end
    end
end

for k=N:-1:2
    for i=k-1:-1:1
        B = A(i,k)*A(k,k);
        OpCount = OpCount+1;
        
        A(i,k) = A(i,k)-B;
        OpCount = OpCount+1;
    end
end