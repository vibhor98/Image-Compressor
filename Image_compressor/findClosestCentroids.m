function idx = findClosestCentroids(X, centroids)
    K = size(centroids, 1);
    idx = zeros(size(X, 1), 1);

    for i = 1:size(X, 1)
        index = zeros(1, K);
        for j = 1:K
            index(1, j) = sqrt(sum(power((X(i, :) - centroids(j, :)), 2)));
        end
        [d, id] = min(index);
        idx(i, 1) = id;
    end
end
