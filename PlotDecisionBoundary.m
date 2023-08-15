function PlotDecisionBoundary(theta, TrainX, TrainY)

PlotData(TrainX(:,1:2), TrainY);
hold on

if size(TrainX, 2) <= 3
    
    plot_x = [min(TrainX(:,2))-2,  max(TrainX(:,2))+2];
    plot_y = (-theta(1) - theta(2)*plot_x) / theta(3);   
    plot(plot_x, plot_y)
   
    legend('Maintenance', 'No Maintenance', 'Decision Boundary');
    axis([-7, 3, -5, 3])
else
    
    u = linspace(-1, 1.5, 50);
    v = linspace(-1, 1.5, 50);
    z = zeros(length(u), length(v));
    
    for i = 1:length(u)
        for j = 1:length(v)
            z(i,j) = mapFeature(u(i), v(j))*theta;
        end
    end
    z = z'; 
   
    contour(u, v, z, [0, 0], 'LineWidth', 2)
end
hold off

end