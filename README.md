# prepaTestSymfony4
##Préparation au test octobre 2018
### step 1 create git project
- create a project on github with README.md
- clone this project on your local project's folder
> git clone url
- open this with your IDE
### step 2 install symfony 4 with composer
> composer create-project symfony/website-skeleton prov 
- move prov's content to our project prepaTestSymfony4
- remove prov's folder
- if you work with phpstorm, put /.idea/ into .gitignore
### step 3 add security checker
> composer require sensiolabs/security-checker --dev
### step 4 create externe DB MySQL
- create datas folder
- create the database schema with Workbench : /datas/prepatestsymfony4.mwb
- export diagram to image: /datas/diagram.png
- real export in localhost (see /datas/export1-structure.sql)
### step 5