<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "form" uri = "http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<title>Đăng Nhập</title>
<link rel="stylesheet" href="<core:url value="https://cdn.discordapp.com/attachments/950541467254943795/950557624896725002/login.css"/>"/>

<form:form action="login" method="POST" name="login" modelAttribute="login" >   
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
              <h4>Website quản lý của TheChosen</h4>
              <span class="las la-barcode"></span>
            </div>
          </div>
          <div class="login-detail">
            <div class="login-form">
              <h2>Đăng Nhập</h2>
              <div class="detail">
                <input type="text" placeholder="Tài khoản" value="No need username" />
              </div>
              <div class="detail">
                <input type="password" placeholder="Mật khẩu" value="No need password" />
              </div>
              <div class="detail">
                <input id="c1" type="checkbox" />
                <label for="c1">Ghi nhớ thông tin đăng nhập?</label>
              </div>
              <a href="home.html">
                <input
                  type="button"
                  class="main-button"
                  value="Đăng nhập"
                /> </a
              ><input type="button" class="sub-button" value="Quên mật khẩu" />
            </div>
          </div>
        </div>
      </div>
      <footer>17-1-2022, @GWhale7</footer>
    </div>
</form:form>  
