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

%% OMG


r_tot = ((2*6371)+200+384400-100)*10^3;
r_a = 390771*10^3;
r_p = 6571*10^3;
a = (r_a+r_p)/2;
G = 6.674*10^-11;
m_E = 5.97*10^24;
mu = G*m_E;
r = (6371+200)*10^3;
mu_M = 4.905*10^12;
r_m = 1737.4*10^3;
r_M = (r_m+(100000));
R_EM = 405500*10^3+r_m+6371e3; % Total distance between center of Earth to center of moon

% Hohmann try ------------------------------------------------------------
v_c1 = sqrt(mu/r_p); % Circular speed at r_p
v_c2 = sqrt(mu/r_a); % Circular speed at r_a
v_cm = sqrt(mu_M/r_M); % Circular speed around moon orbit
v_e1 = sqrt(((2*mu)/r_p) - ((2*mu)/(r_a + r_p))); % Elliptical speed at r_p
v_e2 = sqrt(((2*mu)/r_a) - ((2*mu)/(r_a + r_p))); % Elliptical speed at r_a



delta_v1 = v_e1 - v_c1;
%delta_v2 = v_c2 - v_e2;
delta_v2 = v_cm - v_e2
%delta_v3 = v_e2 - v_cm;
delta_v_esc = v_c1 - V_esc
delta_v_tot = -delta_v_esc + delta_v1 + delta_v2 - v_cm






