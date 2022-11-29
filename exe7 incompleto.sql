SELECT CASE WHEN(numero) IS NOT NULL
THEN
logradouro+ ', '+pais+' - '+numero
ELSE
logradouro+', '+ pais
END AS end_completo
FROM fornecedor


SELECT SUBSTRING(cpf,1,3)+'.'+SUBSTRING(cpf,4,3)+','+SUBSTRING(cpf,5,3)+'-'+SUBSTRING(cpf,6,2) AS CPF,
SUBSTRING(rg,1,8)+'-'+SUBSTRING(rg,9,1) AS RG
FROM clientes


SELECT nota_fiscal, valor
FROM pedido
WHERE nota_fiscal = 1003
HAVING (valor % 1,10)