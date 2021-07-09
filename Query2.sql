SELECT account.account_id, customer.fed_id, product.name
FROM account
INNER JOIN customer ON account.cust_id = customer.cust_id
INNER JOIN product ON account.product_cd = product.product_cd 
WHERE customer.cust_type_cd = 'I';
