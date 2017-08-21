<%-- 
    Document   : dis
    Created on : Aug 19, 2017, 12:21:07 PM
    Author     : student38
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>
<!DOCTYPE html>
<%
   if(request.getParameter("btnsub")!=null)
   {
     String district=request.getParameter("txtname");
     String str="insert into tbl_dis(district,stateid)value('"+district+"','"+stateid+"')";
   
   }


%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">District</h1>
        <form>
            <table align="center">
                <tr><td>district:</td><td><input type="text" value=" " name="txtname"</td><tr>
                   <tr><td>stateid:</td><td><input type="text" value=" " name="txts"</td><tr> 
                <tr><td><input type="submit" name="btnsub" onclick="return check()"></td><td><input type="button" name="btncancel" value="cancel"></td></tr>
            </table>
        </form>
    </body>
</html>
