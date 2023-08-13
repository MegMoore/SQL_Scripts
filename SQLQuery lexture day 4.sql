SELECT COUNT(*) 'Number of Customers', MAX(Sales) 'Max Sales', MIN(sales) 'min sales',
        AVG(Sales) 'average sales', SUM(Sales)
    from Customers