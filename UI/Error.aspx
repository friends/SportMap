﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Error.aspx.cs" Inherits="UI_error" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>出错啦~</title>
     <script language="javascript" type="text/javascript">
         var i = 5;
         var intervalid;
         intervalid = setInterval("fun()", 1000);
         function fun() {
             if (i == 0) {
                 window.location.href = "../Personal.aspx";
                 clearInterval(intervalid);
             }
             document.getElementById("mes").innerHTML = i;
             i--;
         }  
   </script> 
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <span><asp:Label ID = "errorLabel" runat="server"></asp:Label></span><br />
    <span><b id="mes" style="color:Red">5</b>秒后返回主页！</span>
    </div>
    </form>
</body>
</html>
