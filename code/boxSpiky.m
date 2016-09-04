% Create folding of rectangular impulse with spiky function
% source : Wikipedia convolution

clear

X=-2.1:0.001:4;
F1=exp(-X);
F1(X<0)=0;
F2=abs(X)<=0.5;
clf

[tmp zero_offset] = min(abs(X));

SyncFrames=[1 round(20.3366666*(1:numel(X)))];
frame=1;
integral=nan(size(X));

for offset_i=1:numel(X);
  offset=X(offset_i);
  shift=offset_i-zero_offset;
  F2_shifted = circshift(F2, [0 shift]);
  product = F2_shifted.*F1;
  integral(offset_i) = sum(product)/numel(X)*(X(end)-X(1));
  
    if offset_i==SyncFrames(frame)
        frame=frame+1;
        area(X, product, 'facecolor', 'yellow');
        hold on
        plot(X, F1, 'b', X, F2_shifted, 'r', X, integral, 'k', [offset offset], [0 2], 'k:')
        hold off
        axis image
        axis([-1.6 3.1 0 1.1])
        xlabel('\tau & t');
        grid on
        legend('Area under f(\tau)g(t-\tau)', 'f(\tau)', 'g(t-\tau)', '(f\astg)(t)');
        set(gca, 'Color','none');
        print('-dpng','-r120', sprintf('/tmp/conv_box_spike_%06d.png', offset_i));
        drawnow;
  end
end

system('"/usr/bin/convert" -layers Optimize -delay 10 /tmp/conv_box_spike_*.png conv_box_spike.gif');
delete('/tmp/*.png');