# Image-Compressor
This is an Image Compression example using K-Means Clustering algorithm. Read more about it on [Wikipedia](https://en.wikipedia.org/wiki/K-means_clustering). The input image is read as a three-dimensional matrix
whose first two indices identify the pixel position and whose last index represents
Red, Green or Blue color values. After finding the top K colors to represent the image, each pixel
position is assigned to its closest centroid. This allows to represent the original
image using the centroid assignments of each pixel. In this way, the number of bits
that are required to describe the image is reduced significantly and we get the resultant compressed image.

Please have a look at the article [here](https://medium.com/@agarwalvibhor84/image-compression-using-k-means-clustering-8c0ec055103f) for detailed explanation.

## Need for Compression
An Image is stored as a matrix of numbers. Each number represents the RGB color value for a pixel inside the image. For true color representation in the image, we require 1 byte of data for each color. (1 byte = 8 bits. The value of color intensity can vary from 0-255) This makes it 3 bytes of storage for each pixel. This would give our total spectra of colors a range of about 16.7 million colors. However, it is extremely costly as far as memory requirements are concerned. Hence, it is usually desired to store the image with less memory space allocated for pixel intensity values.

## About the Algorithm
K-Means Algorithm is a popular algorithm for data mining and clustering. Its aim is to partition *n* objects into *k* different clusters on the basis of the mean value of the cluster. The mean value of the cluster is actually the centroid of the cluster in space. It is a part of the class of heuristic algorithms and is expected to converge quickly to a local optimum.

There are mainly two iterative steps in the algorithm:
1. **Assignment step**- Each data point is assigned to a cluster whose center is nearest to it.
2. **Update step**- New cluster centers (centroids) are calculated from the data points assigned to the new cluster by choosing the average value of these data points.
These steps continue until all the data points have been separated into clusters based on some difference and all points in a cluster are grouped together based on some similarity.

![Example of Clustered and Unclustered Data](https://cdn-images-1.medium.com/max/1600/1*ORZ8Scy75LFJOzDc4XJ25w.png)

## Compression Technique
1. The pixel values of the image will act as the dataset for the algorithm.
2. The K-Means algorithm will represent each pixel intensity data point in a 3-Dimensional space based on RGB values, i.e. each color point becomes a 3-D vector in a space with Red, Green and Blue acting as the axes.
3. Now all the data points will be clustered into similar colors, with each cluster center acting as the representative of all the data points in its cluster.
4. The image now only needs to store the label for the cluster each pixel belongs to alongside a table of color vectors for each cluster center.

### Working Example
- Assume we have an image of size *480x640*. This requires 24 bits for each pixel. The total size of the image becomes almost about **900KB**!
- We apply K-Means algorithm to the image taking *k = 64*. The resulting image will have 64 distinct colors selected from an optimized set of colors selected from the original
- Each pixel now needs **6 bits** to represent the cluster center it belongs to. An additional *192 bytes* will be required to hold the list of color vectors.
- The overall memory requirements of the image now become about **225KB**! That's roughly one-fourth of the original.

### Note
Note that the compression here will be lossy i.e. the fine details in an image may get vanished after this compression. However, we can take relatively higher value of ‘k’ to minimize this loss and make it as minimum as possible.

## Examples
These are few examples of compressed images-

![comp_bird](https://user-images.githubusercontent.com/26625980/34304104-3fd54314-e75e-11e7-8812-c5e0d8bcf48d.png)

![compressed](https://user-images.githubusercontent.com/26625980/34304124-5ef5de20-e75e-11e7-89c8-4d69bdfc1b27.png)
