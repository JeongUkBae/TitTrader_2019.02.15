<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../home/top.jsp"/>
<link rel="stylesheet" 
	href="${css}/customer/list.css" />
<link rel="stylesheet" href="${css}/customer/navi_bar.css" />
<div class="grid-item" id="navi_bar">
	<jsp:include page="../home/post-navi-bar.jsp"/>
	</div>

 	<h1><font style="font-size: 30px">검색 결과</font></h1>

<div class="grid-item" id="content">
	
	<table class="grid-item">
	
	  <tr>
	    <th>
			<jsp:include page="../home/side-menu.jsp"/>	
	      		
	    </th>
		<th>
				 <img src="http://yachuk.com/wp/wp-content/uploads/bfi_thumb/parisneymar-e1500601822694-3499qzakv4cj5vl427lou8.jpg" 
	  				class="img-responsive" alt="Responsive image">
			
		</th>
		<th>
				 아이디:  ${cust.customerID}<br />
				 이름 : ${cust.customerName}<br />
				생년월일 : ${cust.ssn}<br />
				성별 : 남 <br />
				핸드폰 : ${cust.phone}<br />
				사진 : ${cust.photo}<br />
				우편번호 : ${cust.postalcode}<br />
				도로명 : ${cust.city}<br />
				상세주소 : ${cust.address}<br />
		
		</th>
	  </tr>
	  </table>
</div>	  

<jsp:include page="../home/bottom.jsp"/>
<script>
/* $('.list_count').click(function(){
	 alert('클릭한페이지'+$(this).text());
	 location.assign('${ctx}/customer.do?cmd=cust_list&page=list&page_num=2');
}); */

	 //page_num, page_size, cmd, dir, page
	 // ?cmd=list&page=list&page_num=2
	 /* 
	<input type="hidden" name="cmd" value="access" />
    <input type="hidden" name="dir" value="customer" />
    <input type="hidden" name="page" value="list" />
	 
	 */
</script>