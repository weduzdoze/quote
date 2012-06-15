$(document).ready(function(){
	$("#addAccountButton").click(function() {
	  	$('#addAccountForm').slideDown('slow');
		$(this).hide()
    });
	$("#hideAdminForm").click(function(e) {
	  	e.preventDefault();
		$('#addAccountForm').slideUp('slow');
		$("#addAccountButton").show();
    });	
});


