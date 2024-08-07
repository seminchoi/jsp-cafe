<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="kr">
<%@include file="/WEB-INF/share/header.jsp" %>
<body>
<%@include file="/WEB-INF/share/navbar.jsp" %>
<%@include file="/WEB-INF/share/sub_navbar.jsp" %>

<div class="container" id="main">
    <div class="col-md-12 col-sm-12 col-lg-10 col-lg-offset-1">
        <div class="panel panel-default content-main">
            <form name="question" method="post" action="/qna">
                <div class="form-group">
                    <label for="writer">글쓴이</label>
                    <input class="form-control" id="writer" name="authorId" disabled
                           value="<c:out value="${loginUser.name}" />"
                    />
                </div>
                <div class="form-group">
                    <label for="title">제목</label>
                    <input type="text" class="form-control" id="title" name="title" placeholder="제목"/>
                </div>
                <div class="form-group">
                    <label for="contents">내용</label>
                    <textarea name="contents" id="contents" rows="5" class="form-control"></textarea>
                </div>
                <button type="submit" class="btn btn-success clearfix pull-right">질문하기</button>
                <div class="clearfix"/>
            </form>
        </div>
    </div>
</div>

<%@include file="/WEB-INF/share/footer.jsp" %>
</body>
</html>