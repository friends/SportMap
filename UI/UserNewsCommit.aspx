﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserNewsCommit.aspx.cs" Inherits="UI_UserNewsCommit" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body 
        {
            width:800px;
            margin:80px auto;
            font: small/1 "宋体",serif;
            background:url(../Resource/bg.png) repeat-x scroll top;
            color: #000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h2></h2>
    <p>
        <label class="label" for="<%="xxj" %>">标题:</label>
        <asp:TextBox ID="txtTitle"   Width="95%" runat="server" CssClass="text"></asp:TextBox>           
    </p>
    <p>       
        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px"> </FCKeditorV2:FCKeditor>
        <label  class="label gray">提示：Enter产生&lt;p&gt;(换段), Shift+Enter产生&lt;br/&gt;(换行)</label>
    </p>    
</script>
   <p> <asp:Button ID="btnEdit" runat="server" Text="添加" onclick="btnEdit_Click"  CssClass="button" /></p>
    </div>
    </form>
</body>
</html>
