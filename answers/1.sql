#Part 1: Importing data

#Directions:

#In DataGrip, connect to your local mysql instance **(for those not using DataGrip, you can execute the files in the command line, using the following syntax: mysql -u your_mysql_user -p < the_name_of_the_file.sql)
#Answer - Done

#Create your pokemon schema
create schema pokemon;

#Unpack the pokemon_sql.zip files
#Answer - Done

#One by one execute these files making sure to check your pokemon schema
mysql -u user1 -p pokemon < pokemon_pokemon_trainer.sql
mysql -u user1 -p pokemon < pokemon_pokemons.sql
mysql -u user1 -p pokemon < pokemon_trainers.sql
mysql -u user1 -p pokemon < pokemon_types.sql

#From here you should have all the pokemon data in your mysql schema. Feel free to explore the data and perform a few select statements to see what the data looks like.
show tables;
select * from pokemon_trainer limit 2;
select count(*) from pokemon_trainer;
select * from pokemons limit 2;
select * from trainers limit 2;
select * from types limit 2;