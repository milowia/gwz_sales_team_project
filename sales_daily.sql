SELECT 
  date_date, 
  ROUND(SUM(turnover)) AS daily_turnover,
  round(SUM(turnover)-SUM(purchase_price*qty)) as margin
FROM `learned-raceway-436207-f6.course12.gwz_sales`
INNER JOIN `course12.gwz_product`
USING (products_id)
GROUP BY date_date
ORDER BY date_date DESC