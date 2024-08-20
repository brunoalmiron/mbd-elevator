t = 0:0.001:20;
f = t*3/2;
DataSeries = [];
for i = 1:length(t)
    dc1 = 0.5 + 0.5*sin(f(i)*2*pi*t(i));
    dc2 = 1 - dc1;
    dc3 = 0.5 + 0.5*sin(f(i)*2*pi*t(i)+2*pi/3);
    dc4 = 1 - dc3;
    dc5 = 0.5 + 0.5*sin(f(i)*2*pi*t(i)+4*pi/3);
    dc6 = 1 - dc5;
    DataSeries(i,1:6) = [dc1, dc2, dc3, dc4, dc5, dc6];
end
ts = timeseries(DataSeries, t);