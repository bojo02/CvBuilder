$(document).ready(function() 
{

//$.ajax({
//  url: "test.html",
//  context: document.body
//}).done(function() {
//  $( this ).addClass( "done" );
//});

//main page!!!!!!!!!!!!!!!!!!
	$('#btnNext').attr("disabled", true);
 	$('#invalid').hide();

	//if you press button into the text field
 	$('#email').keyup(function()
 	{

 	function isEmail(email){
  	var regex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
  	return regex.test(email);
	}

	if(isEmail($('#email').val()))
	{
 			$('#email').removeClass('field-modern-error');
 			$('#invalid').hide();
 			$('#btnNext').attr("disabled", false);
	}
	else
 	{
 		$('#email').addClass('field-modern-error');
 		$('#invalid').show();
 		$('#btnNext').attr("disabled", true);
 	}
	});



//register page!!!!!!!!!!!!!!!!!!!!
	$('#firstname').keyup(function()
	{
		if($('#firstname').length >= 1 && $('#lastname').length >= 1 && $('#password1').val().length >= 6 && $('#password2').val() == ($('#password1').val()))
		{
			$('#btnRegsiter').attr("disabled", false);
		}
		else
		{
			$('#btnRegsiter').attr("disabled", true);
		}
		if($('#firstname').val().length >= 1)
		{
		$('#firstnameWrong').hide();
		}
		else
		{
			$('#firstnameWrong').show();
		}
	});
	$('#lastname').keyup(function()
	{
		if($('#firstname').length >= 1 && $('#lastname').length >= 1 && $('#password1').val().length >= 6 && $('#password2').val() == ($('#password1').val()))
		{
			$('#btnRegsiter').attr("disabled", false);
		}
		else
		{
			$('#btnRegsiter').attr("disabled", true);
		}
		if($('#lastname').val().length >= 1)
		{
		$('#lastnameWrong').hide();
		}
		else
		{
			$('#lastnameWrong').show();
		}

	});
	$('#password1').keyup(function()
	{
		if($('#firstname').length >= 1 && $('#lastname').length >= 1 && $('#password1').val().length >= 6 && $('#password2').val() == ($('#password1').val()))
		{
			$('#btnRegsiter').attr("disabled", false);
		}
		else
		{
			$('#btnRegsiter').attr("disabled", true);
		}
		if($('#password1').val().length >= 6)
		{
			$('#password1Wrong').hide();
		}
		else
		{
			$('#password1Wrong').show();
		}
	});
	$('#password2').keyup(function()
	{
		if($('#firstname').length >= 1 && $('#lastname').length >= 1 && $('#password1').val().length >= 6 && $('#password2').val() == ($('#password1').val()))
		{
			$('#btnRegsiter').attr("disabled", false);
		}
		else
		{
			$('#btnRegsiter').attr("disabled", true);
		}
		if($('#password2').val() == ($('#password1').val()))
		{
			$('#password2Wrong').hide();
		}
		else
		{
			$('#password2Wrong').show();
		}
	});
});