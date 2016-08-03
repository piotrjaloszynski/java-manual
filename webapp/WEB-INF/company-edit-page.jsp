<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="companyeditActionURL" value="/company-edit"/>

<html>
<head>
    <link rel="stylesheet" href="Main.css">
    <meta charset="UTF-8">
    <title>Title</title>
    <script src="https://code.jquery.com/jquery.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body style="background-color:lightgrey;">
<jsp:include page="menu.jsp"/>
<h1>edytuj company</h1>
<form action="${companyeditActionURL}" method="POST">
    <input type="hidden" id="id" value="${company.id}" name="id">
    <!--   name:<input type="text" name="name" values="${company.name}"><br>
    taxId:<input type="text" name="taxId" value="${company.taxId}"><br>
    address:<input type="text" name="address" value="${company.address}"><br>
    number of employees:<input type="text" name="numberOfEmployees" value="${company.numberOfEmployees}"><br>
   industry:<input type="text" name="industry" value="${company.industry}"><br>
    <input type="submit" value="zapisz company">
</form><!-->


    <div class="form-group">
        <label class="control-label col-sm-2" for="name">name:</label>
        <div class="col-sm-10">
            <input type="text" name="name" class="form-control" id="name" placeholder="Enter name"
                   value="${company.name}"><br>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="taxId">taxId:</label>
        <div class="col-sm-10">
            <input type="text" name="taxId" class="form-control" id="taxId" placeholder="Enter taxId"
                   value="${company.taxId}"><br>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="address">address:</label>
        <div class="col-sm-10">
            <input type="text" name="address" class="form-control" id="address" placeholder="Enter address"
                   value="${company.address}"><br>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="numberOfEmployees">Enter number of employees:</label>
        <div class="col-sm-10">
            <input type="text" name="numberOfEmployees" class="form-control" id="numberOfEmployees"
                   placeholder="Enter number Of Employees" value="${company.numberOfEmployees}"><br>
        </div>
   </div>


    <div class="form-group">
        <label class="control-label col-sm-2" for="industry">Enter industry:</label>
        <div class="col-sm-10">
            <input type="text" name="industry" class="form-control" id="industry" placeholder="Enter industry"
                   value="${company.industry}"><br>
        </div>
    </div>
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
    </div>

</form>



</body>
</html>
