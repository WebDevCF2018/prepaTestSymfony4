<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Users
 *
 * @ORM\Table(name="users", uniqueConstraints={@ORM\UniqueConstraint(name="thelogin_UNIQUE", columns={"thelogin"})})
 * @ORM\Entity
 */
class Users
{
    /**
     * @var int
     *
     * @ORM\Column(name="idusers", type="integer", nullable=false, options={"unsigned"=true})
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idusers;

    /**
     * @var string
     *
     * @ORM\Column(name="thelogin", type="string", length=80, nullable=false)
     */
    private $thelogin;

    /**
     * @var string
     *
     * @ORM\Column(name="thepwd", type="string", length=60, nullable=false, options={"fixed"=true,"comment"="bcrypt"})
     */
    private $thepwd;

    /**
     * @var string
     *
     * @ORM\Column(name="therealname", type="string", length=160, nullable=false)
     */
    private $therealname;

    public function getIdusers(): ?int
    {
        return $this->idusers;
    }

    public function getThelogin(): ?string
    {
        return $this->thelogin;
    }

    public function setThelogin(string $thelogin): self
    {
        $this->thelogin = $thelogin;

        return $this;
    }

    public function getThepwd(): ?string
    {
        return $this->thepwd;
    }

    public function setThepwd(string $thepwd): self
    {
        $this->thepwd = $thepwd;

        return $this;
    }

    public function getTherealname(): ?string
    {
        return $this->therealname;
    }

    public function setTherealname(string $therealname): self
    {
        $this->therealname = $therealname;

        return $this;
    }
    public function __toString()
    {
        return (string) $this->getThelogin();
    }

}
