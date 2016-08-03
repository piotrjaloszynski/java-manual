<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="createcompetitorformURL" value="/create-competitor"/>
<html>
<title>Title</title>

<script src="https://code.jquery.com/jquery.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>
<body style="background-color:lightgrey;">
<jsp:include page="menu.jsp"/>
<h1>Dodawanie competytora</h1>

<form action="${createcompetitorformURL}" method="POST" class="form-horizontal" role="form">
    <div class="form-group">
        <label class="control-label col-sm-2" for="brand">brand:</label>
        <div class="col-sm-10">
            <input type="text" name="brand" class="form-control" id="brand" placeholder="Enter brand"><br>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="area">Last name:</label>
        <div class="col-sm-10">
            <input type="text" name="area" class="form-control" id="area" placeholder="Enter area"><br>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="capacity">capacity:</label>
        <div class="col-sm-10">
            <input type="text" name="capacity" class="form-control" id="capacity" placeholder="Enter capacity"><br>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="lifeExpectancy">Enter life Expectancy</label>
        <div class="col-sm-10">
            <input type="text" name="lifeExpectancy" class="form-control" id="lifeExpectancy"
                   placeholder="Enter life Expectancy"><br>
        </div>
    </div>
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
    </div>


</form>
</body>
</html>
