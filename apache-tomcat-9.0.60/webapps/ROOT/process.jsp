<%@ page language="java"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- <link rel="stylesheet" href="styles.css"> -->

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>fake news</title>
        
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
          
            
    
            
    
        //  }
            
            
        
         
         
           
          if (t2==null || t3==null)
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
            %>
            <c:set var = "cc" value = "${cc1}" />
            <c:set var = "model" value = "${modelnew}"/>
            
            <c:import var ="result" url="http://127.0.0.1:5000/${cc}/${model}"  />
            <% String json = (String)pageContext.getAttribute("result");
            String json2 = json.replace("}", "");
            StringTokenizer st = new StringTokenizer(json2,",");
            %>
    
            
             <table class="table table-striped">
              <!-- <table class="container overflow-hidden text-center"> -->
    
          <% //if (run.equals("1") ){ %>
              <thead> 
              <tr class="danger">
                <th style="text-align:center">Input</th>
                <th style="text-align:center">Prediction</th>
                <th style="text-align:center">Model</th>
                <th style="text-align:center">Accuracy</th>
                <th style="text-align:center">Precision</th>
                <th style="text-align:center">Recall</th>
                <th style="text-align:center">F-Score</th>
                <th style="text-align:center">Data Url</th>
              </tr>
            </thead>
    
          <//% } %>
    
            <tbody style="text-align:center">
                <tr class="success">
                <%
                int i = 0;
                while (st.hasMoreTokens())
                {
                  i++;
                  String[] st2= st.nextToken().toString().split(":");
                  
                %>
                  <% if (i==3)
                  { 
                    %>
                <td id="input2">
                  <%=st2[1]%>
                  
                </td>
                  <% break;
                }
                   %>
                <%
                }
                %>
                <%
                 st = new StringTokenizer(json2,",");
                 i = 0;
    
                while (st.hasMoreTokens())
                {
                  i++;
                  
                  String[] st3= st.nextToken().toString().split(":");  
                %>
    
                
    
                  <% if (i==5)
                  { 
                    %>
                <td id="decision">
                  
    
                <% String value=(String) st3[1];
                    String value2="\"Fake\"";
                    if (value.equals(value2))
    
                   { 
                     %>
                     <select name="News" id="id33">
                     <option value="Fake">Fake</option>
                    
                     
                     <option value="Real">Real</option>
                    </select>
                  <% } else {%>
                    <select name="News" id="id33">
                      <option value="Real" id="34">Real</option>
                     
                      
                      <option value="Fake" id="35">Fake</option>
                     </select>
    
    
                     <%
                    }%>
    
                    
                      <button id="news" onclick="btnfun()" ><i class="fa fa-plus" aria-hidden="true"></i></button>
                     
                    </td>
                  <%
                break;
              } %>
                <%
                }
                %>
                <%
                 st = new StringTokenizer(json2,",");
                 i = 0;
    
                while (st.hasMoreTokens())
                {
                  i++;
                  
                  String[] st3= st.nextToken().toString().split(":");
                  
                %>
                  <% if (i==4)
                  { 
                    %>
                <td>
                  <%=st3[1]%>
                </td>
                  <% 
                break;
              } %>
                <%
                }
                %>
    
    
                <%
                 st = new StringTokenizer(json2,",");
                 i = 0;
    
                while (st.hasMoreTokens())
                {
                  i++;
                  
                  String[] st3= st.nextToken().toString().split(":");
                  
                %>
                  <% if (i==6)
                  { 
                    %>
                <td>
                  <%=st3[1]%>
                </td>
                  <% 
                break;
              } %>
                <%
                }
                %>
    
    
                <%
                st = new StringTokenizer(json2,",");
                i = 0;
    
               while (st.hasMoreTokens())
               {
                 i++;
                 
                 String[] st3= st.nextToken().toString().split(":");
                 
               %>
                 <% if (i==7)
                 { 
                   %>
               <td>
                 <%=st3[1]%>
               </td>
                 <% 
               break;
             } %>
               <%
               }
               %>
    
    
    
               <%
               st = new StringTokenizer(json2,",");
               i = 0;
    
              while (st.hasMoreTokens())
              {
                i++;
                
                String[] st3= st.nextToken().toString().split(":");
                
              %>
                <% if (i==8)
                { 
                  %>
              <td>
                <%=st3[1]%>
              </td>
                <% 
              break;
            } %>
              <%
              }
              %>
    
    
              <%
              st = new StringTokenizer(json2,",");
              i = 0;
    
             while (st.hasMoreTokens())
             {
               i++;
               
               String[] st3= st.nextToken().toString().split(":");
               
             %>
               <% if (i==2)
               { 
                 %>
             <td>
               <%=st3[1]%>
             </td>
               <% 
             break;
           } %>
             <%
             }
             %>
    
    
    
             <%
             st = new StringTokenizer(json2,",");
             i = 0;
    
            while (st.hasMoreTokens())
            {
              i++;
              
              String[] st3= st.nextToken().toString().split(":");
              
            %>
              <% if (i==1)
              { 
                %>
            <td>
    
              <%= "\"https:" + st3[3]%>
            </td>
              <% 
            break;
          } %>
            <%
            }
            %>

            </tr>

          </tbody>
          </table>

    </body>
    </html>


    