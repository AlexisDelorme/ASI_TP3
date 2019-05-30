<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Liste des Articles</title>
</head>
<style type="text/css">
	.row{
	margin-top:5%;
	}
</style>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<a class="btn btn-primary" href="AddArticle.jsp" role="button">New</a>
			</div>
			<div class="col">
				<form class="form-inline">
					<input class="form-control mr-sm-2" type="search"
						placeholder="Search" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				</form>
			</div>
		</div>
		<div class="row">
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th scope="col">Author</th>
						<th scope="col">Section</th>
						<th scope="col">Status</th>
						<th scope="col">Date</th>
						<th scope="col">Title</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row">Mark</th>
						<td>Politics</td>
						<td>Published</td>
						<td>21/11/2018</td>
						<td>Title 1</td>

					</tr>
					<tr>
						<th scope="row">Jacob</th>
						<td>Cinema</td>
						<td>Published</td>
						<td>22/04/2019</td>
						<td>Title 2</td>
					</tr>
					<tr>
						<th scope="row">Larry</th>
						<td>Sport</td>
						<td>Published</td>
						<td>04/03/2018</td>
						<td>Title 3</td>
					</tr>
				</tbody>
			</table>

		</div>
	</div>
</body>
</html>