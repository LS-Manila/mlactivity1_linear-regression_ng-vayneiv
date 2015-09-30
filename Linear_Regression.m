function [ theta0,theta1] = Linear_Regression( x,y )
m=length(y);
theta=zeros(1,2);
theta2=zeros(1,2);
h1=zeros(1,2);
h=zeros(1,2);
x1=[ones(m,1),x];
for j=1:1500
    h=0;
    h1=0;
    for i=1:m
        h=h1+((x1(i,:)*theta')-y(i))*x1(i,:);
        h1=h;
    end
    theta=theta2-(0.07/m)*h;
    theta2=theta;
end
plot(x,y,'o');
hold on;
plot(x1(:,2),x1*(theta'),'-');
legend('Training data', 'Linear Regression');
theta0=theta(1);
theta1=theta(2);

end

