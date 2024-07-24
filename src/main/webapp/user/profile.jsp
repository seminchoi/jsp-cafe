<%@ page import="codesqaud.app.model.User" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="kr">
<%@include file="/share/header.jsp" %>
<body>
<%@include file="/share/navbar.jsp" %>
<%@include file="/share/sub_navbar.jsp" %>

<div class="container" id="main">
    <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading"><h4>Profiles</h4></div>
            <div class="panel-body">
                <div class="well well-sm">
                    <div class="media">
                        <a class="thumbnail pull-left" href="#">
                            <img class="media-object" src="../images/80-text.png">
                        </a>
                        <% User user = (User) request.getAttribute("userProfile");%>
                        <div class="media-body">
                            <h4 class="media-heading"><%= user.getName() %>></h4>
                            <p>
                                <a href="#" class="btn btn-xs btn-default"><span
                                        class="glyphicon glyphicon-envelope"></span> <%= user.getEmail()%>
                                </a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- script references -->
<script src="../js/jquery-2.2.0.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/scripts.js"></script>
</body>
</html>