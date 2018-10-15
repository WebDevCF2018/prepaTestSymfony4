<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
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

    public function getIdsections(): ?int
    {
        return $this->idsections;
    }

    public function getThetitled(): ?string
    {
        return $this->thetitled;
    }

    public function setThetitled(string $thetitled): self
    {
        $this->thetitled = $thetitled;

        return $this;
    }

    public function getThedesc(): ?string
    {
        return $this->thedesc;
    }

    public function setThedesc(?string $thedesc): self
    {
        $this->thedesc = $thedesc;

        return $this;
    }

    /**
     * @return Collection|Articles[]
     */
    public function getArticlesarticles(): Collection
    {
        return $this->articlesarticles;
    }

    public function addArticlesarticle(Articles $articlesarticle): self
    {
        if (!$this->articlesarticles->contains($articlesarticle)) {
            $this->articlesarticles[] = $articlesarticle;
        }

        return $this;
    }

    public function removeArticlesarticle(Articles $articlesarticle): self
    {
        if ($this->articlesarticles->contains($articlesarticle)) {
            $this->articlesarticles->removeElement($articlesarticle);
        }

        return $this;
    }

}
