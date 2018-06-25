Requête 1
use webacademie;
show tables

Requête 2
describe webacademie.film

Requête 3
select titre as "titre film"  from webacademie.film

Requête 4
select * from webacademie.film where id_genre is null

Requête 5
select * from webacademie.film where date_debut_affiche between'2000-01-01' and '2000-12-31' order by date_debut_affiche desc limit 10

Requête 6
select * from webacademie.film where (id_genre=1 or id_genre = 2) and titre LIKE 'a%'

Requête 7
select SUM(nbr_siege) as "nombre siege"  from webacademie.salle

Rquête 8
SELECT sum(nbr_siege) FROM webacademie.salle GROUP BY salle.etage_salle

Requête 9
select nom_salle from webacademie.salle where nbr_siege < 200

Requête 10
select titre as "titre_cool" from webacademie.film where titre like "%day%" and id_genre=2

Requête 11
select count(id_abo) as "nbr_abo",round(avg (prix),-1) as "avg abo" from webacademie.abonnement

Requête 12
select id_film as "max id film" from film where id_genre =8 and date_debut_affiche BETWEEN '1980-01-01' and '1999-12-31' order by film.id_film DESC LIMIT 1

Requête 13
select id_membre as "id_membre", date_dernier_film as "last movie" from webacademie.membre where membre.id_dernier_film = '2557' or membre.id_dernier_film = '2741' order by date_dernier_film desc

Requête 14
select film.id_genre, genre.nom, count(film.id_film) from film left join genre ON film.id_genre = genre.id_genre where film.id_genre between '1' and '3' group by film.id_genre
