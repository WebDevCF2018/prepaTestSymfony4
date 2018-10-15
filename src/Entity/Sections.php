<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Sections
 *
 * @ORM\Table(name="sections")
 * @ORM\Entity
 */
class Sections
{
    /**
     * @var int
     *
     * @ORM\Column(name="idsections", type="integer", nullable=false, options={"unsigned"=true})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idsections;

    /**
     * @var string
     *
     * @ORM\Column(name="thetitled", type="string", length=80, nullable=false)
     */
    private $thetitled;

    /**
     * @var string|null
     *
     * @ORM\Column(name="thedesc", type="string", length=350, nullable=true)
     */
    private $thedesc;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Articles", inversedBy="sectionssections")
     * @ORM\JoinTable(name="sections_has_articles",
     *   joinColumns={
     *     @ORM\JoinColumn(name="sections_idsections", referencedColumnName="idsections")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="articles_idarticles", referencedColumnName="idarticles")
     *   }
     * )
     */
    private $articlesarticles;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->articlesarticles = new \Doctrine\Common\Collections\ArrayCollection();
    }

}
