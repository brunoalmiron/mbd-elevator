dt = 0.001;
t = 0:dt:20;
f = -(t/20);
DataSeries = [];
Omega = 0;
for i = 1:length(t)
    dc1 = 0.5 + 0.5*sin(Omega);
    dc2 = 1 - dc1;
    dc3 = 0.5 + 0.5*sin(Omega+2*pi/3);
    dc4 = 1 - dc3;
    dc5 = 0.5 + 0.5*sin(Omega+4*pi/3);
    dc6 = 1 - dc5;
    DataSeries(i,1:6) = [dc1, dc2, dc3, dc4, dc5, dc6];

    fcur = f(i);
    dOmega = fcur*2*pi*dt;
    Omega = Omega + dOmega;
end
GatesAcceleration = timeseries(DataSeries, t);