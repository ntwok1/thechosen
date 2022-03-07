<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<title>Đăng Nhập</title>

<form:form action="login" method="POST" name="login" modelAttribute="login" >   
    <h1 class="center-block">${statuslo2}</h1>
    <div class="form-group">
        <label>Tên Tài Khoản</label>

        <fmtt:input id="txtUser" path="tentaikhoan" type="text" class="form-control" />
    </div>
    <div class="form-group">
        <label>Mật Khẩu</label>

        <fmtt:input type="password" id="txtPass" class="form-control" path="matkhau"  />
    </div>

    <button type="submit"  class="btn btn-success btn-flat m-b-30 m-t-30">Đăng Nhập</button>
</form:form>  
