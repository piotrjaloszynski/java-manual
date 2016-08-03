<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:url var="competitorListUrl" value="/competitor-list"/>
<c:url var="userListUrl" value="/users"/>
<c:url var="companyListUrl" value="/company-list"/>


<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>


            <a class="navbar-brand" href="${competitorListUrl}">competitor</a>
            <a class="navbar-brand" href="${userListUrl}">user</a>
            <a class="navbar-brand" href="${companyListUrl}">company</a>


        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${userListUrl}">wroc na user list</a></li>
                        <li><a href="${companyListUrl}">wroc na company list</a></li>
                        <li><a href="${competitorListUrl}">wroc na competitor list</a></li>


                        </select>
                        </form>
                    </ul>
                </li>
            </ul>


            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<form>

    </select>
</form>