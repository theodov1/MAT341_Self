function fit_Polynomial_Series()

%This function performs linear least squares to find the best fit 
%polynomial of degree 12

%Initialize number of data points
N = 250; 
%Initialize X-Data
xData = linspace(-2*pi, 2*pi, N);
%Initialize Y-Data
yData = cos(xData);

for i = 1:N
    
    %Calls x-values from data above
    x = xData(i);
    %Calls y-values from data above
    y = yData(i);
    %Calculates A vector
    A(i,:) = [1, x, x^2, x^3, x^4, x^5, x^6, x^7, x^8, x^9, x^10, x^11, x^12];
    %Calculates B vector
    B(i,:) = y;
end

%Calculates the PSeudo Inverse
PseudoInv = (inv(A'*A))*A';
%Calculates Beta
beta = PseudoInv*B

for i = 1:N
    %Calls X-data
    x = xData(i);
    %Calculates f
    f(i,1) = beta(1) + beta(2)*x + beta(3)*x^2 +beta(4)*x^3 + beta(5)*x^4 + beta(6)*x^5 + beta(7)*x^6 + beta(8)*x^7 + beta(9)*x^8 + beta(10)*x^9 + beta(11)*x^10 + beta(12)*x^11 + beta(13)*x^12;

end

%Plots the Data and the best fit data
figure; plot(xData, yData, 'o', 'Linewidth', 6);
hold on;
plot(xData, f,'r','Linewidth', 4);
xlabel('xData');
ylabel('yData');
legend('Data', 'Best Poly Fit');

%Calculates the residual & outputs l2_norm
residual = B-A*beta;
l2norm = sqrt(residual'*residual)

% a) When N=10, the residual is 0.7318. When N=50, the residual is 
% 5.1501e-04. When N=250, the residual is 0.0011.  When N increases the
% residual decreases.  

% b) We have seen cos(x) written as a Taylor Series with coefficients 1 and
% -1.

% c) When N=250, the coefficients are:
%     0.9999
%     0.0000
%    -0.4998
%    -0.0000
%     0.0416
%     0.0000
%    -0.0014
%    -0.0000
%     0.0000
%     0.0000
%    -0.0000
%    -0.0000
%     0.0000

% d) The coefficients appear to relate to a Taylor Series pattern.  
    