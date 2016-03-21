<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>스프링프레임워크 게시판</title>

    <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
    <script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
    <link rel="stylesheet" href="resources/css/base.css">
   <link rel="stylesheet" href="resources/css/vendor.min.css">
   <link rel="stylesheet" href="resources/css/main.css"> 
    
  </head>
  <body>
	  
	<script>
	// 전송을 위한 체크 함수
	function form_save(form) {
	    var is = filter([
	   // { target : '#subject' , filter : 'empty' , title : '제목' },
	    { target : '#content' , filter : 'empty' , title : '내용' } , 
	    { target : '#user_name' , filter : 'number' , title : '작성자' }
	    ]);
	
	    if (is == true) {
	    	  jQuery.ajax({
	    	      type : 'POST' , 
	    	      url : './write_ok' ,
	    	      data : jQuery('#form :input').serialize()
	    	      }).done(function(data) {
	    	      var message = jQuery(data).find("message").text();
	    	      var error = jQuery(data).find("error").text();
	    	      alert(message);
	    	      if (error == 'false') location.href = './list';
	    	      
	    	      });
	    	  }
	}
	
	// 입력 항목의 체크 함수
	function filter(options) {
	    var is = true;
	
	    jQuery(options).each(function() {
	        var item = this;
	
	        switch (item.filter) {
	            case 'empty' :
	                var val = jQuery(item.target).val();
	                if (val == '') {
	                    alert(item.title + '을(를) 입력하세요.');
	                    jQuery(item.target).focus();
	                    is = false;
	                }
	            break;
	
	            case 'number' :
	                var val = jQuery(item.target).val();
	                var num_regx = /[^0-9]/;
	                if (num_regx.test(val)) {
	                alert(item.title + '을(를) 숫자만 입력하세요.');
	                jQuery(item.target).focus();
	                    is = false;
	                }
	            break;
	
	        }
	    });
	    return is;
	}
	
	</script>

    <form id="form" method="post" action="./write_ok">
    <input type="hidden" name="idx" id="idx" value="${object.idx}" />
    <div>
    <span>제목</span>
    <input type="text" id="subject" name="subject" value="${object.subject}" />
    </div>
    <div>
    <span>작성자</span>
    <input type="text" id="user_name" name="user_name" value="${object.user_name}" />
    </div>
    <div>
    <span>내용</span>
    <textarea id="content" name="content" rows="20" cols="40">${object.content}</textarea>
    </div>

    <div>
    <button id="save" type="button" onclick="form_save('#form');">저장</button>
    <a href="./list">목록</a>
    </div>
    </form>
  </body>
</html>