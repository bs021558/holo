<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<meta charset="UTF-8">
<link rel="stylesheet" href="../resource/style/main.css">

<link rel="stylesheet" type="text/css" href="https://cdn.rawgit.com/moonspam/NanumSquare/master/nanumsquare.css">


<title>main 페이지</title>
</head>

<script>
   function logout_check(){
      if(confirm("정말로 떠나시겠습니까?")){
         window.location="/holo/member/logout.holo";
      }
   }
</script>

<body>
   <div id="wrap">
      <header>
      <p>${sessionScope.sessionId}</p>
         <div>
            <h1 class="logo">
               <a href="/holo/member/main.holo"><img src="../resource/image/holoLogo.png"/></a>
            </h1>
            
            
            <div>
            <!-- 검색창 -->   
            </div>
            
               <span class='green_window'>
            <input type='text' class='input_text' placeholder="검색어를 입력해주세요."/>
         </span>
            <button type='submit' class='sch_smit'><i class="fa fa-search"></i></button>
            
            <ul class="gnb">
            <c:if test="${sessionId == null}">
               <li><a href="/holo/member/loginForm.holo">로그인</a></li>
               <li><a href="/holo/member/signupForm.holo">회원가입</a></li>
            </c:if>
            <c:if test="${sessionId != null}">   
               <li><a href="#" onclick="logout_check()">로그아웃</a></li>
               <li><a href="/holo/member/mypage.holo">마이페이지</a></li>
               
            </c:if>
               <li><a href="/holo/notice/list.holo">공지사항</a></li>
               <li><a href="#">고객센터</a></li>
            </ul>
         </div>
      </header>
      </div>
      
      <div class="menu_wrap">
      <ul class="dep1">
         <li>
            <a href="/holo/guide/location_map.holo">초보자가이드</a>
            <ul class="dep2">
               <li><a href="#">집 구하기 가이드</a></li>
               <li><a href="#">시세</a></li>
               <li><a href="/holo/guide/map_places.holo">상권</a></li>
               <li><a href="#">교통</a></li>
            </ul>
         </li>   
         <li>
            <a href="/holo/infoboard/list.holo">생활정보</a>
            <ul class="dep2">
               <li><a href="/holo/best/infolist.holo">best정보</a></li>
               <li><a href="/holo/infoboard/list.holo?category_a=living">생활팁</a></li>
               <li><a href="/holo/infoboard/list.holo?category_a=cooking">자취요리팁</a></li>
               <li><a href="/holo/infoboard/list.holo?category_a=findplace">집구하기팁</a></li>
            </ul>
         </li>   
         <li>
            <a href="/holo/market/list.holo">장터</a>
            <ul class="dep2">
               <li><a href="/holo/market/list.holo?category_a=market">중고장터</a></li>
               <li><a href="/holo/market/list.holo?category_a=free&category_b=b">무료나눔</a></li>
               <li><a href="/holo/market/list.holo?category_a=group&category_b=b">공동구매</a></li>
            </ul>
         </li>   
         <li>
            <a href="/holo/diy/list.holo">집꾸미기</a>
            <ul class="dep2">
               <li><a href="/holo/best/diylist.holo">베스트인테리어</a></li>
               <li><a href="/holo/diy/list.holo?category_a=myroom">우리집인테리어</a></li>
            </ul>
         </li>   
         <li>
            <a href="/holo/com/list.holo?category_a=1&category_b=1">자유게시판</a>
            <ul class="dep2">
               <li><a href="/holo/best/comlist.holo">자유게시판 Best</a></li>
               <li><a href="/holo/com/list.holo?category_a=1&category_b=1">전체 자유게시판</a></li>
               <li><a href="/holo/com/list.holo?category_a=2&category_b=1">지역별 자유게시판</a></li>
            </ul>
         </li>
      </ul>
      </div>
      <div id="idx_board_wrap">
         <div>
            <div class="idx_board">
               <div class="title">
               <a href="#" class="name">공지사항</a>
               <a href="#" class="more"><img src="../resource/image/more.PNG" alt="더 보기"></a>
            </div>
            <div class="list">   
               <ul>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
               </ul>
               </div>         
            </div>
            <div class="idx_board">
               <div class="title">
               <a href="#" class="name">자유게시판</a>
               <a href="#" class="more"><img src="../resource/image/more.PNG" alt="더 보기"></a>
            </div>
            <div class="list">   
               <ul>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
               </ul>
               </div>         
            </div>
            <div class="idx_board">
               <div class="title">
               <a href="#" class="name">인테리어</a>
               <a href="#" class="more"><img src="../resource/image/more.PNG" alt="더 보기"></a>
            </div>
            <div class="list">   
               <ul>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
               </ul>
               </div>         
            </div>
            <div class="idx_board">
               <div class="title">
               <a href="#" class="name">생활정보</a>
               <a href="#" class="more"><img src="../resource/image/more.PNG" alt="더 보기"></a>
            </div>
            <div class="list">   
               <ul>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
                  <li>
                     <a href="#">글 제목이 들어갑니다.</a>
                     <span>2021-2-9</span>
                  </li>
               </ul>
               </div>         
            </div>
         </div>
      </div>
      <div class="foot">
         <ul>
            <li><a href="#">사이트 도움말</a></li>
            <li><a href="#">사이트 이용약관</a></li>
            <li><a href="#">사이트 운영원칙</a></li>
            <li><a href="#">개인정보 취급방침</a></li>
            <li><a href="#">책임의 한계와 법적고지</a></li>
            <li><a href="#">게시중단요청서비스</a></li>
            <li><a href="#">고객센터</a></li>
         </ul>
       <address>
          Copyright @
          <a href="#"><strong>HOLO</strong></a>
          All Rights Reserved.
          </address>     
      </div>
   </body>   
   
</html>      


<!-- <input type="search" name="search" class="search_input" data-role="total-input-keyword" title="통합검색" placeholder="검색어를 입력하세요." /></input>
      <button type="button" class="search_button" data-role="total-submit" title="검색하기"/><span class="fa fa-search"></span></button> -->   