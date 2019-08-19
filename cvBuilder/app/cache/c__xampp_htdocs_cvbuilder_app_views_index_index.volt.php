<html>
	<head>	
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
 

	<script type="text/javascript" src="public/assets/js/jquery.js"></script>

	<script type="text/javascript" src="public/assets/js/verifier.js"></script>

	<link rel="stylesheet" type="text/css" href="public/assets/css/source.css"/>


	</head>
    <body>
        

<?php 
session_start();

session_destroy(); 
?>

<div class="container cont">

	<div class="row row1">

  	  <div class="col-lg column">

		<form action="auth/login" method="POST" class="form">

			<div class="logoImageDiv">
				<img class="logoImage" src="public/assets/img/backgrounds/logo.png">
			</div>

				<div class="logo">
					<h5 class="title head">Enter e-mail address</h5>
				</div>

				<div class="Email">
					<p style="display: none;" class="invalid" id="invalid">Invalid email !</p>
					<input type="text" placeholder="E-mail" name="emailAddress" id="email" class="field-modern" 	autocomplete="off"/></input>
				</div>

				<div class="btn-submit">
					<button type="submit" class="btn btn-primary btn_padding" id="btnNext">Next</button>
				</div>
			</div>
		</form>
	</div>
</div>



    </body>
</html>