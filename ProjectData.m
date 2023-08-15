function Z = ProjectData(TrainX, U, K)

Z = zeros(size(TrainX, 1), K);
ReducedU = U(:, 1:K);
Z = TrainX * ReducedU;

end