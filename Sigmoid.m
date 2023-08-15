function g = Sigmoid(z)

g = zeros(size(z));
denominator =  1 + exp( -z);
g = 1 ./ denominator;

end