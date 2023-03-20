clear all 
close all
clc

ha = input("Input value for ha in km: ");
hp = input("Input value for hp in km: ");
RE = 6371e3;
ra = ha*10^3+RE
rp = hp*10^3+RE
% ra = 35786e3+RE;
% rp = 167e3+RE;
% ra = 35975e3+RE;
% rp = 200e3+RE;
a = (ra+rp)/2;
G = 6.674*10^-11;
M_E = 5.97*10^24;
M_M = 7.3477*10^22;
r_m = 1737.4*10^3;
r_M = (r_m+(100000));
R_EM = 392508*10^3;
a_tx = (rp+R_EM)/2;
muM = G*M_M


vGTO = sqrt(G*M_E*(2/rp-1/a));
Vmoon = sqrt((G*M_E)/R_EM);
vtxe = sqrt(G*M_E*(2/rp-1/a_tx));
vtxm = sqrt(G*M_E*(2/R_EM-1/a_tx));

vorbitmoon = sqrt((G*M_M)/r_M);

ve = abs(vtxe-vGTO)
vinf = abs(Vmoon-vtxm)
% vtot = ve+vm

dvc = sqrt(vinf^2+(2*muM)/(r_M)) - sqrt(muM/r_M)

run("Moon_landing_BOTEC.m");
run("Powered_Descent_Moon.m");


fprintf("Delta v GTO to LTO: %f\n", ve);
fprintf("Delta v for braking into lunar orbit: %f\n",dvc);
fprintf("Delta v for breaking to 20 km orbit: %f\n", DV_Hohmann);
fprintf("Delta v for breaking: %f\n", DVbrake);
fprintf("Delta v for descent: %f\n", DVdescent);
fprintf("Delta v for landing: %f\n", (DVbrake+DVdescent));



