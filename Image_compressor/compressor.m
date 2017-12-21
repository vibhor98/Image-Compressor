
A = double(imread('bird_small.png'));
% Each RGB value ranges from 0-255 (8 bits representation).
% So, all values are in range 0-1
A = A/255;

img_size = size(A);
% Reshaping the img to have 1 pixel value in one row
X = reshape(A, img_size(1)*img_size(2), 3);

K = 16;  % No. of clusters required (#colors here)
max_iters = 10;

initial_centroids = kMeansInitCentroids(X, K);
% Run K-Means algo
[centroids, idx] = runkMeans(X, initial_centroids, max_iters);

idx = findClosestCentroids(X, centroids);
X_recovered = centroids(idx, :);
% Image represented by 3D matrix
X_recovered = reshape(X_recovered, img_size(1), img_size(2), 3);

% Display Original image
subplot(1, 2, 1);
imagesc(A);
title('Original');

% Display Compressed image
subplot(1, 2, 2);
imagesc(X_recovered);
title('Compressed image');
