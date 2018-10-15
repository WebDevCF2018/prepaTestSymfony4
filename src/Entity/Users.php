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


}
