INTRODUCTION
------------
DATE CREATED: 11/04/2015

PROJECT: IMDB-Like Database Driven Website (for CS143: Databases)

LANGUAGES EMPLOYED: HTML, CSS, Javascript/JQuery, PHP, MySQL

DESCRIPTION: In this project, we were given a set of data for MySQL tables: movie names, actor names, director names, movie-actor relations, and director-actor relations our assignment was to create a fully functional internet movie database type website. 

Features:
* Search bar to search from movies, actors, and directors
* Write reviews and comments for movies
* Contribute: 
	- Add director or actor to existing movie
	- Add movie to database with title, year, rating, company, and genre
* Each movie, actor, or director has a respective profile page:
	- For Actor/Actress/Director includes date of birth, date of death (if deceased), movie roles
	- For movies: release year, production company, MPAA rating, genres, user rating average, actors, user comments
* Each movie, actor, or director name that appears in the search is a clickable link to its respective profile page


HOW TO VIEW
-----------
1. With files downloaded, while in 'sql' folder, open mySQL in terminal
2. Use database of choice or create new database ("CREATE DATABASE [DB_NAME]"). 
3. Type following commands:
	- SOURCE create.sql;
	- SOURCE load.sql;  
4. Go to index.php file and open in browser of choice (with whatever the URL of your server is i.e 'localhost:1438/~CS143/...').
