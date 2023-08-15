function PlotData(TrainX, TrainY)
 
figure; 
hold on;

pos = find(TrainY==1);
neg = find(TrainY==0);

plot(TrainX(pos,1), TrainX(pos,2), 'k+','LineWidth',2,'MarkerSize',7);
plot(TrainX(neg,1), TrainX(neg,2), 'ko','MarkerFaceColor','y','MarkerSize',7);

hold off;

end