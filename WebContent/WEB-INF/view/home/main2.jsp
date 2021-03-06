<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="head.jsp"/>
</head>
<body>
	<%
		System.out.println(" => 홈 메인 입장");
	%>
<div class="grid-container">
    <div class="grid-item" id="item1">
    	<jsp:include page="header.jsp"/>	
    </div>
    
    
    <div class="grid-item" id="item2">
    	<c:choose>
			<c:when test="${compo eq 'post'}"> 
				<jsp:include page="post-navi-bar.jsp"/>
			</c:when>
			<c:otherwise>
				<jsp:include page="pre-navi-bar.jsp"/>
			</c:otherwise>
		</c:choose>
    </div>
    
    
    <div class="grid-item" id="item3">
    	로그인
    </div>
    
    
    <div class="grid-item" id="item4">
    	<jsp:include page="side-menu.jsp"/>
    </div>
    
    
    <div class="grid-item" id="item5">
    	<c:choose>
			<c:when test="${compo eq 'pre'}"> 
				<jsp:include page="../employee/register.jsp"/>
			</c:when>
			<c:otherwise>
				<jsp:include page="../employee/register.jsp"/>
			</c:otherwise>
		</c:choose>
    </div>
    
    
    <div class="grid-item" id="item6">
    	<jsp:include page="footer.jsp"/>
    </div>
</div>
</body>
</html>