<%@ page language="java"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
 
<html>
   <head>
      <title>JINSERT Operation</title>
   </head>
   
   <body>
      
    <%! String st2[]; %>
    <%! String t4; %>
    <% 
    String t2 = request.getParameter("sample"); 
    String t3 = request.getParameter("choose");
     
      String t5 = request.getParameter("sample2"); 
      String t6 = request.getParameter("choose2");

       String run=request.getParameter("run");
//    if(run.equals("2")){
      String prediction = request.getParameter("decision");
     
      String input = request.getParameter("input");
      pageContext.setAttribute("modelnew2",prediction,pageContext.SESSION_SCOPE);
      pageContext.setAttribute("modelnew",input,pageContext.SESSION_SCOPE);
      %>

      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
      url = "jdbc:mysql://localhost/fakenews"
      user = "root"  password = "root"/>
      
      <sql:update dataSource = "${snapshot}" var = "count">
        
        INSERT INTO saveddata VALUES (0,?,?,?);
        <sql:param value = "${modelnew2}" />
        <sql:param value = "${modelnew}" />
        <sql:param value = "${modelnew}" />
     </sql:update>

   
   <%
   out.print("<b>Successfully saved</b>");
    %>
    <!-- if (t2==null || t3==null)
        {

        t2=t5;
        t3=t6;
       
        }
      pageContext.setAttribute("modelnew",t3,pageContext.SESSION_SCOPE);

      String t1="https://fake-news-detection-2022.herokuapp.com/"; 
      if (t2!= null)
      {
      t2=t2.replaceAll(" ","%20"); 
      pageContext.setAttribute("cc1",t2,pageContext.SESSION_SCOPE); 
      }
      %> -->
      <c:set var = "cc" value = "${cc1}" />
      <c:set var = "model" value = "${modelnew}"/>
      
      
      
       
      
 
   </body>
</html>