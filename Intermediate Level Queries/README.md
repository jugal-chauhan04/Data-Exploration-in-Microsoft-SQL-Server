#### 1. For this problem, we’d like to see the total number of products in each category. Sort the results by the total number of products, in descending order

![2022-08-25 (9)](https://user-images.githubusercontent.com/111266884/186732863-19bb8d66-539d-4a37-af47-f14e737c9422.png)

#### 2.In the Customers table, show the total number of customers per Country and City.

![2022-08-26](https://user-images.githubusercontent.com/111266884/186953344-402979b4-d9d6-49c1-8c90-7d2c542ab22b.png)

#### 3. What products do we have in our inventory that should be reordered? For now, just use the fields UnitsInStock and ReorderLevel, where UnitsInStock is less than the ReorderLevel, ignoring the fields UnitsOnOrder and Discontinued. Order the results by ProductID

![2022-08-27](https://user-images.githubusercontent.com/111266884/187039463-70e5ac54-61a8-4aeb-86c7-d81e5c01a573.png)

#### 4. Now we need to incorporate these fields—UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued—into our calculation. We’ll define “products that need reordering” with the following: UnitsInStock plus UnitsOnOrder are less than or equal to ReorderLevel. The Discontinued flag is false (0)

![2022-08-29](https://user-images.githubusercontent.com/111266884/187206316-fbd03179-c2d0-473d-824f-730782ef104a.png)

#### 5. A salesperson for Northwind is going on a business trip to visit customers, and would like to see a list of all customers, sorted by region, alphabetically. However, he wants the customers with no region (null in the Region field) to be at the end, instead of at the top, where you’d normally find the null values. Within the same region, companies should be sorted by CustomerID

![2022-08-29 (1)](https://user-images.githubusercontent.com/111266884/187207401-7d96496f-12a1-4157-8f95-8ffa3dcfbcf3.png)


