<?php

use Phalcon\Mvc\Model;

class Users extends Model
{
    public $id;
    public $firstname;
    public $lastname;
    public $email;
    public $password;
    public $userState;
    public $phoneNumber;
    public $proffession;
    public $experience;
    public $projects;
    public $englishLevel;
    public $availability;
    public $hourlyRate;
    public $age;
}