<html>
	<head>
		
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
	
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 
 {% block templatehead %}

 {% endblock %}
	</head>
    <body>
    	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item" id="homeTemplate">
        <a class="nav-link" id="homeClick" href="../main/home">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item profile" id="profileTemplate">
        <a class="nav-link" href="../main/profile">Profile</a>
      </li>
       <li class="nav-item profile" id="profileTemplate">
        <a class="nav-link" href="../main/company">Company</a>
      </li>
    </ul>
    <div class="addUserButton">
    <form>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Add user</button>
    </form>
    </div>
    <form action="../../cvBuilder/" method="POST">
      <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Log out</button>
    </form>
  </div>
</nav>
        {% block templatebody %}{% endblock %}
    </body>
</html>