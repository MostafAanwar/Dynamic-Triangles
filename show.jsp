<%@page import="com.sun.xml.rpc.processor.modeler.j2ee.xml.string"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
<title>Hello World</title>
</head>
<body>
<%-- This is a JSP Comment before JSP Scriplet --%>
<h2> Thanks for using Assignment #1</h2>
<%
    int max = Integer.parseInt(request.getParameter("maximum"));
    int column = max;
    int row = (2*max -1);
%>
<TABLE border="1%" width="50%" height="25%">
<% for(int x=0; x < column; x++) { %>
    <TR>
<%      for(int y=0; y< x ; y++) { %>
        <TD bgcolor="blue">*</TD>
        <% } %>
    </TR>
<% } %>

<% for(int x=column; x > 0; x--) { %>
    <TR>
<%      for(int y=0; y< x ; y++) { %>
        <TD bgcolor="blue">*</TD>
        <% } %>
    </TR>
<% } %>

</TABLE>
    <form action="index.html">
        <input type="submit" value="back">
    </form>
    

</body>
</html>