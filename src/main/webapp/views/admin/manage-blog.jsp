
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/css/" var="url"></c:url>
<c:url value="/js/" var="urljs"></c:url>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Manager Blog</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="${url }manager.css" rel="stylesheet" type="text/css" />
<style>
img {
	width: 200px;
	height: 120px;
}

<style>.gallery-wrap .img-big-wrap img {
	height: 450px;
	width: auto;
	display: inline-block;
	cursor: zoom-in;
}

.gallery-wrap .img-small-wrap .item-gallery {
	width: 60px;
	height: 60px;
	border: 1px solid #ddd;
	margin: 7px 2px;
	display: inline-block;
	overflow: hidden;
}

.gallery-wrap .img-small-wrap {
	text-align: center;
}

.gallery-wrap .img-small-wrap img {
	max-width: 100%;
	max-height: 100%;
	object-fit: cover;
	border-radius: 4px;
	cursor: zoom-in;
}

.img-big-wrap img {
	width: 100% !important;
	height: auto !important;
}
</style>
<body>
	<jsp:include page="/views/admin/menu.jsp"></jsp:include>
	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>
							Manage <b>Blogs</b>
						</h2>
					</div>
					<div class="col-sm-6">
						<a href="#addEmployeeModal" class="btn btn-success"
							data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add
								New Blog</span></a> <a href="#deleteEmployeeModal"
							class="btn btn-danger" data-toggle="modal"><i
							class="material-icons">&#xE15C;</i> <span>Delete</span></a>
					</div>
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th><span class="custom-checkbox"> <input
								type="checkbox" id="selectAll"> <label for="selectAll"></label>
						</span></th>
						<th>Topic</th>
						<th>Blog Name</th>
						<th>Image</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${listP}" var="o">
						<tr>
							<td><span class="custom-checkbox"> <input
									type="checkbox" id="checkbox1" name="options[]" value="1">
									<label for="checkbox1"></label>
							</span></td>
							<td>${o.blogName}</td>
							<td>${o.blogName}</td>
							<td><img src="${o.blogImage}"></td>
							<td><a href="#editEmployeeModal" class="edit"
								data-toggle="modal"><i class="material-icons"
									data-toggle="tooltip" title="Edit">&#xE254;</i></a> <a
								href="delete_blog?bId=${o.blogId}" class="delete" data-toggle="modal"><i
									class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="clearfix">
				<div class="hint-text">
					Showing <b>entries</b>
				</div>
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Edit Modal HTML -->
	<div id="addEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="add_blog" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Add Blog</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Name</label> <input name="name" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Image</label> <input name="image" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Description</label>
							<textarea name="description" class="form-control" required></textarea>
						</div>

					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-success" value="Add">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Edit Modal HTML -->
	<div id="editEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form>
					<div class="modal-header">
						<h4 class="modal-title">Edit Blog</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>Name</label> <input name="name" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Image</label> <input name="image" type="text"
								class="form-control" required>
						</div>
						<div class="form-group">
							<label>Description</label>
							<textarea name="description" class="form-control" required></textarea>
						</div>

					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit" class="btn btn-info"
							value="Save">
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Delete Modal HTML -->
	<div id="deleteEmployeeModal" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form action="delete_blog" method="post">
					<div class="modal-header">
						<h4 class="modal-title">Delete Blog</h4>
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<p>Are you sure you want to delete these blogs?</p>
						<p class="text-warning">
							<small>This action cannot be undone.</small>
						</p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal"
							value="Cancel"> <input type="submit"
							class="btn btn-danger" value="Delete">
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="${urljs }manager.js" type="text/javascript"></script>
	<script>
		
	</script>
	<jsp:include page="/views/admin/footer.jsp"></jsp:include>
</body>
</html>