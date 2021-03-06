[data,names] = loadImageData('hw3_dataset/1_2d_3k','png');
options.overlay=0;
data=double(data);
D=L2_distance(data,data,1);
[Y,R,E]=Isomap2(D,data,'k',7,options);

figure;
     hold on
     plot(1:10, R, 'bo'); 
     plot(1:10, R, 'b-'); 
     hold off
     ylabel('Residual variance'); 
     xlabel('Isomap dimensionality'); 
	 
return;