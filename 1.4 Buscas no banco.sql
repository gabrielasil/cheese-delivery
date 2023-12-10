 
--Qual o produto mais vendido por cada localização?
WITH RankedCheeses AS (
  SELECT
    c.name AS cheese_name,
    ca.state,
    ROW_NUMBER() OVER (PARTITION BY ca.state ORDER BY SUM(oi.quantity) DESC) AS rank
  FROM
    order_items oi
    JOIN "order" o ON oi.order_id = o.id
    JOIN customer_address ca ON o.customer_address_id = ca.id
    JOIN cheese c ON oi.cheese_id = c.id
  GROUP BY
    c.name, ca.state
)
SELECT
  cheese_name,
  state
FROM
  RankedCheeses
WHERE
  rank = 1;

--Mostre o valor total de pagamentos feitos por cada meio de pagamento;
SELECT
  pfc.payment_type AS payment_form_catalog_id,
  COUNT(o.id) AS order_count
FROM
  "order" o
LEFT JOIN
  customer_payment_form cpf
ON
  cpf.id = o.customer_payment_form_id
LEFT JOIN
  payment_form_catalog pfc
ON
  pfc.id = cpf.payment_form_id
GROUP BY
  pfc.payment_type;

--Mostre a quantidade de vendas por cada localidade em forma decrescente;
SELECT
  s.state AS location,
  COUNT(o.id) AS order_count
FROM
  store s
LEFT JOIN
  "order" o
ON
  o.store_id = s.id
GROUP BY
  s.state
ORDER BY
  order_count DESC;

--Mostre qual cliente mais fez pagamentos no cartão e qual cliente mais fez pagamento em espécie
WITH RankedOrders AS (
  SELECT
    c.name,
    pfc.payment_type,
    COUNT(o.id) AS order_count,
    DENSE_RANK() OVER (PARTITION BY pfc.payment_type ORDER BY COUNT(o.id) DESC) AS rnk
  FROM
    customer c
  LEFT JOIN
    customer_address ca ON ca.customer_id = c.id
  INNER JOIN
    "order" o ON o.customer_address_id = ca.id
  LEFT JOIN
    customer_payment_form cpf ON cpf.id = o.customer_payment_form_id
  LEFT JOIN
    payment_form_catalog pfc ON pfc.id = cpf.payment_form_id
  WHERE
    pfc.payment_type IN ('Dinheiro em Espécie', 'Cartão de Crédito')
  GROUP BY
    c.name, pfc.payment_type
)
SELECT
  name,
  payment_type,
  order_count
FROM
  RankedOrders
WHERE
  rnk = 1;