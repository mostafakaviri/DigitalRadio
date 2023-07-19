clc
clear all

disp('I=1 (FM_AVA=96000), I=2 (FM_EQTESAD=144000), I=3 (FM_GOFTOGO=288000), I=4 (FM_FARHANG=240000)');
I=input('Enter number of frequency :\n');


FM_AVA=96000;
FM_EQTESAD=144000;
FM_GOFTOGO=288000;
FM_FARHANG=240000;
Fs=480000;
freqdev=50;

fileID = fopen('input.txt','r');
formatSpec = '%f';
y = fscanf(fileID,formatSpec);
fclose(fileID);
audiowrite('m.wav',y,Fs);

if I==1

FM_freq=FM_AVA;

ynew = fmmod(y,FM_freq,Fs,freqdev);
% ynew=y(1:192000);
audiowrite('m_Ava.wav',ynew,Fs);

y1f=fft(ynew);
y2 = bandpass(ynew,[20 20000],Fs);
audiowrite('m_Ava_f.wav',y2,Fs);

% player = audioplayer(y2, Fs);
% play(player);


disp('I=1 (FM_AVA=96000), I=2 (FM_EQTESAD=144000), I=3 (FM_GOFTOGO=288000), I=4 (FM_FARHANG=240000)');
I=input('Enter number of frequency :\n');
end

if I==2

FM_freq=FM_EQTESAD;

ynew = fmmod(y,FM_freq,Fs,freqdev);
% ynew=y(1:192000);
audiowrite('m_Eqtesad.wav',ynew,Fs);


y1f=fft(ynew);
y2 = bandpass(ynew,[20 20000],Fs);
audiowrite('m_Eqtesad_f.wav',y2,Fs);


disp('I=1 (FM_AVA=96000), I=2 (FM_EQTESAD=144000), I=3 (FM_GOFTOGO=288000), I=4 (FM_FARHANG=240000)');
I=input('Enter number of frequency :\n');
end


if I==3

FM_freq=FM_GOFTOGO;

ynew = fmmod(y,FM_freq,2*FM_freq,freqdev);
% ynew=y(1:192000);
audiowrite('m_Goftogo.wav',ynew,Fs);




y1f=fft(ynew);
y2 = bandpass(ynew,[20 20000],Fs);
audiowrite('m_Goftogo_f.wav',y2,Fs);


disp('I=1 (FM_AVA=96000), I=2 (FM_EQTESAD=144000), I=3 (FM_GOFTOGO=288000), I=4 (FM_FARHANG=240000)');
I=input('Enter number of frequency :\n');
end



if I==4

FM_freq=FM_FARHANG;

ynew = fmmod(y,FM_freq,2*FM_freq,freqdev);
% ynew=y(1:192000);
audiowrite('m_Farhang.wav',ynew,Fs);




y1f=fft(ynew);
y2 = bandpass(ynew,[20 20000],Fs);
audiowrite('m_Farhang_f.wav',y2,Fs);

end































% 
% r2_mag=abs(y2); %Magnitude Spectrum
% r2_phase=phase(y2); %Phase Spectrum
% 
% ra_phase=r2_phase;
% ra=r2_mag.*(cos(ra_phase)+i*sin(ra_phase));
% 
% y2ifft=ifft(ra,Fs1);
% 
% audiowrite('m3.wav',y2ifft,Fs1);
% 







