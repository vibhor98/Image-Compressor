# Image-Compressor

This is an Image Compression example using K-Means Clustering algorithm.

Using K-means technique, we will be compressing the colored image using its pixel values.

First, let’s look at how the colored images are stored. An image comprises of several very small intensity values (dots) known as Pixels. The colored image is the image that includes color information for each pixel. In a colored image, each pixel is of 3 bytes containing RGB (Red-Blue-Green) values having Red intensity value, then Blue and then Green intensity value for each pixel. As you may have observed, the size of a colored digital image can be huge as each pixel requires 3 bytes or (3X8) bits intensity values. So, these images are often stored as the compressed images with lesser number of bits for intensity values and hence, lesser memory for storage.

Formally, image compression is the type of data compression applied to digital images to reduce their cost of storage or transmission. Before moving on to the implementation, let’s go through the K-means clustering algorithm briefly. K-means clustering is the optimization technique to find the ‘k’ clusters or groups in the given set of data points. The data points are clustered together on the basis of some kind of similarity. Initially, it starts with the random initialization of the ‘k’ clusters and then on the basis of some similarity (like euclidean distance metric), it aims to minimize the distance from every data point to the cluster center in each clusters. There are mainly two iterative steps in the algorithm:

a) Assignment step- Each data point is assigned to a cluster whose center is nearest to it.

b) Update step- New cluster centers (centroids) are calculated from the data points assigned to the new cluster by choosing the average value of these data points.

These iterative steps continue till the centroids seize to move further from their clusters. Now, we get several clusters separated due to some difference while some data points are grouped together due to similarity.
Read more about it on [Wikipedia](https://en.wikipedia.org/wiki/K-means_clustering).

The input image is read as a three-dimensional matrix whose first two indices identify the pixel position and whose last index represents Red, Green or Blue color values. After finding the top K colors to represent the image, each pixel position is assigned to its closest centroid. This allows to represent the original image using the centroid assignments of each pixel. In this way, the number of bits that are required to describe the image is reduced significantly and we get the resultant compressed image.

Please have a look at the article [here](https://medium.com/@agarwalvibhor84/image-compression-using-k-means-clustering-8c0ec055103f) for detailed explanation.

These are few examples of compressed images :

![comp_bird](https://user-images.githubusercontent.com/26625980/34304104-3fd54314-e75e-11e7-8812-c5e0d8bcf48d.png)

![compressed](https://user-images.githubusercontent.com/26625980/34304124-5ef5de20-e75e-11e7-89c8-4d69bdfc1b27.png)
