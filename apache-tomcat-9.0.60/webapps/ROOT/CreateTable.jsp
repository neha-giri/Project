<%@ page language="java"%>
<%@page import="java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


       
        <%! String st2[]; %>
        <%! String t4; %>
        <% 
        String t2 = request.getParameter("sample"); 
        String t3 = request.getParameter("choose");
       
        String t5 = request.getParameter("sample2"); 
        String t6 = request.getParameter("choose2");

		 String run=request.getParameter("run");
       
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
        
        <c:import var ="result" url="https://fake-news-detection-2022.herokuapp.com/${cc}/${model}"  />
        <% String json = (String)pageContext.getAttribute("result");
        String json2 = json.replace("}", "");
        StringTokenizer st = new StringTokenizer(json2,",");
        %>

        
        

        <tbody>
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



    