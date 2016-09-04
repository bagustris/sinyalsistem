   % create [sz x sz] matrix
   % fill the matrix with noise
   
   sz=256;
   NOISE_TRIALS=randn(sz);
   
   % create signal with a sine wave
   % divide the array SZ by sz/2
   SZ=1:sz;                         
   SZ=SZ/(sz/2);                   
   S=sin(2*pi*SZ);
       for i=1:sz;                      
           NOISE_TRIALS(i,:) = NOISE_TRIALS(i,:) + S;
       end;
   % create the average
   average=sum(NOISE_TRIALS)/sz;   
   odd_average=sum(NOISE_TRIALS(1:2:sz,:))/(sz/2);
   even_average=sum(NOISE_TRIALS(2:2:sz,:))/(sz/2);
   noise_estimate=odd_average-even_average;
   % create plot
   figure
   hold
   plot(NOISE_TRIALS(1,:),'g')
   plot(noise_estimate,'k')
   plot(average,'r')
   plot(S)
   xlabel('Trials')
   ylabel('Amplitude')
   title('Signal Averaging')
   gtext('Signal: Blue')
   gtext('Single trial: Green')
   gtext('Noise estimate: Black')
   gtext('Average: Red')