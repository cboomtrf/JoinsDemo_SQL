/**
 * 
 * Working with SQL: Joins 
 * 
 * @author CBoom (cboom.trf@gmail.com)
 * 
 * A JOIN clause is used to combine rows from two or more tables, 
 * based on a related column between them.
 * We can create a SQL statement (that contains an INNER JOIN), 
 * that selects records that have matching values in both tables.
 *
 * The 4 different types of the JOINs in SQL:
 * (INNER) JOIN: Returns records that have matching values in both tables
 * LEFT (OUTER) JOIN: Return all records from the left table, and the matched records from the right table
 * RIGHT (OUTER) JOIN: Return all records from the right table, and the matched records from the left table
 * FULL (OUTER) JOIN: Return all records when there is a match in either left or right table
 *
 * Source: Leerboek Oracle SQL, W3C, TechOnTheNet
 *
**/

select medewerkers.mnr
,      medewerkers.naam
,      medewerkers.afd
,      afdelingen.naam
from medewerkers 
,    afdelingen  
/
select mdw.mnr
,      mdw.naam
,      mdw.afd
,      adl.anr
,      adl.naam
from medewerkers mdw
,    afdelingen  adl
/
select mdw.mnr
,      mdw.naam
,      mdw.afd
,      adl.anr
,      adl.naam
from medewerkers mdw
,    afdelingen  adl
where  mdw.afd = adl.anr
/
select mdw.mnr
,      mdw.naam
,      mdw.afd
,      adl.anr
,      adl.naam
from medewerkers mdw
join    afdelingen  adl
on  mdw.afd = adl.anr
/
select naam,maandsal,snr,ondergrens,bovengrens
from medewerkers
,    schalen
where maandsal between ondergrens and bovengrens
/
select naam,maandsal,snr,ondergrens,bovengrens
from medewerkers
join    schalen
on maandsal between ondergrens and bovengrens
/
select mdw.naam
,      mdw.maandsal
,      mdw.afd
,      adl.anr
,      adl.naam
,      sch.snr
,      sch.ondergrens
,      sch.bovengrens
from medewerkers mdw
,    afdelingen adl
,    schalen    sch
where mdw.maandsal between sch.ondergrens and sch.bovengrens
and   mdw.afd = adl.anr
/
select mdw.naam
,      mdw.maandsal
,      mdw.afd
,      adl.anr
,      adl.naam
,      sch.snr
,      sch.ondergrens
,      sch.bovengrens
from medewerkers mdw
join afdelingen adl
on   mdw.afd = adl.anr
join schalen    sch
on   mdw.maandsal between sch.ondergrens and sch.bovengrens
/
select mdw.naam
,      mdw.maandsal
,      mdw.afd
,      adl.anr
,      adl.naam
,      sch.snr
,      sch.ondergrens
,      sch.bovengrens
from medewerkers mdw
,    afdelingen adl
,    schalen    sch
where mdw.maandsal between sch.ondergrens and sch.bovengrens
and   mdw.afd = adl.anr
and   mdw.functie = 'VERKOPER'
/
select mdw.naam
,      mdw.maandsal
,      mdw.afd
,      adl.anr
,      adl.naam
,      sch.snr
,      sch.ondergrens
,      sch.bovengrens
from medewerkers mdw
join afdelingen adl
on   mdw.afd = adl.anr
join schalen    sch
on   mdw.maandsal between sch.ondergrens and sch.bovengrens
where mdw.functie = 'VERKOPER'
/
select mnr,naam,chef,naam
from medewerkers
/
select mdw.mnr
,      mdw.naam
,      mdw.chef
,      baa.mnr
,      baa.naam
from medewerkers mdw
,    medewerkers baa
where mdw.chef = baa.mnr
/
select mdw.mnr
,      mdw.naam
,      mdw.chef
,      baa.mnr
,      baa.naam
,      baa.chef
,      sba.mnr
,      sba.naam
from medewerkers mdw
,    medewerkers baa
,    medewerkers sba
where mdw.chef = baa.mnr
and   baa.chef = sba.mnr
/

/
select mdw.mnr,mdw.naam,mdw.chef,baa.mnr,baa.naam
from medewerkers mdw
join  medewerkers baa
on mdw.chef = baa.mnr
/
select mdw.mnr,mdw.naam,mdw.chef,baa.mnr,baa.naam
from medewerkers mdw
,    medewerkers baa
where mdw.chef = baa.mnr (+)
/
select mdw.mnr,mdw.naam,mdw.chef,baa.mnr,baa.naam
from medewerkers mdw left outer
join  medewerkers baa
on mdw.chef = baa.mnr
/
select mdw.mnr,mdw.naam,mdw.chef,baa.mnr,baa.naam
from medewerkers baa  right outer join   medewerkers mdw 
on mdw.chef = baa.mnr
/
select mdw.mnr,mdw.naam,mdw.chef,baa.mnr,baa.naam
from  medewerkers mdw left outer  join    medewerkers baa
on mdw.chef = baa.mnr
/
select mdw.mnr
,      mdw.naam
,      mdw.afd
,      adl.anr
,      adl.naam
from medewerkers mdw
,    afdelingen  adl
where  mdw.afd (+) = adl.anr
/
select mdw.mnr
,      mdw.naam
,      mdw.afd
,      adl.anr
,      adl.naam
from medewerkers mdw right outer join    afdelingen  adl
on  mdw.afd = adl.anr
/