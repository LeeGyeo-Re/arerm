<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="no-js oldie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="no-js oldie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html class="no-js" lang="en"> <!--<![endif]-->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>스프링프레임워크 게시판</title>
    <link rel="stylesheet" href="resources/css/gesipal.css">
    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	<link rel="stylesheet" href="resources/css/base.css">
   <link rel="stylesheet" href="resources/css/vendor.min.css">
   <link rel="stylesheet" href="resources/css/main.css"> 
   
    <script>
    function del(idx) {
        jQuery.ajax({
            type : 'POST' , 
            url : './delete' ,
            data : 'idx=' + idx
        }).done(function(data) {
            var message = jQuery(data).find("message").text();
            var error = jQuery(data).find("error").text();
            alert(message);
            if (error == 'false') location.reload();
        });
    }
    </script>
  </head>
  <body>
  <h1>${message}</h1>
  
  
  <!-- header
   ================================================== -->
   <header id="main-header">

   	<div class="row">

	      <div class="logo">
	         <a href="./"></a>
	      </div>

	      <nav id="nav-wrap">         
	         
	         <a class="mobile-btn" href="#nav-wrap" title="Show navigation">
	         	<span class="menu-icon">Menu</span>
	         </a>
         	<a class="mobile-btn" href="#" title="Hide navigation">
         		<span class="menu-icon">Menu</span>
         	</a>            

	         <ul id="nav" class="nav">
	            <li><a href="./">Main.</a></li>
	            <li><a href="./write">write.</a></li>
	         </ul> <!-- end #nav -->

	      </nav> <!-- end #nav-wrap -->

	      <ul class="header-social">
	        	<li><a href="#"><i class="fa fa-facebook"></i></a></li>
	        	<li><a href="#"><i class="fa fa-twitter"></i></a></li>
	        	<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
	      </ul>      

	   </div>

   </header> <!-- end header -->
   
   
  <div class = "mainTable">
  <h1>List</h1>
  <table  border="1">
    <colgroup>
    <col width="100"><col><col width="200"><col width="150">
    </colgroup>
    <thead>
    <tr>
        <th scope="col">기능</th>
        <th scope="col">제목</th>
        <th scope="col">작성자</th>
        <th scope="col">등록일</th>
    </tr>
    </thead>

    <tbody>
    <!-- 목록이 반복될 영역 -->
    <c:forEach var="item" items="${list}" varStatus="status">
    <tr>
        <td><button type="button" onclick="del(${item.idx});">${item.idx} 삭제</button></td>
        <td><a href="./${item.idx}">${item.subject}</a></td>
        <td>${item.user_name}</td>
        <td>${item.reg_datetime}</td>
    </tr>
    </c:forEach>

    </tbody>

  </table>
  </div>

  </body>
</html>