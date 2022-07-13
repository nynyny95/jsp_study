<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
1 부터 <%= request.getParameter("num") %>까지 자연수 합 구하기<br>
<%
	int num = Integer.parseInt(request.getParameter("num"));

	int sum = 0;
	
	for (int i = 1; i <= num; i++) {
		if (i == num) {
			out.print(i + " = ");
		} else {
			out.print(i + " + ");
		}
		sum += i;
	}
	
	out.print(sum);
	
	// if문을 쓰면 불필요한 조건값 비교까지 이뤄져서 크기가 큰 경우 오래 걸릴 수 있으므로 다른 방안을 고려해보는 것도 좋다~
	// for문에서 i < num을 주면 그 전까지는 +를, 마지막 num 부분은 =를 줄 수 있으므로 굳이 if를 줄 필요는 없다!
%>
</body>
</html>