<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Personal.aspx.cs" Inherits="UI_Personal" %>

<%@ Register src="GoogleMapForASPNet.ascx" tagname="GoogleMapForASPNet" tagprefix="uc1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <script type="text/javascript">
    var GB_ROOT_DIR = "../Scripts/";
    </script>
    <title>Sport Map</title>
    <link href="Styles/main.css" rel="stylesheet" type="text/css" />
    <link href="Styles/person.css" rel="stylesheet" type="text/css" />
    <link href="Styles/gb_styles.css" rel="stylesheet" type="text/css" />
    <script src="Scripts/AJS.js" type="text/javascript"></script>
    <script src="Scripts/AJS_fx.js" type="text/javascript"></script>
    <script src="Scripts/gb_scripts.js" type="text/javascript"></script>
    <script src="Scripts/help.js" type="text/javascript"></script>
</head>
<body>
    <form id = "form1" runat = "server">  
    <div id = "main">
        <div id = "header">
        <div id = "logo">
            <h1>
                <a href="#">Sport Map</a>
            </h1>
        </div>
        <div id = "menu">
            <ul>
                <li><asp:HyperLink ID="HyperLink1" Target="_blank" NavigateUrl="~/UI/Login.aspx" runat="server">Login</asp:HyperLink></li>
                <li><asp:HyperLInk ID="HyperLInk2" Target="_blank" NavigateUrl="~/UI/Register.aspx" runat="server">SignUp</asp:HyperLInk></li>
                <li class="right"><a>Help</a></li>
            </ul>
        </div>      
        <div id = "search">  
            <ul>
                <li><asp:TextBox ID = "contentTextBox" runat = "server"></asp:TextBox></li>
                <li>
                    <asp:DropDownList ID = "typeDropDownList" runat = "server">
                        <asp:ListItem Text = "badminton" Value="1"></asp:ListItem>
                        <asp:ListItem Text = "football" Value="2"></asp:ListItem>
                        <asp:ListItem Text = "basketball" Value="3"></asp:ListItem>
                        <asp:ListItem Text = "picture" Value="4"></asp:ListItem>
                        <asp:ListItem Text = "video" Value="5"></asp:ListItem>
                    </asp:DropDownList>
                </li>
                <%--在这里使用asp.net的css类属性就能正确地实现垂直居中了--%>
                <li><asp:ImageButton ImageUrl="~/Resource/search.jpg" ID = "searchImageButton" 
                        runat = "server" CssClass="searchIcon" onclick="searchImageButton_Click" /></li>
            </ul>                      
        </div>
    </div>
    <div id = "map">
      <uc1:GoogleMapForASPNet ID = "googleMapForASPNet" runat = "server" />
      </div>      
        <div id = "footer">
        <div id="publish">
                <a href="UserNewsCommit.aspx" title="news commit" rel="gb_page_center[800, 480]">发表</a>
        </div>
    </div>
    
    </div>

    </form>
</body>
</html>
