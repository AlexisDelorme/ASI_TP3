<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<title>Insert title here</title>
</head>
<style type="text/css">
	.row{
	margin-top:5%;
	}
</style>
<body>
	<div class="container">
		<form action="/TP3SI/AddArticleController" method="post">
			<div class="row">
				<div class="col">
					<strong>Author</strong> <input type="text" class="form-control"
						placeholder="Enter author">
				</div>
				<div class="col">
					<strong>Date</strong> <input type="date" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<strong>Title</strong> <input type="text" class="form-control">
				</div>
			</div>
			<div class="row">
				<div class="col">
					<strong>Section</strong> <select class="custom-select"
						id="inputGroupSelect01">
						<option selected>Choose...</option>
						<option value="1">Politics</option>
						<option value="2">Cinema</option>
						<option value="3">Sport</option>
					</select>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" value="option1"> <label
							class="form-check-label" for="inlineRadio1">In edition</label>
					</div>
				</div>
				<div class="col">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" value="option2"> <label
							class="form-check-label" for="inlineRadio2">Submited</label>
					</div>
				</div>
				<div class="col">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio"
							name="inlineRadioOptions" value="option3"> <label
							class="form-check-label" for="inlineRadio2">Accepted</label>
						<div class="form-check form-check-inline"></div>
					</div>
				</div>
				<div class="col">
					<input class="form-check-input" type="radio"
						name="inlineRadioOptions" value="option2"> <label
						class="form-check-label" for="inlineRadio2">Published</label>
				</div>
			</div>
			<div class="row">
			<strong>Text</strong>
			<textarea class="form-control"></textarea>
			</div>
			<br>
			<button type="submit" class="btn btn-success">Envoyer</button>
		</form>
	</div>
</body>
</html>