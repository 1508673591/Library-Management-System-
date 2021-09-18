CREATE VIEW 图书分类库存(图书类型编号,图书类型名,库存册数合计,库存金额合计)
 AS
 SELECT 图书类型.图书类型编号,图书类型.图书类型名,sum(图书.库存总量),sum(图书.价格*图书.库存总量)
 FROM  图书,图书类型
 WHERE 图书类型.图书类型编号=图书.图书类型编号
 GROUP BY 图书类型.图书类型编号,图书类型.图书类型名