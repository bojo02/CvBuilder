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
					<h3 class="title head">Login</h3>
				</div>

				<div class="Email">
					<input type="password" placeholder="Password" name="passwordlo" id="password" class="field-modern" autocomplete="off"/></input>
				</div>
				<div class="btn-submit">
					<button type="submit" class="btn btn-primary btn_padding">Login</button>
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