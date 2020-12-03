INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (4,'07abc06','fiat','egea',130);
INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (5,'35abc34','fiat','punto',100);
INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (6,'42abc35','wosvagen','passat',230);

INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (4,'11111111114','arda','çankaya','5555555554');
INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (5,'11111111116','hasan','sönmez','5555555556');
INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (6,'11111111117','beyza','kaya','5555555557');

INSERT INTO kiralama
VALUES (4,2,8,'02/12/2016','02/01/2017');
INSERT INTO kiralama(id,musteri_id,araba_id,kiralama_tarihi,teslim_tarihi)
VALUES (5,8,2,'02/02/2015','22/03/2016');
INSERT INTO kiralama(id,musteri_id,araba_id,kiralama_tarihi,teslim_tarihi)
VALUES (6,2,1,'02/05/2018','02/01/2020');

INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (7,'09abc06','wosvagen','polo',150);
INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (8,'38abc34','wosvagen','transporter',500);
INSERT INTO arabalar(id,plaka,marka,modell,fiyat)
VALUES (9,'43abc35','hyundai','accent',210);

INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (7,'11111111115','muhammet','ali','5555555558');
INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (8,'11111111118','ferit','kaleci','5555555559');
INSERT INTO musteriler(id,tc,ad,soyad,telefon)
VALUES (9,'11111111119','adem','kesim','5555555551');

INSERT INTO kiralama
VALUES (7,2,6,'02/12/2017','02/01/2017');
INSERT INTO kiralama(id,musteri_id,araba_id,kiralama_tarihi,teslim_tarihi)
VALUES (8,2,2,'02/02/2013','22/03/2014');
INSERT INTO kiralama(id,musteri_id,araba_id,kiralama_tarihi,teslim_tarihi)
VALUES (9,2,7,'02/05/2017','02/01/2018');


SELECT * FROM kiralama;
SELECT * FROM arabalar;
SELECT * FROM musteriler;


SELECT * FROM kiralama, arabalar
WHERE 1 = 1 
AND kiralama.araba_id = arabalar.id;


select *
FROM kiralama
	left join arabalar on kiralama.araba_id = arabalar.id;    

SELECT * FROM kiralama, musteriler ,arabalar
WHERE 1 = 1 
AND kiralama.musteri_id = musteriler.id
AND kiralama.araba_id = arabalar.id
and arabalar.marka='wosvagen';

select *
FROM kiralama
	inner join arabalar on kiralama.araba_id = arabalar.id
    where arabalar.modell='astra';
    

SELECT * FROM arabalar
CROSS JOIN musteriler; 


select marka 
from arabalar
UNION 
select ad
from musteriler;


select modell 
from arabalar
UNION all
select soyad
from musteriler;

select id 
from musteriler
MINUS
select distinct musteriler.id 
from musteriler
	inner join kiralama on kiralama.musteri_id=musteriler.id;

select id 
from musteriler
INTERSECT
select distinct musteriler.id 
from musteriler
	inner join kiralama on kiralama.musteri_id=musteriler.id;
    
    
select concat ('F?rat','yorulmaz') from dual;

select length ('f?rat') from dual;

select replace ('F?ratArda','Arda') from dual; 

SELECT mod(34,5)FROM DUAL;

select round (25.49,1) from dual;

select trunc (71.3748) from dual;

select upper ('Ankara') from dual;

select lower ('ANKARAAA') from dual;

select initcap ('FIRAT Yorulmaz ANKARA') from dual;


