:- initialization(main).

main :- 
    write('Welcome to Biolibrary!\n'),
    consult('Animals_PL.txt'),
    simBiolib.

simBiolib :- 
    write('\n*********************************************************************************'),
    write('\n#################################################################################'),
    write('\n*********************************************************************************\n'),
    write('Select an option:'),
        write('\n\tusageHelp. -> help on program use\n'),
        write('\n\tanimalsClassification(classification). -> search by classification'),
        write('\n\tallData(animal). -> get all data for a particular animal, animal'),
        write('\n\tanimalsInRegion(locale). -> search animal by locale, locale'),
        write('\n\tanimalsDiet(diet). -> search animal by diet, diet (carnivore,herbivore,omnivore)'),
        write('\n\tanimalsHabitat(habitat). -> search animal by habitat, habitat (ex.forest)'),
        write('\n\tanimalsReproduction(reproduction). -> search animal by reproduction(ex.live)'),
    write('\n*********************************************************************************'),
    write('\n#################################################################################'),
    write('\n*********************************************************************************\n'),
    read(Input),
    call(Input),
    simBiolib.

/* Returns all the data for a given animal 
If the attribute is missing in the Animals_PL.txt file, it will not print that attribute out
*/
allData(X) :-
    write('Animal: '), write(X), nl,
    ( description(X, Description) -> write('Description: '), write(Description), nl ; true ),
    ( animal(X, Classification) -> write('Classification: '), write(Classification), nl ; true ),
    ( region(X, Region) -> write('Region: '), write(Region), nl ; true ),
    ( habitat(X, Habitat) -> write('Habitat: '), write(Habitat), nl ; true ),
    ( diet(X, Diet) -> write('Diet: '), write(Diet), nl ; true ),
    ( reproduction(X, Reproduction) -> write('Reproduction: '), write(Reproduction), nl ; true ).

animalsClassification(Classification) :-
    findall(Animal, animal(Animal, Classification), AnimalsList),
    write('Animals who are '), write(Classification), write(': '), write(AnimalsList), write(', ').

animalsInRegion(Region) :-
    findall(Animal, (animal(Animal, _), region(Animal, Region)), AnimalsList),
    write('Animals in '), write(Region), write(': '), write(AnimalsList), write('\n').

animalsDiet(Diet) :-
    findall(Animal, (animal(Animal, _), diet(Animal, Diet)), AnimalsList),
    write('Animals who are '), write(Diet), write(': '), write(AnimalsList), write('\n').

animalsHabitat(Habitat) :-
    findall(Animal, (animal(Animal, _), habitat(Animal, Habitat)), AnimalsList),
    write('Animals who live in habitat '), write(Habitat), write(': '), write(AnimalsList), write('\n').

animalsReproduction(Reproduction) :-
    findall(Animal, (animal(Animal, _), reproduction(Animal, Reproduction)), AnimalsList),
    write('Animals who reproduce by: '), write(Reproduction), write(': '), write(AnimalsList), write('\n').
    

usageHelp :-
    write('\n###############################################################\n'),
    write('Usage Help:'),
    write('\n==========='),
    write('\n\tallData(animal). -> good place to start. get all data for a particular animal. if the animal has two words make sure to use single quotes '),
    write('\n\tanimalsClassification(animal). -> classification examples: mammal,fish'),
    write('\n\tanimalsInRegion(locale). -> search animal by locale examples: Asia, North America'),
    write('\n\tanimalsDiet(diet). -> search animal by diet, examples: (carnivore,herbivore,omnivore)'),
    write('\n\tanimalsHabitat(habitat). -> examples: forest, mounatins, desert'),
    write('\n\tanimalsReproduction(reproduction). -> search animal by reproduction : live, oviparous'),
    write('\n###############################################################\n').