<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>My page</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center my-3">Employee Management table</h1>
            <h2 class="mb-3">Welcome to this page </h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Phone number</th>
                        <th>Salary</th>
                        <th>Actions</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${employee}" var="emp">
                    <tr>
                        <th>${emp.id}</th>
                        <th>${emp.name}</th>
                        <th>${emp.address}</th>
                        <th>${emp.email}</th>
                        <th>${emp.phoneNum}</th>
                        <th>${emp.salary}</th>
                        <th><a href="delete-emp?id=${emp.id}" class="btn btn-warning">Delete</a></th>
                        <th><a href="update-emp?id=${emp.id}" class="btn btn-success">Update</a></th>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <a href="add-emp" class="btn btn-success">Add Employee</a>
        </div>
    </body>
</html>