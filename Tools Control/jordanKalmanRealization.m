clc 
clear all
%% Tf Realization 

P = zpk([1.3 -2],[-1 -2 -8],1);
sysM = canon(P,'modal');
sysC = canon(P,'companion');
%disp(sysC.a);
%disp(sysM.a);

%% Jordan Form of A

[Tm1,JM] = jordan(sysC.a);
disp('Jordan Form:');
JM
Bj = Tm1\sysC.b
Cj = sysC.c*Tm1
%JC = jordan(sysC.a)

%% Kalman decomposition

disp('Kalman decomposition:');
[G,U]=minreal(sysM);
Ak= U*sysM.a*U'
Bk = U*sysM.b
Ck = sysM.c*U'

rank(ctrb(sysM.a,sysM.b))
rank(obsv(sysM.a,sysM.c))