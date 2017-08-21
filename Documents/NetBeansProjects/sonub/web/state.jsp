<%-- 
    Document   : state
    Created on : Aug 19, 2017, 10:33:36 AM
    Author     : student38
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<%
    String state="",id="";
    
    
    if(request.getParameter("did")!=null)
    {
    String sid=request.getParameter("did");
    String str="delete from tbl_state where id="+sid;
     obj.insert(str);
    
    }
     if(request.getParameter("eid")!=null)
    {
    String eid=request.getParameter("eid");
    String str="select * from tbl_state where id="+eid;
    ResultSet rs=obj.select(str);
                while(rs.next())
                {
                    
                    state=rs.getString("state");
                    id=rs.getString("id");
                }
                
    
    
    }
    
    
    
    if(request.getParameter("btnsub")!=null)
    {
         state=request.getParameter("txtname");
         
     if(!request.getParameter("hid").equals(""))
    {
         String sid=request.getParameter("hid");
         String str="update tbl_state set state='"+state+"' where id="+sid;
         boolean b= obj.insert(str);
       if(b)
           out.print("success");
       else
           out.print(str);
         
    }
         else
         {
          String str="insert into tbl_state(state)value('"+state+"')";
         
       boolean b= obj.insert(str);
       if(b)
           out.print("success");
       else
           out.print(str);
       
    }
    }
    
    %>
<!DOCTYPE html>
<html>
    
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">State</h1>
        <form>
            <input type="hidden" name="hid" value="<%=id%>">
            <table align="center">
                <tr><td>state name:</td><td><input type="text" value="<%=state%>" name="txtname"</td><tr>
                <tr><td><input type="submit" name="btnsub" onclick="return check()"></td><td><input type="button" name="btncancel" value="cancel"></td></tr>
            </table>
        </form>
        <form>
            <table align="center">
                <tr><th>state name</th></tr>
                <%
                
                String str="select * from tbl_state";
                ResultSet rs=obj.select(str);
                while(rs.next())
                {
                    %>
                
                        <tr><td>
                    <%=rs.getString("state")%>
                                
                    </td>
                     <td>
                         <a href="state.jsp?eid=<%=rs.getString("id")%>">Edit</a>
                     </td>
                        <td>
                         <a href="state.jsp?did=<%=rs.getString("id")%>">delete</a>
                     </td>
                        </tr>
                
                <%
                    
                }
                
                %>
                
                
                
            </table>
            
        </form>
        
    </body>
</html>
