-- #############################################################
-- # 1. Retrieve the Total Number of Orders Placed
-- #############################################################
SELECT 
    COUNT(order_id) AS Total_Order
FROM
    orders;

-- #############################################################
-- # 2. Calculate the Total Revenue Generated from Pizza Sales
-- #############################################################
SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price), 2) AS Total_Sales
FROM
    order_details
JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;

-- #############################################################
-- # 3. Identify the Highest-Priced Pizza
-- #############################################################
SELECT 
    pizza_types.name, pizzas.price
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

-- #############################################################
-- # 4. Identify the Most Common Pizza Size Ordered
-- #############################################################
SELECT 
    pizzas.size,
    COUNT(order_details.order_details_id) AS order_count
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;

-- #############################################################
-- # 5. List the Top 5 Most Ordered Pizza Types with Quantities
-- #############################################################
SELECT 
    pizza_types.name,
    SUM(order_details.quantity) AS most_ordered
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY most_ordered DESC
LIMIT 5;

-- #############################################################
-- # 6. Calculate Average Order Quantity by Pizza Size
-- #############################################################
SELECT 
    pizzas.size,
    ROUND(AVG(order_details.quantity), 2) AS avg_quantity
FROM
    pizzas
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizzas.size
ORDER BY avg_quantity;

-- #############################################################
-- # 7. Calculate the Percentage Contribution of Each Pizza Type to Total Revenue
-- #############################################################
SELECT 
    pizza_types.name,
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS revenue,
    ROUND((SUM(order_details.quantity * pizzas.price) / (SELECT 
                    SUM(order_details.quantity * pizzas.price)
                FROM
                    order_details
                        JOIN
                    pizzas ON order_details.pizza_id = pizzas.pizza_id)) * 100,
            2) AS percentage_revenue
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.name
ORDER BY revenue DESC;

-- #############################################################
-- # 8. Analyze the Cumulative Revenue Generated Over Time
-- #############################################################
SELECT 
    orders.order_date,
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS cumulative_revenue
FROM
    orders
        JOIN
    order_details ON orders.order_id = order_details.order_id
        JOIN
    pizzas ON order_details.pizza_id = pizzas.pizza_id
GROUP BY orders.order_date
ORDER BY orders.order_date;

-- #############################################################
-- # 9. Determine the Top 3 Most Ordered Pizza Types Based on Revenue for Each Pizza Category
-- #############################################################
SELECT 
    pizza_types.category,
    pizza_types.name,
    ROUND(SUM(order_details.quantity * pizzas.price),
            2) AS revenue
FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY pizza_types.category , pizza_types.name
ORDER BY pizza_types.category , revenue DESC
LIMIT 3;
