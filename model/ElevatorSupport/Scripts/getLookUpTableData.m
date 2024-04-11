function [FloorStairOut,FloorTimeStairOut,StairOutTime1,StairOutTime2,DoorStairOutTime1,DoorStairOutTime2] = getLookUpTableData(FloorNums,v_const)
% Function to generate Look up table data utilized by Floor Inputs in
% Elevator example

% Copyright 2023 The MathWorks, Inc.

TotalNumOfFloorsToChange = length(FloorNums);

v_const = 1.5;
a=1;
total_tf =0;

for i = 1:TotalNumOfFloorsToChange
    if i==1
        dis_floor = 3.60*FloorNums(i);
    else
        dis_floor =3.60*abs((FloorNums(i)-FloorNums(i-1)));
    end
if dis_floor~=0
    temp = (v_const/a) + (dis_floor - (v_const^2)/a)/v_const + (v_const/a);
else
    temp=0;
end
tf(i) = temp;
total_tf(i) = temp + sum(total_tf)+7;

if i ~=1
    tf_door(i) = tf_door(i-1)+7+tf(i);
else
    tf_door(i) = tf(i);
end

end

timeSplitForStair = [0 total_tf];
timeChangesStair = [0 total_tf(1:end-1)];

for k = 1:length(timeSplitForStair)-1
    if k ==1
        FloorTimeStairOut = [timeSplitForStair(k) timeSplitForStair(k)+1e-12];
    else
        FloorTimeStairOut = [FloorTimeStairOut timeSplitForStair(k) timeSplitForStair(k)+1e-12];
    end
end

[StairOutTime1,StairOutTime2]= getTimeChangesStair(timeChangesStair);
[DoorStairOutTime1,DoorStairOutTime2] = getTimeChangesStair(tf_door);
FloorStairOut = getFloorStair(FloorNums);

if length(FloorNums)==1
    StairOutTime1(1)=[];
    DoorStairOutTime1(2) = 0;
    DoorStairOutTime2(1) = 0;
    DoorStairOutTime2(3) = DoorStairOutTime2(2)+1e-9;
    FloorStairOut(1)=[];
end

end

function [StairOutTime1,StairOutTime2] = getTimeChangesStair(timeChangesStair)

for j = 1:length(timeChangesStair)
    if j ==1
        StairOutTime1 = [0 timeChangesStair(j) timeChangesStair(j)];
    elseif j ==length(timeChangesStair)
        StairOutTime1 = [StairOutTime1 timeChangesStair(j)];
    else
        StairOutTime1 = [StairOutTime1 timeChangesStair(j) timeChangesStair(j)];
    end
end

for m = 1:length(timeChangesStair)
    if m ==1
        StairOutTime2 = [timeChangesStair(m) timeChangesStair(m)+1e-12];
    else
        StairOutTime2 = [StairOutTime2 timeChangesStair(m) timeChangesStair(m)+1e-12];
    end
end
end

function FloorStairOut = getFloorStair(FloorVar)

for f = 1:length(FloorVar)
    if f ==1
        FloorStairOut = [0 FloorVar(f) FloorVar(f)];
    elseif f ==length(FloorVar)
        FloorStairOut = [FloorStairOut FloorVar(f)-FloorVar(f-1)];
    else
        FloorStairOut = [FloorStairOut FloorVar(f)-FloorVar(f-1) FloorVar(f)-FloorVar(f-1)];
    end
end
end