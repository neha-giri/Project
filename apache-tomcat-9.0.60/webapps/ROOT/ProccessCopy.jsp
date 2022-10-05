<%@ page language="java"%>
<%@page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
    <title>fake news</title>
        
      </head>
      <body>
        <%! String st2[]; %>
        <%! String t4; %>
        <% 
        String t2 = request.getParameter("sample"); 
        String t3 = request.getParameter("choose");
       
        pageContext.setAttribute("model1",t3,pageContext.SESSION_SCOPE);

        String t1="https://fake-news-detection-2022.herokuapp.com/"; 
        if (t2!= null)
        {
        t2=t2.replaceAll(" ","%20"); 
        pageContext.setAttribute("cc1",t2,pageContext.SESSION_SCOPE); 
        }
        %>
        <c:set var = "cc" value = "${cc1}" />
        <c:set var = "model" value = "${model1}"/>
        <c:import var ="result" url="https://fake-news-detection-2022.herokuapp.com/${cc}/${model}"  />
        <% String json = (String)pageContext.getAttribute("result");
        String json2 = json.replace("}", "");
        StringTokenizer st = new StringTokenizer(json2,",");
        %>
        <table >

          <tr >
            <th style="text-align:center">Input</th>
            <th style="text-align:center">Prediction</th>
            <th style="text-align:center">Model</th>
            <th style="text-align:center">Accuracy</th>
            <th style="text-align:center">Precision</th>
            <th style="text-align:center">Recall</th>
            <th style="text-align:center">F-Score</th>
          </tr>
          <tr>
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
            <td>
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
              <% if (i==1)
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
             <% if (i==5)
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




        </tr>
      </table>
    </body>
    </html>


    