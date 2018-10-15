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
### step 5 change .env
change .env
> DATABASE_URL=mysql://root:@127.0.0.1:3306/prepatestsymfony4
### step 6 create mapping database
> php bin/console doctrine:mapping:import 'App\Entity' annotation --path=src/Entity 
### step 7 create setters and getters for entities
> php bin/console make:entity App\Entity --regenerate
### step 8 create PublicController
> php bin/console make:controller PublicController
### step 9 change routing
to the root in annotation
> "/", name="accueil"
### step 10 install bootstrap 4 CDN
- CDN in base.html.twig
### step 11 choose a theme
Free bootstrap basic themes: https://startbootstrap.com/
- I choose:  https://startbootstrap.com/template-overviews/bare/
- we make a good general template.html.twig with bootstrap end block
### step 12 export datas
export dats in datas/export2-datas.sql
### step 13: menu
in front of PublicController.php
                       
    use App\Entity\Sections;
in index method

    // get Doctrine Manager for all entities
    $entityManager = $this->getDoctrine()->getManager();
    // get all sections in db
    $rub = $entityManager->getRepository(Sections::class)->findAll();
    return $this->render('public/index.html.twig', [
    'sections' => $rub,
    ]);
in index.html.twig
                    
    {% for itemMenu in sections %}
    <li class="nav-item">
        <a class="nav-link" href="./section/
        {{ itemMenu.getIdsections }}">{{ itemMenu.getThetitled }}</a>
    </li>
            {% endfor %}
### step 14 - get all articles on index.php 
in front of PublicController.php
        
    // use entity Articles.php
    use App\Entity\Articles;         
in index.html.twig


    // get Doctrine Manager for all entities
        $entityManager = $this->getDoctrine()->getManager();

        // get all sections in db
        $rub = $entityManager->getRepository(Sections::class)->findAll();

        // get all articles from db
        $art = $entityManager->getRepository(Articles::class)->findAll();

        return $this->render('public/index.html.twig', [
            'sections' => $rub,
            'articles' => $art,
        ]);  
      