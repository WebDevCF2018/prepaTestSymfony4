<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Articles
 *
 * @ORM\Table(name="articles", indexes={@ORM\Index(name="fk_articles_users_idx", columns={"users_idusers"})})
 * @ORM\Entity
 */
class Articles
{
    /**
     * @var int
     *
     * @ORM\Column(name="idarticles", type="integer", nullable=false, options={"unsigned"=true})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idarticles;

    /**
     * @var string
     *
     * @ORM\Column(name="thetitle", type="string", length=200, nullable=false)
     */
    private $thetitle;

    /**
     * @var string
     *
     * @ORM\Column(name="thetext", type="text", length=65535, nullable=false)
     */
    private $thetext;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="thedate", type="datetime", nullable=true, options={"default"="CURRENT_TIMESTAMP"})
     */
    private $thedate = 'CURRENT_TIMESTAMP';

    /**
     * @var \Users
     *
     * @ORM\ManyToOne(targetEntity="Users")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="users_idusers", referencedColumnName="idusers")
     * })
     */
    private $usersusers;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Sections", mappedBy="articlesarticles")
     */
    private $sectionssections;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->sectionssections = new \Doctrine\Common\Collections\ArrayCollection();
    }

}
