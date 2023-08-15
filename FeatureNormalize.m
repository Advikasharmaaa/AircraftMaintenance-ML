function [X_norm, meu, sigma] = FeatureNormalize(TrainX)

meu = mean(TrainX);
X_norm = bsxfun(@minus, TrainX, meu);

sigma = std(X_norm);
X_norm = bsxfun(@rdivide, X_norm, sigma);

end