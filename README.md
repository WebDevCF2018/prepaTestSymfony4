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
### step 15 - display all articles on index.html.twig
- no difference for the fields into Articles
- automatical INNER JOIN or new query when we make the link one to many or many to many

        {% for item in articles %}
            <h2>{{ item.getThetitle }}</h2>
            <h3>
                {% for categ in item.getSectionssections %}
                    {{ categ.getThetitled }} |
                {% endfor %}
            </h3>
            <p>{{ item.getThetext|slice(0,350) }} ... </p>
            <h4>Par {{ item.getUsersusers.getTherealname }} 
            le {{ item.getThedate|date("d/m/Y à H \\h i \\m") }}</h4><hr>
        {% endfor %} 
### step 16 - divise entete in two parts

    {% block entete_haut %}
            <!-- Navigation -->
            <nav class="navbar navbar-expand-lg navbar-dark
             bg-dark static-top">
            <div class="container">
            <a class="navbar-brand" href="{{ path("accueil") }}"
            >NosActus.be</a>
            <button class="navbar-toggler" type="button" 
            data-toggle="collapse" data-target="#navbarResponsive" 
            aria-controls="navbarResponsive" aria-expanded="false"
             aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
        {% endblock %}             
        {% block menu %}....{% endblock %}
       {% block entete_bas %}
           </div>
           </div>
           </nav>
       {% endblock %} 
###        