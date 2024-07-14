function fh = plotAcceleration()
% Function to plot simulation results from Elevator example

% This code generates simulation results and compares plots of elevator accelerations when : 
% - Cable stiffness is considered constant with no damping 
% - Cable stiffness is considered to vary with respect to free cable length with no damping 

% Copyright 2023 The MathWorks, Inc.

mdl = 'Elevator';

%% Set Cable Stiffness to Constant, No Damping
if ~bdIsLoaded(mdl)
    open_system(mdl);
end

set_param(mdl,'StopTime','19');
set_param([mdl,'/Elevator Floor Input'],'FloorNums','7');

mdlWks = get_param(mdl,'ModelWorkspace');
% set the damping model work space variable to 0 
assignin(mdlWks,'D',100); 
% set cable stiffness to constant 
set_param([mdl,'/Elevator Assembly/ElevatorCabin/CableStiffnessModel'],...
    'StiffnessModelChoice','Constant Stiffness');

p_a = get_param([mdl,'/Elevator Assembly/ElevatorPrismatic/PS-Simulink Converter1'],'PortHandles');
set_param(p_a.Outport(1),'DataLogging','on');
% Simulate model
sim(mdl);
fh = figure;

hold on;
simlog_a = logsoutElevator.get('a');
Accel_Data_t = simlog_a.Values.Time;
Accel_Data_a = simlog_a.Values.Data;
% Plot the elevator acceleration 
plot(Accel_Data_t,Accel_Data_a,'color',[0 0 1])
xlabel('Time (s)');
ylabel('Elevator Acceleration (m/s^2)');
title('Effects of cable stiffness on elevator acceleration (low damping)');

%% Set Cable Stiffness to Variable, No Damping

mdlWks = get_param(mdl,'ModelWorkspace');
% set the damping model work space variable to 0 
assignin(mdlWks,'D',100);
% set the stiffness Model to Variable  
set_param([mdl,'/Elevator Assembly/ElevatorCabin/CableStiffnessModel'],...
    'StiffnessModelChoice','Variable Stiffness');

p_k = get_param([mdl,'/Elevator Assembly/ElevatorCabin/CableStiffnessModel/StiffnessSwitch'],'PortHandles');
set_param(p_k.Outport(1),'DataLogging','on');
% simulate model
sim(mdl);

simlog_a = logsoutElevator.get('a');
Accel_Data_t = simlog_a.Values.Time;
Accel_Data_a = simlog_a.Values.Data;

simlog_k = logsoutElevator.get('k');
Stiffness_Data_t = simlog_k.Values.Time;
Stiffness_Data_k = simlog_k.Values.Data;

% Plot the elevator acceleration 
plot(Accel_Data_t,Accel_Data_a,'-','color',[1 0 0])
   
yyaxis right
ylabel('Cable Stiffness (N/m)');
plot(Stiffness_Data_t,Stiffness_Data_k,'color',[0 0.5 0.5]);
xlim([0 19]);
legend({'Cabin Acceleration with Constant Cable Stiffness',...
    'Cabin Acceleration with Variable Cable Stiffness',...
    'Cable Stiffness Changes'},'location','northwest');
fh.Children(2).YAxis(2).Color = [0 0.5 0.5];
hold off

%% Reset the model workspace variables
assignin(mdlWks,'D',3000);
set_param([mdl,'/Elevator Assembly/ElevatorCabin/CableStiffnessModel'],...
    'StiffnessModelChoice','Constant Stiffness');
set_param(p_a.Outport(1),'DataLogging','off');
set_param(p_k.Outport(1),'DataLogging','off');
set_param(mdl,'StopTime','35');
set_param([mdl,'/Elevator Floor Input'],'FloorNums','[5 3]');