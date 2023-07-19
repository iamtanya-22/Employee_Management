<%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Employee</title>
    </head>
    <body>
        <div class="container">
            <h2 class="text-center my-3">Enter Employee Details</h2>
        <c:form method="post" modelAttribute="employee">
            <fieldset class="my-2">
                <c:label path="name">Name</c:label> 
                <c:input type="text" path="name" required="required"></c:input>
                <c:errors path="name" cssClass="text-warning"></c:errors>
            </fieldset>
            <fieldset class="my-2">
                <c:label path="address">Address</c:label> 
                <c:input type="text" path="address" required="required"></c:input>
                <c:errors path="address" cssClass="text-warning"></c:errors>
            </fieldset>
            <fieldset class="my-2">
                <c:label path="email">Email</c:label> 
                <c:input type="email" path="email" required="required"></c:input>
                <c:errors path="email" cssClass="text-warning"></c:errors>
            </fieldset>
            <fieldset class="my-2">
                <c:label path="phoneNum">Phone Number</c:label> 
                <c:input type="number" path="phoneNum" required="required"></c:input>
                <c:errors path="phoneNum" cssClass="text-warning"></c:errors>
            </fieldset>
            <fieldset class="my-2">
                <c:label path="salary">Salary</c:label> 
                <c:input type="number" path="salary" required="required"></c:input>
                <c:errors path="salary" cssClass="text-warning"></c:errors>
            </fieldset> 
            <input type="submit" class="btn btn-success">
        </c:form>
    </div>
    </body>
</html>