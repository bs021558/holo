<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>임시 검색창</title>
<script>
function searchSubmit() {
	    if(document.searchform.search.value == "") {
	        alert("검색어를 입력하세요!");
	        document.searchform.search.focus();
	        return false;
	    }
	    
 }
 </script>
</head>

<body>

<form name="searchform" action="/holo/search/searchList.holo" onsubmit="return searchSubmit()">
	<select name="choice">
		<option value="id" selected> 작성자  </option>
		<option value="subject"> 제목  </option>
		<option value="content"> 내용 </option>
	</select>
		<input type="text" name="search">
		<input type="submit" value="검색">
</form>
</body>
</html>
