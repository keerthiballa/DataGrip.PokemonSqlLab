#Part 3: Joins and Groups

#Directions: Write a sql query or sql queries that can answer the following questions

#What is each pokemon's primary type?
select pokemons.name as name, types.name as primary_type from pokemons join types on pokemons.primary_type = types.id;

#What is Rufflet's secondary type?
select types.name as secondary_type from pokemons join types on pokemons.secondary_type = types.id where pokemons.name = 'Rufflet';


#What are the names of the pokemon that belong to the trainer with trainerID 303?
select p.name as pokemon_name from pokemons p join pokemon_trainer pt on p.id = pt.pokemon_id where pt.trainerID = 303;

#How many pokemon have a secondary type Poison
select count(p.id) from pokemons p join types t on p.secondary_type = t.id where t.name='Poison';

#What are all the primary types and how many pokemon have that type?
select t.name as primary_type, count(p.id) as num_of_pokemon from pokemons p join types t on p.primary_type = t.id group by t.name;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer

select count(DISTINCT(pokemon_id)) from pokemon_trainer where trainerID IN (select trainerID from pokemon_trainer  where pokelevel = 100) and pokelevel = 100;

#How many pokemon only belong to one trainer and no other?



