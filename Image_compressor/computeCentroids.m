
function centroids = computeCentroids(X, idx, K)
    [m n] = size(X);
    centroids = zeros(K, n);
    counter = zeros(K,1);
    for i = 1:K
        centroids(idx(i),:) = centroids(idx(i),:) + X(i,:);
        counter(idx(i)) = counter(idx(i)) + 1;
    end
    centroids = centroids./counter;
end
