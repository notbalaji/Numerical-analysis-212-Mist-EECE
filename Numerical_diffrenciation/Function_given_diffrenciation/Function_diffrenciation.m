clc
clear all
close all
f=@(x)x^2+5*x;
h=1; %the value close to h->0 to get accurate value
d=1;%diffrenciation degree
p=6;% diff at that point x0
if d==1
    fd=(f(p+h)-f(p))/h;
    bd=(f(p)-f(p-h))/h;
    cd=(f(p+h)-f(p-h))/2*h;
elseif d==2
    fd=(f(p+2*h)-2*f(p+h)+f(p))/h^2;
    bd=(f(p-2*h)-2*f(p-h)+f(P))/h^2;
    cd=(f(p+h)-2*f(P)+f(p-h))/h^2;
end
fd
bd
cd