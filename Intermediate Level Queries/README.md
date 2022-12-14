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

#### 6. Some of the countries we ship to have very high freight charges. We'd like to investigate some more shipping options for our customers, to be able to offer them lower freight charges. Return the three ship countries with the highest average freight overall, in descending order by average freight.

![2022-08-30](https://user-images.githubusercontent.com/111266884/187367819-b8041295-fef7-4f17-a645-12c9f9d29bc8.png)

#### 7. We're continuing on the question above on high freight charges. Now, instead of using all the orders we have, we only want to see orders from the year 1997.

![2022-08-31](https://user-images.githubusercontent.com/111266884/187629467-e7adb151-30ad-4a8d-ad66-237ae01d83b8.png)

#### 8. We're continuing to work on high freight charges. We now want to get the three ship countries with the highest average freight charges. But instead of filtering for a particular year, we want to use the last 12 months of order data, using as the end date the last OrderDate in Orders.

![2022-08-31 (1)](https://user-images.githubusercontent.com/111266884/187632577-5c04764f-c69e-4c5e-ac8c-9efde3b5ee62.png)

#### 9. We're doing inventory, and need to show information like the below, for all orders. Sort by OrderID and Product ID:
EmployeeID, LastName, OrderID, ProductName, Quantity.

![2022-09-01 (1)](https://user-images.githubusercontent.com/111266884/187912850-86c7129a-b0b0-49d2-b361-ffd31de8d309.png)

#### 10. There are some customers who have never actually placed an order. Show these customers.

![2022-09-01](https://user-images.githubusercontent.com/111266884/187913165-d3767e4e-3507-4616-9409-7fcc1f65b2a9.png)

11. One employee (Margaret Peacock, EmployeeID 4) has placed the most orders. However, there are some customers who've never placed an order with her. Show only those customers who have never placed an order with her.

![2022-09-03](https://user-images.githubusercontent.com/111266884/188263152-68b12848-b5b5-40d8-84c8-dc2cc9dd52a2.png)











