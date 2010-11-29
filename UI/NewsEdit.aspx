<%@ Page Language="C#" MasterPageFile="../Master/Manage.master" AutoEventWireup="true" validateRequest="false"  CodeFile="NewsEdit.aspx.cs" Inherits="admin_postedit" Title="无标题页" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link rel="stylesheet" href="../Styles/thickbox.css" type="text/css" media="screen" />
<style type="text/css">
/*tag choose*/
.selected {background:#c00; color:#fff;}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2>xxj</h2>
<%="xxj"%>
    <p>
        <label class="label" for="<%="xxj" %>">标题:</label>
        <asp:TextBox ID="txtTitle"   Width="95%" runat="server" CssClass="text"></asp:TextBox>           
    </p>
    <p>
       
        <FCKeditorV2:FCKeditor ID="FCKeditor1" runat="server" Height="400px"> </FCKeditorV2:FCKeditor>
        <label  class="label gray">提示：Enter产生&lt;p&gt;(换段), Shift+Enter产生&lt;br/&gt;(换行)</label>
    </p>
    
   <p> <asp:Button ID="btnEdit" runat="server" Text="添加" onclick="btnEdit_Click"  CssClass="button" /></p>

</asp:Content>

