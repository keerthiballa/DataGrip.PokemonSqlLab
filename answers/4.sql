#Part 4: Final Report

#Directions: Write a query that returns the following collumns:

# Pokemon Name	 Trainer Name	     Level	       Primary Type	      Secondary Type
#Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name

#Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may interpret strongest in whatever way you want, but you will have to explain your decision.

select p.name as 'Pokemon Name', tr.trainername as 'Trainer Name', pt.pokelevel as 'Level', ty.name as 'Primary Name', tys.name as 'Secondary Name' from pokemon_trainer pt
    inner join pokemons p on pt.pokemon_id = p.id
        inner join trainers tr on pt.trainerID = tr.trainerID
            left join types ty on p.primary_type = ty.id
              left join types tys on p.secondary_type = tys.id;