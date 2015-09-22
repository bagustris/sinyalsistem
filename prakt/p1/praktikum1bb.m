% praktikum 1b revises

clear all; close all; clc;

addpath(genpath('../../code'))

[x1, n1]=stepseq(0,0,10);
[x2, n2]=sigshift(x1,n1,5);
[x22,n22]=sigadd(x1,n1, -x2,n2);
n3=n22(1:10);
x3=x22(1:10);

x4= 0.8.^n3;
[x5,n5]=sigmult(x4,n3,x3,n3);   % input x
