# **Pizza Sales SQL Analysis**

## **Overview**
This project demonstrates SQL queries used to analyze data from a pizza sales dataset. The dataset contains information about orders, pizzas, pizza types, and their corresponding details. The queries are designed to extract meaningful insights, such as total sales, popular pizza types, average quantities, and revenue contributions.

---

## **Dataset Structure**
The project assumes the following key tables:

### `orders`
| Column Name   | Description                         |
|---------------|-------------------------------------|
| `order_id`    | Unique ID for each order           |
| `order_date`  | Date the order was placed          |
| `order_time`  | Time the order was placed          |

### `order_details`
| Column Name          | Description                             |
|----------------------|-----------------------------------------|
| `order_details_id`   | Unique ID for each order detail         |
| `order_id`           | ID linking to the corresponding order   |
| `pizza_id`           | ID linking to the specific pizza ordered|
| `quantity`           | Quantity of pizzas ordered             |

### `pizzas`
| Column Name   | Description                                  |
|---------------|----------------------------------------------|
| `pizza_id`    | Unique ID for each pizza                    |
| `pizza_type_id`| ID linking to the type of pizza             |
| `size`        | Size of the pizza (Small, Medium, Large)    |
| `price`       | Price of the pizza                          |

### `pizza_types`
| Column Name   | Description                            |
|---------------|----------------------------------------|
| `pizza_type_id`| Unique ID for each pizza type         |
| `name`        | Name of the pizza type                |
| `category`    | Category of the pizza (e.g., Veg, Non-Veg, Specialty) |

---

## **SQL Queries**
Below are the key queries included in this project and their purposes:

### **Basic Queries**
1. **Retrieve the Total Number of Orders Placed**  
   Counts the total number of orders in the dataset.

2. **Calculate the Total Revenue Generated from Pizza Sales**  
   Calculates total sales revenue by multiplying pizza prices by their ordered quantities.

3. **Identify the Highest-Priced Pizza**  
   Fetches the most expensive pizza based on price.

4. **Identify the Most Common Pizza Size Ordered**  
   Determines which pizza size (Small, Medium, or Large) is most frequently ordered.

### **Intermediate Queries**
5. **List the Top 5 Most Ordered Pizza Types**  
   Retrieves the five most popular pizza types based on total quantities ordered.

6. **Calculate Average Order Quantity by Pizza Size**  
   Computes the average number of pizzas ordered for each size.

7. **Calculate the Percentage Contribution of Each Pizza Type to Total Revenue**  
   Calculates the percentage of total revenue contributed by each pizza type.

8. **Analyze the Cumulative Revenue Generated Over Time**  
   Tracks how revenue has accumulated across order dates.

### **Advanced Query**
9. **Determine the Top 3 Most Ordered Pizza Types Based on Revenue for Each Pizza Category**  
   Finds the top 3 pizza types in each category by calculating their revenue.

---

## **Usage Instructions**
1. **Prerequisites:**
   - A SQL database (e.g., MySQL, PostgreSQL, SQLite) with the dataset tables created and populated.
   - A SQL editor (e.g., MySQL Workbench, pgAdmin, or any database client).

2. **Execution:**
   - Copy and paste the provided SQL queries into your SQL editor.
   - Run the queries to extract insights from the dataset.

3. **Customization:**
   - Modify the queries to adapt to your specific schema or add additional filtering logic.

---

## **Key Insights from Queries**
- The total revenue generated helps track business performance.
- The most popular pizza size and type provide insights into customer preferences.
- Revenue contributions by pizza type assist in inventory and pricing strategies.
- Cumulative revenue analysis over time supports trend forecasting.

---

## **Future Improvements**
- Add visualizations for better data representation using tools like Tableau, Power BI, or Python libraries (e.g., Matplotlib, Seaborn).
- Enhance dataset with customer demographics and feedback for more granular insights.
- Optimize query performance for larger datasets.

---

## **Contributing**
Feel free to suggest improvements or add new queries to enhance the project. Contributions are welcome!

---

## **Contact**
For queries or suggestions, please reach out to [rahulgoraksha@gmail.com].

