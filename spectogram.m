filename = 'team15.wav'; 
[y, Fs] = audioread(filename); 

figure()
pspectrum(y,1e3,'spectrogram','TimeResolution',0.1,'OverlapPercent',99,'Leakage',0.85);
