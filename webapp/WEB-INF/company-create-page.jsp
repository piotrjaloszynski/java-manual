<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="formularzykURL"  value="/create-company"/>
<html>
<head>
    <head>
        <title>Company create page</title>

        <script src="https://code.jquery.com/jquery.min.js"></script>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    </head>

<body style="background-color:lightgrey;">
<jsp:include page="menu.jsp"/>
<h1> Dodawanie Company</h1>
<form action="${formularzykURL}" method="POST" class="form-horizontal" role="form">
    <div class="form-group">
        <label class="control-label col-sm-2" for="name">name:</label>
        <div class="col-sm-10">
            <input type="text" name="name" class="form-control" id="name" placeholder="Enter name"><br>
        </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2" for="taxId">TaxId:</label>
            <div class="col-sm-10">
                <input type="text" name="taxId" class="form-control" id="taxId" placeholder="Enter taxId"><br>
            </div>
            </div>
            <div class="form-group">
                <label class="control-label col-sm-2" for="address">address:</label>
                <div class="col-sm-10">
                    <input type="text" name="address" class="form-control" id="address" placeholder="Enter address"><br>
                </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-2" for="numberOfEmployees">Enter number of Employees</label>
                    <div class="col-sm-10">
                        <input type="text" name="numberOfEmployees" class="form-control" id="numberOfEmployees" placeholder="Enter number of employees"><br>
                    </div>
</div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="industry">Enter industry</label>
                        <div class="col-sm-10">
                            <input type="text" name="industry" class="form-control" id="industry" placeholder="Enter industry"><br>
                        </div>
                        </div>
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Submit</button>
                        </div>


</form>


</body>
</html>
