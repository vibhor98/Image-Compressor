
function centroids = computeCentroids(X, idx, K)
    [m n] = size(X);
    centroids = zeros(K, n);
    for i = 1:K
        ci = idx==i;
        ni = sum(ci);
        ci_matrix = repmat(ci, 1, n);
        centroids(i, :) = sum(X .* ci_matrix) ./ ni;
    end
end
