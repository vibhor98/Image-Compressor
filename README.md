# Image-Compressor
This is an Image Compression example using K-Means Clustering algorithm. Read more about it on [Wikipedia](https://en.wikipedia.org/wiki/K-means_clustering). The input image is read as a three-dimensional matrix
whose first two indices identify the pixel position and whose last index represents
Red, Green or Blue color values. After finding the top K colors to represent the image, each pixel
position is assigned to its closest centroid. This allows to represent the original 
image using the centroid assignments of each pixel. In this way, the number of bits 
that are required to describe the image is reduced significantly and we get the resultant compressed image.

Please have a look at the article [here](https://medium.com/@agarwalvibhor84/image-compression-using-k-means-clustering-8c0ec055103f) for detailed explaination.

These are few examples of compressed images -

![comp_bird](https://user-images.githubusercontent.com/26625980/34304104-3fd54314-e75e-11e7-8812-c5e0d8bcf48d.png)

![compressed](https://user-images.githubusercontent.com/26625980/34304124-5ef5de20-e75e-11e7-89c8-4d69bdfc1b27.png)
