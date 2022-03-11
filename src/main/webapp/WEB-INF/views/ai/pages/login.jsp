<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<title>Đăng Nhập</title>

<link rel="stylesheet" href="<core:url value="https://cdn.discordapp.com/attachments/950541467254943795/950800769697849364/login.css"/>" />
<form:form action="log-in" method="POST" name="login" modelAttribute="loginform" >  
<div class="login">
    <div class="header">
        <div class="line"></div>
        <div class="top-brand">
            <h1>
                <span class="las la-barcode"></span>
                <span>TheChosen</span>
            </h1>
        </div>
    </div>
    <div class="card">
        <div class="card-login">
            <div class="welcome">
                <div>
                    <h3>Chào mừng đến với</h3>
                    <h1>Prototype</h1>
                    <h4>Website quản lý của TheChosen </h4>
                    <span class="las la-barcode"></span>
                </div>
            </div>
            
                <div class="login-detail">
                    <div class="login-form">
                        <h2>Đăng Nhập ${status}</h2>
                        <div class="detail">
                            <form:input path="id" type="text" placeholder="Tài khoản"/>
                        </div>
                        <div class="detail">
                            <form:input path="password" type="password" placeholder="Mật khẩu"/>
                        </div>
                        <div class="detail">
                            <input id="c1" type="checkbox" />
                            <label for="c1">Ghi nhớ thông tin đăng nhập?</label>
                        </div>

                        <button type="submit"  class="main-button">Đăng Nhập</button>
                        <input type="button" class="sub-button" value="Quên mật khẩu" />
                    </div>
                </div>
        </div>
    </div>
    <footer>17-1-2022, @GWhale7</footer>
</div>

</form:form>