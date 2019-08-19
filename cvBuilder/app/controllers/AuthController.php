<?php
session_start();

class AuthController extends ControllerBase
{
    public function loginAction()
    {
      $_SESSION['isLogged'] = false;

    	if($this->request->getPost('emailAddress') != null)
    	{
			$email = $this->request->getPost('emailAddress');
    	}
    	else if(isset($_SESSION['email']))
    	{
    		$email = $_SESSION['email'];
    	}
	

 	 	$user = new Users(); 

 		if($result = $user->findFirstByEmail($email) === false)
  		{
			$_SESSION['email'] = $email;

			$this->response->redirect("register", true);
  		}
  		else
  		{
			$_SESSION['email'] = $email;
  		}
    }
     public function registerAction()
    {
    	  $_SESSION['isLogged'] = false;
    }
    public function verifyAction()
    {

    $_SESSION['isLogged'] = false;

    if(isset($_POST['passwordlo']))
    {
      $email = $_SESSION['email'];

      $loggedUser = new Users();

      $result = $loggedUser->findFirstByEmail($email)->toArray();

      $pass = $this->request->getPost('passwordlo');

      $hashedPass = $result['password'];

      if(password_verify($pass, $hashedPass))
      {
        $this->response->redirect("../main/home", true);
        $_SESSION['isLogged'] = true;
        $_SESSION['firstname'] =  $result['firstname'];
        $_SESSION['lastname'] =  $result['lastname'];
        $_SESSION['email'] =  $result['email'];
          $_SESSION['user_id'] =  $result['id'];
      }
      else
      {
        $this->response->redirect("../auth/login", true);
      }
    }
    if($this->request->getPost('firstname') != null)
    {
      $email = $_SESSION['email'];

      $firstname = $this->request->getPost('firstname');

      $lastname = $this->request->getPost('lastname');

      $password = $this->request->getPost('password1');

      $password_hash = password_hash($password, PASSWORD_DEFAULT);

      $user = new Users();

      $user->email = $email;

      $user->firstname = $firstname;

      $user->lastname = $lastname;

      $user->password = $password_hash;

      $user->userState = 'normal';

      $user->phoneNumber = 'none';

      $user->proffession = 'none';

      $user->experience = 'none';

      $user->englishLevel = 'none';

      $user->availability = '0';

      $user->hourlyRate = '0$/hr';

      $user->age = '18';

      if($user->findFirstByEmail($email) === false)
      {
        $user->save();
          $this->response->redirect("login", true);
      }
      else
      {
        $this->response->redirect("register", true);
      }
    }
    }
}
