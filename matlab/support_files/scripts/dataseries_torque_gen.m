t = 0:0.001:20;
DataSeries = [];
for i = 1:length(t)
    if t(i) < 5
        torque = t(i)*4;
    elseif t(i) < 10
        torque = 20;
    elseif t(i) < 15
        torque = 40;
    else
        torque = -10;
    end
    DataSeries(i,1) = torque;
end
ts = timeseries(DataSeries, t);
plot(ts)