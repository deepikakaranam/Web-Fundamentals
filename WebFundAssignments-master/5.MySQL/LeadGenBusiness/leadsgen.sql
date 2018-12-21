select * from billing;
/*What query would you run to get the total revenue for March of 2012?*/
SELECT sum(amount) FROM billing  
where charged_datetime  >= '2012/03/01' AND charged_datetime < '2012/03/30';
select * from clients;
select * from leads;
select * from sites;
/*What query would you run to get total revenue collected from the client with an id of 2?*/
select billing.client_id,sum(billing.amount)
from billing
where billing.client_id=2;

/*3.What query would you run to get all the sites that client = 10 owns?*/
select domain_name as sites, client_id
from sites
where client_id=10;
/*4.What query would you run to get total # of sites created each month for client=1 ? What
 about for client=20?*/
 select client_id,count(domain_name),monthname(created_datetime),year(created_datetime)
 from sites
 where client_id=1 or client_id=20
  group by monthname(created_datetime);
  
  /*5 What query would you run to get the total # of leads we have generated for each of our sites
  between January 1st 2011 to February 15th 2011?*/


select domain_name as website, date_format(registered_datetime,'%M %e %Y') as date_generated,
count(leads.leads_id)as number_leads
from sites
join leads
on sites.site_id=leads.site_id

where registered_datetime >= '2011/01/01' AND registered_datetime  < '2011/02/15'
group by domain_name;

/*What query would you run to get a list of client names and the total # of leads we've 
generated for each of our clients between January 1, 2011 to December 31, 2011?*/
select clients.first_name,clients.last_name, count(leads.leads_id)
from clients
join sites
on clients.client_id=sites.client_id
join leads
on sites.site_id=leads.site_id
where registered_datetime >= '2011/01/01' AND registered_datetime  < '2011/12/31'
group by clients.first_name ;

/*7.What query would you run to get a list of client name and the total # of leads we have generated for each client
each month between month 1 - 6 of Year 2011?*/
select concat(clients.first_name,'',clients.last_name) as name, count(leads_id), date_format(registered_datetime, '%M') as 
month_generated
from clients
join sites
on clients.client_id=sites.client_id
join leads
on sites.site_id=leads.site_id
where registered_datetime >= '2011/01/01' AND registered_datetime  < '2011/06/30'
group by leads_id  ;

/*8. What query would you run to get a list of client name and the total # of leads we have generated for each of
our clients site between January 1st 2011 to December 31st 2011? Come up with a second query that shows all
the clients, the site name(s), and the total number of leads generated from each site for all time?*/

select concat(clients.first_name,'',clients.last_name) as client_name, count(leads_id), domain_name,
 date_format(registered_datetime, '%M %e %Y') as date_generated
 from clients
join sites
on clients.client_id=sites.client_id
join leads
on sites.site_id=leads.site_id
where registered_datetime >= '2011/01/01' AND registered_datetime  < '2011/12/31'
group by  domain_name;

/*9.Write a single query that retrieves total revenue collected from each client each month of the year?*/

select concat(clients.first_name,'',clients.last_name) as client_name, sum(amount) as total_revenue,
date_format(charged_datetime, '%M') as month_generated,date_format(charged_datetime, '%Y') as year_generated
from billing
join clients
on billing.client_id=clients.client_id

group by client_name, month_generated, year_generated;

/*10.Write a single query that retrieves all the sites that each client owns. Group the results so that each row shows
a new client and have a new field called 'sites' that has all the sites that the client owns. (HINT: use
GROUP_CONCAT)?*/

select concat(clients.first_name,'',clients.last_name) as client_name,group_concat(sites.domain_name)
from clients
left join sites
on clients.client_id=sites.client_id
group by client_name;




