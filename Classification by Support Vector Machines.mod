#AMPL model file for Classification by Support Vector Machines

param m;
param a{1..m, 1..4};
param d{1..m};

var w{1..4};
var y{1..m};
var gamma;

minimize function:
15*sum {j in 1..m}(y[j]) + 0.5*sum{j in 1..4}(w[j]^2);

subject to Constraint1 {i in 1..m}: (d[i]* ((sum {j in 1..4} w[j]*a[i,j]) - gamma) + y[i]) >= 1;
subject to Constraint2 {i in 1..m}: y[i] >=0;