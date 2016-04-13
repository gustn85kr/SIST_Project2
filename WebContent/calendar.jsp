<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">

<style type="text/css">
.btn span.glyphicon {    			
	opacity: 0;				
}
.btn.active span.glyphicon {				
	opacity: 1;				
}
</style>
</head>
<body>
<div class="container">
	<h1 class="text-center">Checkbox/Radio - CSS Only</h1>
</div>

<div class="container">

	<div class="well well-sm text-center">

		<h3>Checkbox</h3>
		
		<div class="btn-group" data-toggle="buttons">
			
			<label class="btn btn-success active">
				<input type="checkbox" autocomplete="off" checked>
				<span class="glyphicon glyphicon-ok"></span>
			</label>

			<label class="btn btn-primary">
				<input type="checkbox" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>			
		
			<label class="btn btn-info">
				<input type="checkbox" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>			
		
			<label class="btn btn-default">
				<input type="checkbox" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>			

			<label class="btn btn-warning">
				<input type="checkbox" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>			
		
			<label class="btn btn-danger">
				<input type="checkbox" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>			
		
		</div>

	</div>

</div>


<div class="container">			

	<div class="well well-sm text-center">

		<h3>Radio</h3>
		
		<div class="btn-group" data-toggle="buttons">
			
			<label class="btn btn-success active">
				<input type="radio" name="options" id="option2" autocomplete="off" chacked>
				<span class="glyphicon glyphicon-ok"></span>
			</label>

			<label class="btn btn-primary">
				<input type="radio" name="options" id="option1" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>

			<label class="btn btn-info">
				<input type="radio" name="options" id="option2" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>

			<label class="btn btn-default">
				<input type="radio" name="options" id="option2" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>

			<label class="btn btn-warning">
				<input type="radio" name="options" id="option2" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>

			<label class="btn btn-danger">
				<input type="radio" name="options" id="option2" autocomplete="off">
				<span class="glyphicon glyphicon-ok"></span>
			</label>
		
		</div>


	</div>

</div>
</body>
</html>