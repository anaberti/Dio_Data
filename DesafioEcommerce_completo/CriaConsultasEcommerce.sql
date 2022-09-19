use ecommerce;

/* uso de count*/
select count(*) from participante;
/* retorna a quantidade 7 de dados persistidos em participantes */

/* Select where + order by - lista de dados de PF: */
Select part.idParticipante, concat(firstName, lastName) as Nome, cpf, emailParticipante
from participante as part, pf as pf
where part.idParticipante = pf.idParticipante and part.PF_PJ = 'PF'
order by Nome;

/* lista de dados de PJ */
Select part.idParticipante as ID, razaoSocial as RazaoSocial, cnpj as CNPJ, nomeContato as Contato, emailParticipante as Email
from participante as part, pj as pj
where part.idParticipante = pj.IdParticipante and part.PF_PJ = 'PJ'
order by razaoSocial;

/*lista de produtos com desconto - ATRIBUTO DERIVADO */
select idProduto, nomeProduto, valorProduto, round(valorProduto*0.90, 2) as valorPromo  from produto;

/*group by - checando a quantidade de pedidos que cita cada produto*/
select count(*), nomeProduto from produto as p, compoePedido as c 
where p.idProduto = c.idProduto
group by p.idProduto;

/*having*/
select statusPedido, count(*)
from fazpedido
group by statusPedido
having count(*) > 1;

/*simple join*/
Select part.idParticipante, concat(firstName, lastName) as Nome, cpf, emailParticipante
from participante as part join pf
on part.idParticipante = pf.idParticipante 
where part.PF_PJ = 'PF'
order by Nome;


/* UNION + order by */
select 'PF' as TIPO_CLIENTE, concat( firstName ,' ' , lastName) AS CLIENTE, cpf as ID 
from pf
	UNION 
	select 'PJ' AS TIPO_CLIENTE , razaoSocial as CLIENTE, cnpj as ID
	from pj
	order by TIPO_CLIENTE, CLIENTE;


