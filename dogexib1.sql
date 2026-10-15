select * from Dog
where BreedId = 3;

select * from Dog
where OwnerId = 2;


select Dog.Name, Owner.Name, Points from Dog
join Owner on Dog.OwnerId = Owner.Id
order by Points desc;
