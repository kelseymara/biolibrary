# Biolibrary Project

## Overview
The biolibrary project is a Prolog-based knowledge base containing various animal species and their attributes. This project was written for CS 355 during the Spring 2024 Semester at Old Dominion University.  
It allows users to query information about animals such as their names, physical descriptions, regions, habitats, classifications, diets, and reproductive methods. 

## Objectives

The goal of this project is to provide a set of facts about animal species and allow users to search the knowledge base for:

- Name – tiger shark, moose, etc.
- Description – A brief physical description of the animal.
- Region – Regions where the animal is typically found, such as North America, Africa (north, south, central), etc.
- Habitat – Habitats where the animal lives, including mountain, coastal, tundra, forest, swamp, jungle, fresh water, salt water, etc.
- Classification – Classification of the animal, such as mammal, fish, etc.
- Diet – The diet of the animal, including carnivore, herbivore, or omnivore.
- Reproduction – The reproduction method of the animal, including live, oviparous, or asexually.


## Animals_PL.txt:
The Animals_PL.txt file contains the data for this project. It was created by my professor and is a compilation of every student's input for different animal species. Please note that some animals may be missing certain attributes or have repeated entries, as the file contains a large volume of data. 

## Running the project
1. CD into project directory
2. Enter the following command (assuming you have swipl downloaded):
```terminal
swipl biolib.pl
```
3. Input queries:
Once inside the prolog shell, you should get a welcome message and a prompt to select an option. Now you can make queries based on the categories available in the knowledge base.

Example:
```
animalsClassification('fish'). 
```
This will return: 
```
Animals who are fish: [catfish,seahorse,Coelacanth,Goblin Shark,Blobfish]
```
- Use the same syntax to query for animals based on different categories like region, habitat, diet, etc. If you need help, you can type in ```usageHelp.```.

## Exiting the program
To stop the program in the terminal, use the keyboard shortcut:
```
Ctrl + D
```

### Additional information

Reflection:
While I likely won't use Prolog much in the future, this project gave me valuable exposure to its capabilities. It helped me better understand how to work with knowledge bases, query large datasets, and handle incomplete data. This experience broadened my understanding of Prolog’s potential in solving real-world problems, and it was a fun to work on :) 
