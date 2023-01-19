<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <%@ include file="../layout/header.jsp" %>
        <h1>로그인 페이지</h1>
        <hr />
        <%-- ${requestScope.username} --%>
        <%-- ${sesseionScope.username} --%>
        <form action="/login" method="post">
            <input type="text" name="username" value="${remember}" placeholder="Enter username" required><br />
            <input type="password" name="password" placeholder="Enter password" required><br />
            유저네임을 기억할까요? <input type="checkbox" name="remember"><br />
            <button type="submit">로그인</button>
        </form>

        <%@ include file="../layout/footer.jsp" %>