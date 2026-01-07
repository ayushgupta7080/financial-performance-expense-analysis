-- Financial Performance & Expense Analysis
-- Dataset: financial_data.csv

-- 1. Total Revenue, Expense, and Profit
SELECT 
    SUM(Revenue) AS Total_Revenue,
    SUM(Expense_Amount) AS Total_Expense,
    SUM(Revenue) - SUM(Expense_Amount) AS Total_Profit
FROM financials;

-- 2. Monthly Financial Performance
SELECT 
    strftime('%Y-%m', Date) AS Month,
    SUM(Revenue) AS Revenue,
    SUM(Expense_Amount) AS Expense,
    SUM(Revenue) - SUM(Expense_Amount) AS Profit
FROM financials
GROUP BY Month
ORDER BY Month;

-- 3. Department-wise Expense Analysis
SELECT 
    Department,
    SUM(Expense_Amount) AS Total_Expense
FROM financials
GROUP BY Department
ORDER BY Total_Expense DESC;

-- 4. Expense Category Breakdown
SELECT 
    Expense_Category,
    SUM(Expense_Amount) AS Total_Expense
FROM financials
GROUP BY Expense_Category
ORDER BY Total_Expense DESC;

-- 5. Region-wise Financial Performance
SELECT 
    Region,
    SUM(Revenue) AS Revenue,
    SUM(Expense_Amount) AS Expense,
    SUM(Revenue) - SUM(Expense_Amount) AS Profit
FROM financials
GROUP BY Region;
