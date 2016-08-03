<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:url var="formularzURL" value="/create-user"/>

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
<h1>Dodawania Uzytkownika</h1>
<%--<form action="${formularzURL}" method="POST">
  name: <input type="text" name="name"><br>
    Last Name:<input class="" type="text" name="lastName"><br>
    email:<input type="email" name="email"><br>
    department:<input type="text" name="department"><br>
    <input type="submit" value="save">

</form>--%>

<form action="${formularzURL}" method="POST" class="form-horizontal" role="form">
    <div class="form-group">
        <label class="control-label col-sm-2" for="name">name:</label>
        <div class="col-sm-10">
            <input type="text" name="name" class="form-control" id="name" placeholder="Enter name"><br>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="lastName">Last name:</label>
        <div class="col-sm-10">
            <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Enter Last name"><br>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="email">Email:</label>
        <div class="col-sm-10">
            <input type="text" name="email" class="form-control" id="email" placeholder="Enter email"><br>
        </div>
    </div>
    <div class="form-group">
        <label class="control-label col-sm-2" for="department">Enter department</label>
        <div class="col-sm-10">
            <input type="text" name="department" class="form-control" id="department"
                   placeholder="Enter department"><br>
        </div>

    </div>

    <select name="company_id">

        <option value="${company.id}"></option>

    </select>
<!--1 krok ,  user controler metoda create -user , dodac do modelu liste firm !-->
    <!--2 krok , jak bedzie lista firm , zrobic jedna option , option w petli for each !-->
    <!--3 krok ,  zeby sie ladnie wyswietlało na formularzu to jutro zakonczymy wyswietlanie na formularzu !-->
    <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
    </div>



</form>
</body>
</html>
