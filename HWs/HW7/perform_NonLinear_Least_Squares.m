function perform_NonLinear_Least_Squares()

%This function performs non-linear least squares to find the best fit 
%approximation through data {(xi; yi)} from i=1 to N.

%Initializes N
N  = 2500;
%Initializes tolerance
tol = 1e-5;
%Initializes error
err = 1;

%Calls the data
data = give_NonLinear_Least_Squares_Data(N);

%assigns the x-values
xData = data(:,1);
%assigns the y-values
yData = data(:,2);

%Initializes beta
Beta = [1, 0.5, 0.3]';

while err>tol
    
    for i = 1:N
       
        x = xData(i);
        expy = exp((-(x-Beta(2))^2)/(2*Beta(3)^2));
        
        %Calculates the Jacobian
        J(i, 1) = expy;
        J(i, 2) = Beta(1)*((x-Beta(2))/(Beta(3)^2))*expy;
        J(i, 3) = Beta(1)*((x-Beta(2))^2/(Beta(3)^3))*expy;
        
    end

    for i = 1:N
        
        x = xData(i);
        y = yData(i);
        expy = exp((-(x-Beta(2))^2)/(2*Beta(3)^2));
        
        rvec(i,1) = y-Beta(1)*expy;
        
    end
    
    %Calculate the inverse
    inverse = inv(J'*J)*J';
    %Calcuate the Pseudo Inverse
    PseudoInv = inverse*rvec;
    %Calculates new beta
    Beta_new = Beta + PseudoInv;
    %Calculates error
    err = sqrt((Beta_new-Beta)'*(Beta_new-Beta));
    %Reassigns values of beta
    Beta = Beta_new;
    
end

for i =1:N
    x = xData(i);
    expy = exp(-(x-Beta(2))^2/(2*Beta(3)^2));
    f(i,1) = Beta(1)*expy;
end

Beta

err

%plot(xData, yData, 'b', 'Markersize', 20,'Linewidth',6);
plot(xData, f, 'r', 'Linewidth', 4);
xlabel('xData');
ylabel('yData');
legend('Data','Model Fit')
    
    
    
    




