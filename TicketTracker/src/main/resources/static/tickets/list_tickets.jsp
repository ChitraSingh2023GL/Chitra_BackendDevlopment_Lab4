<!DOCTYPE HTML>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

	<title>Ticket Tracker</title>
</head>

<body>

<div class="container">

	<h3>Ticket Tracker</h3>
	<hr>
	
	<!-- Add a button -->
	<a th:href="@{/tickets/showFormForAdd}"
		class="btn btn-primary btn-sm mb-3">
		Add Book
	</a>
	
	
	<table class="table table-bordered table-striped">
		<thead class="thead-dark">
			<tr>
				<th>#</th>
				<th>Ticket Title</th>
				<th>Ticket Short Description</th>
				<th>Ticket Created On</th>
				<th>Action</th>
			</tr>
		</thead>
		
		<tbody>
			<tr th:each="tempTicket : ${tickets}">
			
				<td th:text="${tempTicket.id}" />	
				<td th:text="${tempTicket.title}" />	
				<td th:text="${tempTicket.description}" />	
				<td th:text="${tempTicket.created}" />	
				
				<td>
				<div class="row">
				
					<div class="col-small">
					<!-- Add "update" button/link -->
					<form action="#" th:action="@{/tickets/showFormForUpdate}" method="POST">
					
						<input type="hidden" name="ticketId" th:value="${tempTicket.id}" />						
						<button type="submit" class="btn btn-info btn-sm ml-3 mr-1">Update</button>

					</form>
					</div>
					
					<div class="col-small">
					<!-- Add "delete" button/link -->					
					<form action="#" th:action="@{/tickets/delete}" method="POST">
					
						<input type="hidden" name="ticketId" th:value="${tempTicket.id}" />						
						<button type="submit" class="btn btn-danger btn-sm"
								onclick="if (!(confirm('Are you sure you want to delete this ticket?'))) return false">
								Delete
						</button>

					</form>
					</div>
				</div>	
				</td>
				
				
			</tr>
		</tbody>		
	</table>
	
</div>
	
</body>
</html>