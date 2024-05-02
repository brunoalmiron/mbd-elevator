%% Elevator
%
% This example models an elevator system in Simscape(TM) Multibody(TM). The
% system is comprised of belt-cable pulley circuits which control the movement
% of the elevator and the door mechanism. The cable is approximated to be
% extensible by using high stiffness springs between the belt cable ends
% and the elevator. The motor pulley is motion actuated based on the
% necessary elevator kinematics computed from the Floor Number inputs.
% Effects of people entering and leaving the elevator are modeled using
% general variable mass blocks.

% Copyright 2023 The MathWorks, Inc.


%% Model
mdl = 'Elevator';
open_system(mdl);

%%  Simulation Results 
% Plot the elevator height, velocity, and acceleration.
% 
set_param(mdl,'SimMechanicsOpenEditorOnUpdate','off');
sim(mdl);
simlog_h = logsoutElevator.get('h');
simlog_v = logsoutElevator.get('v');
simlog_a = logsoutElevator.get('a');

% Plot results
simlog_handles(1) = subplot(3, 1, 1);
plot(simlog_h.Values.Time, simlog_h.Values.Data, 'LineWidth', 1)
grid on
title('Elevator Height')
ylabel('Height (m)')

simlog_handles(2) = subplot(3, 1, 2);
plot(simlog_v.Values.Time, simlog_v.Values.Data, 'LineWidth', 1)
grid on
title('Elevator Velocity')
ylabel('Velocity (m/s)')

simlog_handles(3) = subplot(3, 1, 3);
plot(simlog_a.Values.Time, simlog_a.Values.Data, 'LineWidth', 1)
grid on
title('Elevator Acceleration')
ylabel('Acceleration (m/s^2)')

xlabel('Time (s)')

linkaxes(simlog_handles, 'x')


%%
% Analyze the effects of cable stiffness on elevator dynamics [1]. 

fh = plotAcceleration();

%%
% [1] Vladic, J.; Dokic, R.; Kljajin, M.; Karakasic, M.(2011). Modelling and simulations of elevator
% dynamic behaviour

%%
set_param(mdl,'SimMechanicsOpenEditorOnUpdate','on');
close(simlog_handles.Parent);
close_system(mdl, 0);
clear simlog_handles simlog_a simlog_v simlog_h mdl
