# data_products

This application is based on linear regression algorithm and using ROCK datasets.The application predictsthe Permutation of a rock based on variable shape.
Rock dataset is a  data frame with 48 rows and 4 numeric columns.Twelve core samples from petroleum reservoirs were sampled by 4 cross-sections. Each core sample was measured for permeability, and each cross-section has total area of pores, total perimeter of pores, and shape.

In order to use application consider followings,
1. Please use Slider to input the value for Shape and the application will display the value for Permutation.
2. The Plot shows the linear relationship between the dependent and target variable

Dataset Details

1.	area	area of pores space, in pixels out of 256 by 256 /n
2.  peri	perimeter in pixels
3. 	shape	perimeter/sqrt(area)
4.  perm	permeability in milli-Darcies
