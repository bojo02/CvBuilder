{% extends 'layouts/template.volt' %}

{% block templatehead %}

	<script type="text/javascript" src="public/assets/js/jquery.js"></script>

	<script type="text/javascript" src="public/assets/js/verifier.js"></script>

	<link rel="stylesheet" type="text/css" href="public/assets/css/source.css"/>

{% endblock %}



{% block templatebody %}

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


{% endblock %}