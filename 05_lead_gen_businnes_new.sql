use lead-gen-business-new

SELECT MONTHNAME(charged_datetime) , SUM(amount) from billing WHERE charged_datetime LIKE '2012-03-%';

SELECT client_id , SUM(amount) from billing WHERE client_id = 2;

SELECT sites.domain_name , clients.client_id FROM sites JOIN clients  ON sites.client_id = clients.client_id WHERE clients.client_id = 10;

SELECT clients.client_id , sites.domain_name, YEAR(sites.created_datetime), MONTHNAME(sites.created_datetime) FROM clients JOIN sites ON clients.client_id = sites.client_id  WHERE clients.client_id = 1 GROUP BY MONTHNAME(sites.created_datetime), YEAR(sites.created_datetime);
SELECT clients.client_id , sites.domain_name, YEAR(sites.created_datetime), MONTHNAME(sites.created_datetime) FROM clients JOIN sites ON clients.client_id = sites.client_id  WHERE clients.client_id = 20 GROUP BY MONTHNAME(sites.created_datetime), YEAR(sites.created_datetime);


SELECT  sites.domain_name, COUNT(leads.first_name) FROM leads JOIN sites ON leads.site_id = sites.site_id WHERE leads.registered_datetime BETWEEN '2011-1-1' AND '2011-2-15' GROUP BY(sites.domain_name);


SELECT CONCAT_WS(' ', clients.first_name, clients.last_name) AS 'Cliente', COUNT(leads.leads_id) AS 'Prospectos' FROM clients LEFT JOIN sites ON clients.client_id = sites.client_id LEFT JOIN leads ON sites.site_id = leads.site_id WHERE leads.registered_datetime >= STR_TO_DATE('1/1/2011', '%m/%d/%Y')  AND leads.registered_datetime <= STR_TO_DATE('12/31/2011', '%m/%d/%Y') GROUP BY CONCAT_WS(' ', clients.first_name, clients.last_name), clients.client_id ORDER BY clients.client_id;

SELECT clients.first_name , COUNT( leads.first_name)  , MONTHNAME(leads.registered_datetime) FROM leads JOIN sites ON leads.site_id = sites.site_id JOIN clients ON sites.client_id = clients.client_id WHERE leads.registered_datetime >= STR_TO_DATE('1/1/2011', '%m/%d/%Y')  AND leads.registered_datetime <= STR_TO_DATE('6/30/2011', '%m/%d/%Y') GROUP BY (leads.registered_datetime) ;

SELECT  CONCAT_WS(' ',clients.first_name, clients.last_name) AS Cliente,  sites.domain_name AS Dominio,  COUNT(*), DATE_FORMAT(sites.created_datetime,'%M %d, %Y') as 'Fecha'FROM leads JOIN sites ON leads.site_id = sites.site_id JOIN clients ON sites.client_id = clients.client_id WHERE leads.registered_datetime BETWEEN '2011-1-1' AND '2011-12-31' GROUP BY sites.client_id , sites.site_id;

SELECT CONCAT(clients.first_name, '  ' , clients.last_name),  SUM(billing.amount) , MONTHNAME(billing.charged_datetime) ,YEAR(billing.charged_datetime) FROM clients JOIN billing ON clients.client_id = billing.client_id GROUP BY clients.client_id, billing.charged_datetime ORDER BY clients.client_id, billing.charged_datetime

SELECT CONCAT_WS(' ', clients.first_name, clients.last_name), GROUP_CONCAT(sites.domain_name ORDER BY(sites.domain_name) DESC SEPARATOR ' / ' ) FROM clients LEFT JOIN sites ON clients.client_id = sites.client_id GROUP BY(clients.client_id)









