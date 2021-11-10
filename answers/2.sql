#Part 2: Simple Selects and Counts

#Directions: Write a sql query or sql queries that can answer the following questions

#What are all the types of pokemon that a pokemon can have?
select name as pokemon_types from types;
select * from types;

#What is the name of the pokemon with id 45?
select name as pokemon_name from pokemons where id = 45;

#How many pokemon are there?
select count(id) as pokemon from pokemons;
select count(*) from pokemons;

#How many types are there?
select count(id) from types;

#How many pokemon have a secondary type?
select count(id) from pokemons where secondary_type IS NOT NULL;