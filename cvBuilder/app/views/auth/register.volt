{% extends 'layouts/template.volt' %}

{% block templatehead %}

	<script type="text/javascript" src="../public/assets/js/jquery.js"></script>

	<script type="text/javascript" src="../public/assets/js/verifier.js"></script>

	<link rel="stylesheet" type="text/css" href="../public/assets/css/source.css"/>

{% endblock %}



{% block templatebody %}

<div class="container cont">

	<div class="row row1">

  		<div class="col-lg column">

			<form action="verify" method="POST">

				<div class="logoImageDiv">
					<img class="logoImage" src="../public/assets/img/backgrounds/logo.png">
				</div>

				<div class="logo">
					<h3 class="title head">Register</h3>
				</div>

				<div class="firstname">
					<p style="display: none;" class="invalid" id="firstnameWrong">Invalid name</p>
					<input type="text" placeholder="Firstname" name="firstname" id="firstname" class="field-modern" autocomplete="off"/></input>
				</div>

				<div class="lastname">
				<p style="display: none;" class="invalid" id="lastnameWrong">Invalid lastname</p>
					<input type="text" placeholder="Lastname" name="lastname" id="lastname" class="field-modern" autocomplete="off"/></input>
				</div>

				<div class="Password">
				<p style="display: none;" class="invalid" id="password1Wrong">The password must be 6 symbols</p>
					<input type="password" placeholder="Enter password" name="password1" id="password1" class="field-modern" autocomplete="off"/></input>
				</div>

				<div class="Password">
				<p style="display: none;" class="invalid" id="password2Wrong">Passwords not match</p>
					<input type="password" placeholder="Re-enter password" name="password2" id="password2" class="field-modern" autocomplete="off"/></input>
				</div>

				
				<div class="btn-submit">
					<button type="submit" id="btnRegsiter" class="btn btn-primary btn_padding" disabled>Register</button>
				</div>
			</form>
			<form action="../../cvBuilder/" method="POST">
				<div class="btn-back">
					<button type="submit" class="btn btn-success btn_padding">Back</button>
				</div>
			</form>
		</div>
	</div>
</div>


{% endblock %}