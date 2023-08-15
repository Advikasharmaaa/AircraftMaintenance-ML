function [U, S] = PCA(TrainX)

[m, n] = size(TrainX);

U = zeros(n);
S = zeros(n);

covariance = (TrainX' * TrainX) / m;
[U,S,V] = svd(covariance);

end