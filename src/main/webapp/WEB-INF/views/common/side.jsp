<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    isELIgnored="false"
    %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<style>
.list-group-item.active {
    z-index: 1;
    color: black;
	border-color: #cecece;
    background-color:#FEF7DD;
} 
</style>

</head>

<c:choose>
	<c:when test="${isLogOn==true && param.page=='adminPage'}">
		<div class="list-group">
			<a href="${contextPath}/member/myPageMain.do?page=adminPage" class="list-group-item list-group-item-action active" aria-current="true">
				${memberInfo.member_name}님의 마이페이지 <br>${memberInfo.member_email}
			</a>
			<a href="${contextPath}/admin/member/sellerManageList.do?page=adminPage" class="list-group-item list-group-item-action">사업자 관리</a>
			<a href="${contextPath}/admin/order/diaryManageList.do?page=adminPage" class="list-group-item list-group-item-action">다이어리 관리</a>
			<a href="${contextPath}/admin/member/memberManageList.do?page=adminPage" class="list-group-item list-group-item-action">회원 관리</a>
			<a href="${contextPath}/admin/goods/listSellerGoodsAdmin.do?page=adminPage" class="list-group-item list-group-item-action">상품 관리</a>
			<div class="list-group-item list-group-item-action active" aria-current="true">
				커뮤니티 관리</div>
			<a href="${contextPath}/community/admininfolist.do?page=adminPage" class="list-group-item list-group-item-action">공지사항 관리</a>
			<a href="${contextPath}/community/adminfreelist.do?page=adminPage" class="list-group-item list-group-item-action">자유게시판 관리</a>
			<a href="${contextPath}/community/adminAnswer.do?page=adminPage" class="list-group-item list-group-item-action">문의 내역 관리</a>
		</div>

	</c:when>
	<c:when test="${isLogOn==true && param.page=='sellerPage'}">
        <!-- 사업자 side 메뉴 -->
        <div class="list-group">
            <a href="${contextPath}/member/myPageMain.do?page=sellerPage" class="list-group-item list-group-item-action active" aria-current="true">
                ${memberInfo.seller_name}님의 마이페이지 <br>${memberInfo.seller_email}

            <a href="${contextPath}/member/modpassword.do?page=sellerPage" class="list-group-item list-group-item-action">사업자 정보 수정</a>
            <a href="${contextPath}/seller/listSellerGoods.do?page=sellerPage" class="list-group-item list-group-item-action">상품 관리</a>
            <a href="${contextPath}/seller/listSellerOrder.do?page=sellerPage" class="list-group-item list-group-item-action">주문 관리</a>
            <a href="${contextPath}/seller/sellerQuestionAnswer.do?page=sellerPage" class="list-group-item list-group-item-action">문의 내역 관리</a>
            <a href="${contextPath}/member/mypageDel.do?page=sellerPage" class="list-group-item list-group-item-action">회원 탈퇴</a>
        </div>
    </c:when>

	<c:otherwise>
		<div class="list-group">
			<c:if test="${userType=='S'}">
				<a href="${contextPath}/member/myPageMain.do" class="list-group-item list-group-item-action active" aria-current="true">
					${memberInfo.seller_name}님의 마이페이지 <br>${memberInfo.seller_email}
				</a>
			</c:if>
			<c:if test="${userType!='S'}">
				<a href="${contextPath}/member/myPageMain.do" class="list-group-item list-group-item-action active" aria-current="true">
					${memberInfo.member_name}님의 마이페이지 <br>${memberInfo.member_email}
				</a>
			</c:if>
			<c:if test="${userType!='S'}">
			<a href="${contextPath}/member/modpassword.do" class="list-group-item list-group-item-action">내 정보 수정</a>
			</c:if>
			<a href="${contextPath}/mypage/listMyOrderHistory.do" class="list-group-item list-group-item-action">주문내역/배송조회</a>
			<a href="${contextPath}/cart/myCartList.do" class="list-group-item list-group-item-action">장바구니</a>
			<a href="${contextPath}/mypage/wishList.do" class="list-group-item list-group-item-action">위시리스트</a>
			<a href="${contextPath}/mypage/myReviewList.do" class="list-group-item list-group-item-action">리뷰 관리</a>
			<a href="${contextPath}/member/mypageDel.do" class="list-group-item list-group-item-action">회원 탈퇴</a>
		</div>

	</c:otherwise>
</c:choose>





</html>