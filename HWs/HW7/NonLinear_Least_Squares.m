function NonLinear_Least_Squares(N)

data=give_NonLinear_Least_Squares_Data(N);

xdata=data(:,1);
ydata=data(:,2);

tol=1e-5;
err=1;
beta=[0 0.5 0.03];


while err>tol
   for j=1:length(x)
       x=xdata(j);
       expy=exp(-(x-beta(2))^2/(2*beta(3)^2));
       J(j,1)=expy;
       J(j,2)=beta(1)
   end
    
    
end