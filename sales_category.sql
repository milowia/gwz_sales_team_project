SELECT 
category_1,
round(sum(turnover)) as turnover,
 FROM `data-analytics-bootcamp-363212.course14.gwz_sales` 
 group by category_1