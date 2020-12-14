%% Myo Initialization code, run this for one time

% mm = MyoMex(1);
% m = mm.myoData(1);
%%

m.startStreaming()
pause(60)  
data = m.emg_log;
m.stopStreaming()
m.clearLogs()