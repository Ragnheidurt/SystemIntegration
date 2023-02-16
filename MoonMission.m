%% Step 1
% GTO & Constants
r_a = 42164*10^3;
r_p = 7000*10^3;
a = (r_a+r_p)/2;
G = 6.674*10^-11;
mu = 5.97*10^24;
r = (6371+167)*10^3;
mu_M = 7.3477*10^22;
r_m = 1737.4*10^3;
r_M = (r_m+(100000));
R_EM = 392508*10^3;

V_0 = sqrt((G*mu)/r);

V_esc = sqrt(2)*V_0;

V_2 = sqrt((G*mu_M)/r_M);

V_EM = sqrt((G*mu)/R_EM);

a_tx = (r+R_EM)/2;

% Transfer Velocity Earth

V_txE = sqrt(G*mu*(2/r-1/a_tx));

% Transfer Velocity Moon

V_txmu = sqrt(G*mu*(2/R_EM-1/a_tx));

deltaV_E = V_txE - V_0;

deltaV_M = abs((V_EM-V_2)-V_txmu);

deltaV_tot = deltaV_E+deltaV_M

%% Step 2
r_a = 42164*10^3;
r_p = 7000*10^3;
a = (r_a+r_p)/2;
G = 6.674*10^-11;
mu = 5.97*10^24;
r = (6371+200)*10^3;
mu_M = 7.3477*10^22;
r_m = 1737.4*10^3;
r_M = (r_m+(100000));
R_EM = 405500*10^3+r_m+6371e3;


V_0 = sqrt((G*mu)/r);

V_esc = sqrt(2)*V_0;

V_2 = sqrt((G*mu_M)/r_M);

V_EM = sqrt((G*mu)/R_EM);

a_tx = (r+R_EM)/2;

% Transfer Velocity Earth

V_txE = sqrt(G*mu*(2/r-1/a_tx));

% Transfer Velocity Moon

V_txmu = sqrt(G*mu*(2/R_EM-1/a_tx));

deltaV_E = V_txE - V_0;

deltaV_M = abs((V_EM-V_2)-V_txmu);

deltaV_tot = deltaV_E+deltaV_M







