<?php
session_start();

class MainController extends ControllerBase
{
	function homeAction()
	{
		if($_SESSION['isLogged'] != true)
		{
			$this->response->redirect("../../cvBuilder/", true);
		}
	}
	function profileAction()
	{
		if($_SESSION['isLogged'] != true)
		{
			$this->response->redirect("../../cvBuilder/", true);
		}

		$currentUser = new Users();

		$result = $currentUser->findFirstByEmail($_SESSION['email'])->toArray();

		$_SESSION['phone_number'] = $result['phoneNumber'];

            $_SESSION['proffession'] = $result['proffession'];

             $_SESSION['firstname'] = $result['firstname'];

              $_SESSION['lastname'] = $result['lastname'];

               $_SESSION['experience'] = $result['experience'];

                  $_SESSION['projects'] = $result['projects'];

                   $_SESSION['age'] = $result['age'];

                    $_SESSION['englishLevel'] = $result['englishLevel'];

		$profilepicture = new profilepicture(); 

		$email = $_SESSION['email'];

		$_SESSION['img'] = "../../cvBuilder/public/assets/img/backgrounds/logo.png";

		if($this->request->getPost('phone_number') != null)
    	{
    		  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->phoneNumber = $this->request->getPost('phone_number');

     		  $user->update();

     		  $_SESSION['phone_number'] = $this->request->getPost('phone_number');
		}
		if($this->request->getPost('proffession') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->proffession = $this->request->getPost('proffession');

     		  $user->update();

     		  $_SESSION['proffession'] = $this->request->getPost('proffession');
		}
		if($this->request->getPost('firstname') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->firstname = $this->request->getPost('firstname');

     		  $user->update();

     		  $_SESSION['firstname'] = $this->request->getPost('firstname');
		}
		if($this->request->getPost('lastname') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->lastname = $this->request->getPost('lastname');

     		  $user->update();

     		  $_SESSION['lastname'] = $this->request->getPost('lastname');
		}
		if($this->request->getPost('experience') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->experience = $this->request->getPost('experience');

     		  $user->update();

     		  $_SESSION['experience'] = $this->request->getPost('experience');
		}
		if($this->request->getPost('projects') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->projects = $this->request->getPost('projects');

     		  $user->update();

     		  $_SESSION['projects'] = $this->request->getPost('projects');
		}
		if($this->request->getPost('englishLevel') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->englishLevel = $this->request->getPost('englishLevel');

     		  $user->update();

     		  $_SESSION['englishLevel'] = $this->request->getPost('englishLevel');
		}
		if($this->request->getPost('englishLevel') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->availability = $this->request->getPost('availability');

     		  $user->update();

     		  $_SESSION['availability'] = $this->request->getPost('availability');
		}
		if($this->request->getPost('hourlyRate') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->hourlyRate = $this->request->getPost('hourlyRate');

     		  $user->update();

     		  $_SESSION['hourlyRate'] = $this->request->getPost('hourlyRate');
		}
		if($this->request->getPost('age') != null)
    	{
 			  $user = new Users();

     		  $user = Users::findFirstByEmail($email);

     		  $user->age = $this->request->getPost('age');

     		  $user->update();

     		  $_SESSION['age'] = $this->request->getPost('age');
		}
   if ($this->request->hasFiles()) 
   {
    $photo = $this->request->getUploadedFiles()[0];

    if (!$photo->getError()) {
         $photo->moveTo('images/image.webp');
    }
}
	}
	function profileEditAction()
	{
		
	}
	function companyAction()
	{
		
	}
}