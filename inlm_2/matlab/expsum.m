function [s,antaltermer]=expsum(tol)
% s anger närmevärdet av e^6
% tol = toleransen
a = 1;
s = 0;
k = 0;
while ((2*a> tol) | (k<11))
s = s + a;
a = a*6/(k+1);
k = k+1;
end;
antaltermer = k;
