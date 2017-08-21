<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<jsp:useBean class="db.dbConnection" id="obj"></jsp:useBean>

<%
    if(request.getParameter("btn_sub")!=null)
    {
        String name=request.getParameter("txtname");
        String address,gender,qual,password;
        address=request.getParameter("txtaddres");
        gender=request.getParameter("gender");
        qual=request.getParameter("selqual");
        password=request.getParameter("txtpass");
        String str="insert into tbl_name(name,address,gender,qualification,password)values('"+name+"','"+address+"','"+gender+"','"+qual+"','"+password+"')";
        
       boolean b= obj.insert(str);
       if(b)
           out.print("success");
       else
           out.print(str);
    }
    %>
    <html>
<head>
<script>
function check()
{
var a=document.getElementById("name").value;
if(a=="")
{
alert("enter name");
}
}
</script>
</head>
<body>
<form>
<table>
<tr>
<td>name:</td><td><input type="text"  name="txtname"></td>
</tr>
<tr>
<td>address</td><td><input type="text" name="txtaddres"></td>
</tr>
<tr>
<td>gender</td><td><input type="radio" name="gender" value="male">male</td><td><input type="radio" name="gender" value="female">female</td>
</tr>
<tr><td>qualification</td><td><select name="selqual"><option>....select....</option>
<option value="mca">MCA</option>
<option value="mba">MBA</option>
<option value="mtech">MTECh</option>

</select></td></tr>
<tr>
<td>password:</td><td><input type="password" name="txtpass"></td></tr>

<tr>
<td><input type="submit" name="btn_sub" value="submit" onclick="return check()"></td><td><input type="reset"></td>
</tr>

</table>
</form>

</body>

</html>

