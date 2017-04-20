# Intro:
Plexus is search engine which uses keyword or phrase as a input.It returns result if page is present in the database.

# Working:
	Like other Search Engine it uses Spell corrector to correct the keyword or phrases if misspelled.
	This input is then passed for security checkup.
	Here, Code is Tested for various types of security attack like sql,php. Code is converted to string
	form and then passed to query handler. Query handler does the actual task for quering the database
	by using the database class file.
	
	If result is found in the database then it is directly returned to the user.
	else It is further checked for relationship with other key terms.
	If relationship is found then all the result related to key terms are returned to the user like
	FaceBook,face book, fb are terms 
	which are related by replacing certain character.
	
        Other than manual typing , It uses Google Voice API for searching the result.
	API takes voice as a input and convert it to text for automatically typing for the user.
	Main intention of this feature was to Allow Physically disable people to access this engine via voice.
        
        It also Uses Crawler for crawling inside the requested page and return many more results.
	Crawler is written using python.
        
        Other than above, It use log file to analye for frequeny used query for building Top query list .
	This list is buid on the basis of last 30 days and it updates the list every time.
        
# Tehnology used:

        PHP
        HTML
        CSS
        JQUERY
        AJAX
        PYTHON
        MYSQL
        GOOGLE VOICE TO TEXT API

# Development tools:
	Apache server
	php 5.6
	MySQL 5.6
	python 2.7.x
	google chrome latest
