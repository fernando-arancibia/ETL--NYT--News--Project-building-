![NYT_NEWS_ETL_PROJECT (4)](https://user-images.githubusercontent.com/84011018/236695056-e31a5ad0-578e-4664-a442-339c021fe794.png)

# ETL--NYT-News-Project :newspaper:

#### In this ETL project, different tasks are performed to understand the different stages or tasks to be performed in data engineering. In this particular case, data ingestion through an API is used in order to continue with the process of transformation and loading of the data obtained. For this work different programming tools are used for the different stages of the project.

### Objectives 📚

#### The principal objective of this project is to use the developer portal of the American newspaper NY Times, which offers several APIs to explore, connect to the api and extract information about articles related with covid. This information must be transformed for the purpose of creating data tables to build the structure of a database to work with this information. In summary, the objectives are made up of the following stages:

#### - Extracting and collecting data.
#### - Data modelling and transform.
#### - Data load and consumption.


![image](https://user-images.githubusercontent.com/84011018/236693776-d70f8b5b-4d96-4e7b-a9cc-3ec00c571571.png)

### Extracting and collecting data. 📥

#### the first step to start is to connect to the api to make a request and get the information. for this you have to register on the web https://developer.nytimes.com/ and generate a key to connect to the api. To perform the extraction a request was made to the api with a bash file which is detailed below and is located in the repository files.

![carbon (1)](https://user-images.githubusercontent.com/84011018/236695730-c526d667-a380-4d5d-998c-855aea2a5bb2.png)


Data modelling and transform.

#### The collected data is stored in JSON format and we use mongo db to view and manage the information. A non-relational database is created in mongo db named 'nyt_db' and a data base collection named 'nyt_articles_coll'

![carbon (3)](https://user-images.githubusercontent.com/84011018/236698856-9c8630e5-00bf-4700-b19e-14519185793a.png)

#### JSON files are stored in this collection and is transformed into a CSV file to create the relational database in SQL. In addition, queries are created with Mongo DB to view the database information, the complete code is in the file 'read_json_mongo.ipynb' in the repository.

![carbon (4)](https://user-images.githubusercontent.com/84011018/236699025-24913190-9e4d-42a9-9481-f1f674d08f28.png)

### the CSV file created will be used to create the tables for the SQL database, for this task pandas librarie is used with python to clean and normalize the data. 

![image](https://user-images.githubusercontent.com/84011018/236699688-f8b52e87-8e91-4699-bfc5-20590ec5e08a.png)

### The figure shows what has been developed to normalize the data and create the database tables. Several tasks were performed such as normalizing the strings of the author column, creating the 'author_article' table that relates the article to the author, and the creation of the 'author table' that assigns a unique number to each author. 

## Create SQL Database

### After normalizing the data, the database is created with sqllite3. On the original data, the relation between the authors (in byline field) and the article is many-to-many. To solve this, we create a composite table “article_author” to connect the article with the author. 

one article : many article_author
one author : many article_author

The table structure is as follows.

![ERD_UML_Model_NYT_DataBase](https://user-images.githubusercontent.com/84011018/236700406-a6782f52-4969-4c7b-a533-b5283d054ea8.jpg)














