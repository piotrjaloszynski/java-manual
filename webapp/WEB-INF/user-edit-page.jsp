<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="usereditactionURL" value="/user-edit"/>

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
<h1>edytuj usera</h1>
<form action="${usereditactionURL}" method="POST">
    <input type="hidden" id="id" value="${user.id}" name="id">
    <!--  name:<input type="text" name="name" values="${user.name}"><br>
    Last name: <input type="text" name="lastName" value="${user.lastName}"><br>
    email: <input type="text" name="email" value="${user.email}"><br>
    department:<input type="text" name="department" value="${user.department}"><br>
    submit:<input type="submit" value="zapisz user`a"><br>

</form><!-->


    <div class="form-group">
        <label class="control-label col-sm-2" for="name">name:</label>
        <div class="col-sm-10">
            <input type="text" name="name" class="form-control" id="name" placeholder="Enter name" value="${user.name}"><br>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="lastName">Last name:</label>
        <div class="col-sm-10">
            <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Enter last Name" value="${user.lastName}"><br>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="email">email:</label>
        <div class="col-sm-10">
            <input type="text" name="email" class="form-control" id="email" placeholder="Enter email" value="${user.email}"><br>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="department">Enter department</label>
        <div class="col-sm-10">
            <input type="text" name="department" class="form-control" id="department"
                   placeholder="Enter department" value="${user.department}"><br>
        </div>
    </div>

    <div class="form-group">
        <label class="control-label col-sm-2" for="company">Choose company: </label>
        <div class="col-sm-10">
            <select class="form-control" name="company_id" id = "company">
                <c:forEach items="${companies}" var="company">
                    <option value="${company.id}">${company.name}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
    </div>


</form>


</body>
</html>
