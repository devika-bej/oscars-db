# Oscars Database
A terminal-based interactive database system which stores data for the Oscars awards. It allows the user to retrieve and modify the database.

## Features

### Modifications
- Insert
  - Details of a new ceremony
  - New nominated movie
  - New nominated song
- Update
  - Gross income for a movie
  - Update result for nominated movie
- Delete 
  - Movie
  - Song

### Retrievals
- Selection
  - List of categories a movie has been nominated to
  - List of movies grossing more than X amount
  - List of movies which have won in a particular category
  - List of years ceremony was hosted in X venue
- Projection
  - Titles of winning movies
  - Names of actors or singers in a particular movie
  - Song details for songs in a particular language
- Aggregate
  - Average budget of all movies
  - Highest gross income of a movie
  - Total movies per year
  - Maximum awards won by movie
  - Maximum awards won by actor
- Search
  - Artist
  - Award category
- Analysis
  - Relationship between the gender of the director and the gross income of the movies
  - Closeness of age of actor to the age of the character and its dependency on the gender of the actor
  - Relationship between number of movies directed and the gender of the director

## Usage
After cloning the repository, ensure that the library `pymysql` is installed   
`cd source_code`  
`python3 driver.py`  
This opens the TUI to interact with the database