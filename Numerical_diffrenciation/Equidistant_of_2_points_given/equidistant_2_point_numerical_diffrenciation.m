clc
clear all
close all
x = [1 2 3 4 5 6 7];
y = [-15.997 -19.808 -21.813 -15.712 14.875 103.968 312.947];

%%
% diffrence table
n=length(x);
table=zeros(n,n+1);
table(:,1)=x;
table(:,2)=y;
dd=n-1;
for j=3:n+1
    for i=1:dd
        table(i,j)=table(i+1,j-1)-table(i,j-1);
    end
    dd=dd-1;
end
%% 1st order Forward differentiation 
h = x(2)-x(1);
sum = 0;

for q = 1:n-1
    sum  = sum  + ((-1)^(q+1)*table(1,q+2))/q;
end
diff1 = sum/h;
%% 2nd order Forward diffrenciation
h = x(2)-x(1);
sum=table(1,4)-table(1,5)+(11/12)*table(1,6)-(5/6)*table(1,7);
diff=sum/h^2;


%% 1st order Backward differentiation 
h = x(2)-x(1);
sum = 0;
z=n;
for q = 1:n-1
    z=z-1;
    sum  = sum  + (table(z,q+2))/q;
end
diff1 = sum/h;
%% 2nd order Backward differentiation
n=length(x);
h = x(2)-x(1);
sum=table(n-2,4)-table(n-3,5)+(11/12)*table(n-4,6)-(5/6)*table(n-5,7);
diff1 = sum/h^2
