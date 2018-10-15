<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
// use entity Sections.php
use App\Entity\Sections;
// use entity Articles.php
use App\Entity\Articles;

class PublicController extends AbstractController
{
    /**
     * @Route("/", name="accueil")
     */
    public function index()
    {
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
    }
}
