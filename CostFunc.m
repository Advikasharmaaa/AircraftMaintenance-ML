function [J, gradient] = CostFunc(theta, TrainX, TrainY)


m = length(TrainY);
J = 0;
gradient = zeros(size(theta));

term1 = -1 .* (TrainY .* log(Sigmoid(TrainX * theta)));
term2 = 1 .* ((1-TrainY) .* log((1-Sigmoid(TrainX * theta))));

J = sum(term1 - term2) / m;
gradient = (TrainX' * (Sigmoid(TrainX * theta) - TrainY)) * (1/m);

end