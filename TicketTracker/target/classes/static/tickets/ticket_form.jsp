<!DOCTYPE HTML>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

	<title>Save Ticket</title>
</head>

<body>

	<div class="container">
	
		<h3>Ticket Tracker</h3>
		<hr>
		
		<p class="h4 mb-4">Save Book</p>
	
		<form action="#" th:action="@{/tickets/save}"
						 th:object="${book}" method="POST">
		
			<!-- Add hidden form field to handle update -->
			<input type="hidden" th:field="*{id}" />
			
			<input type="text" th:field="*{title}"
					class="form-control mb-4 col-4" placeholder="Title">

			<input type="text" th:field="*{description}"
					class="form-control mb-4 col-4" placeholder="Description">

			<input type="text" th:field="*{created}"
					class="form-control mb-4 col-4" placeholder="Created On">
				
			<button type="submit" class="btn btn-info col-2">Save</button>
						
		</form>
	
		<hr>
		<a th:href="@{/tickets/list}">Back to tickets List</a>
		
	</div>
</body>

</html>