SELECT nev
FROM nyelv, fordito, szemely
WHERE nyelv.id=nyelvid AND szemelyid=szemely.id AND 
( … );
1.

-

2.

SELECT nev
FROM Szemely
Where elerheto
order by nev
;

3.

SELECT count(*), sum(n.egysegar)
FROM Doku as d, Nyelv as n
Where d.terjedelem <= 5000 and d.nyelvid = n.id
;

4.

SELECT d.terjedelem, d.szakterulet
FROM Doku as d, Nyelv as n
Where n.fnyelv = "angol" and n.cnyelv = "magyar"
order by terjedelem desc
;

5.

SELECT d.szakterulet, n.fnyelv, n.cnyelv
FROM Doku as d, Nyelv as n
Where munkaido between 7 and 9
order by n.fnyelv
;

6.

reszlet:
SELECT s.nev
FROM Fordito as f, Nyelv as n, Szemely as s
where f.nyelvid = n.id and f.szemelyid = s.id

vege:
SELECT top 1 nev
FROM Fordito as f, Nyelv as n, Szemely as s
where f.nyelvid = n.id and f.szemelyid = s.id 
group by nev
order by count(nev) desc
;

7.

SELECT s.nev
FROM Fordito as f, Nyelv as n, Szemely as s
where f.nyelvid = n.id and f.szemelyid = s.id and n.fnyelv = "magyar" and (n.cnyelv = "angol" or n.cnyelv = "orosz") and s.elerheto
group by nev
having count(s.nev) = 2 
;

8.


