<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="UI_Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>注册</title>
    <link rel="stylesheet" href="../Styles/login.css" type="text/css" media="screen" />
    <script type="text/javascript">
        var popUpWin = 0;
        function PopUpWindow(URLStr, left, top, width, height, newWin, scrollbars) {
            if (typeof (newWin) == "undefined")
                newWin = false;

            if (typeof (left) == "undefined")
                left = 100;

            if (typeof (top) == "undefined")
                top = 0;

            if (typeof (width) == "undefined")
                width = 800;

            if (typeof (height) == "undefined")
                height = 760;

            if (newWin) {
                open(URLStr, '', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=' + scrollbars + ',resizable=yes,copyhistory=yes,width=' + width + ',height=' + height + ',left=' + left + ', top=' + top + ',screenX=' + left + ',screenY=' + top + '');
                return;
            }

            if (typeof (scrollbars) == "undefined") {
                scrollbars = 0;
            }

            if (popUpWin) {
                if (!popUpWin.closed) popUpWin.close();
            }
            popUpWin = open(URLStr, 'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=' + scrollbars + ',resizable=yes,copyhistory=yes,width=' + width + ',height=' + height + ',left=' + left + ', top=' + top + ',screenX=' + left + ',screenY=' + top + '');
            popUpWin.focus();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="login"  >
        <p>
            <label for="txtUserId" style="display:block; margin:3px 0;" class="small">用户ID:</label>
            <asp:TextBox ID="txtUserId"  runat="server" Width="200" CssClass="text"></asp:TextBox><b style="color:Red"> *</b>
        </p>
        <p>
        <a href="javascript:void(0);" onclick="javascript:PopUpWindow('UploadPhoto.aspx',100,100,600,500);">点击上传照片</a>
        </p>
        <p>
            <label for="txtUserName" style="display:block; margin:3px 0;" class="small">用户名:</label>
            <asp:TextBox ID="txtUserName"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p>
         
        <p>
            <label for="txtPassword" style="display:block;margin:3px 0;" class="small ">密码:</label>
            <asp:TextBox ID="txtPassword" TextMode="password" runat="server" Width="200"  CssClass="text"></asp:TextBox><b style="color:Red"> *</b>
        </p>
         <p>
            <label style="display:block;margin:3px 0;" class="small ">密码确认:</label>
            <asp:TextBox ID="txtrePassword" TextMode="password" runat="server" Width="200"  CssClass="text"></asp:TextBox><b style="color:Red"> *</b>
        </p>
        <p>
            <label for="txtQuestion" style="display:block; margin:3px 0;" class="small">密码问题:</label>
            <asp:TextBox ID="txtQuestion"  runat="server" Width="200" CssClass="text"></asp:TextBox><b style="color:Red"> *</b>
        </p>
         <p>
            <label for="txtAnswer" style="display:block; margin:3px 0;" class="small">密码答案:</label>
            <asp:TextBox ID="txtAnswer"  runat="server" Width="200" CssClass="text"></asp:TextBox><b style="color:Red"> *</b>
        </p>
        
        <p>
            <label for="txtQQ" style="display:block; margin:3px 0;" class="small">QQ:</label>
            <asp:TextBox ID="txtQQ"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p>
        <p>
            <label for="txtMSN" style="display:block; margin:3px 0;" class="small">MSN:</label>
            <asp:TextBox ID="txtMSN"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p>
        <p>
            <label for="txtEmail" style="display:block; margin:3px 0;" class="small">Email:</label>
            <asp:TextBox ID="txtEmail"  runat="server" Width="200" CssClass="text"></asp:TextBox><b style="color:Red"> *</b>
        </p>
        <p>
            <label for="txtPhone" style="display:block; margin:3px 0;" class="small">电话:</label>
            <asp:TextBox ID="txtPhone"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p>
          <p>
            <label for="txtAddress" style="display:block; margin:3px 0;" class="small">地址:</label>
            <asp:TextBox ID="txtAddress"  runat="server" Width="200" CssClass="text"></asp:TextBox><b style="color:Red"> *</b>
        </p>  
 <p>
            <label for="rblGender" style="display:block; margin:3px 0;" class="small">性别:</label>
            <asp:RadioButtonList ID="rblGender" runat="server" Width="200" CssClass="text" TextAlign="Right">
                <asp:ListItem Value="female">女</asp:ListItem>
                <asp:ListItem Value="male">男</asp:ListItem>
            </asp:RadioButtonList>
        </p>
        <p>
            <label for="txtBirthday" style="display:block; margin:3px 0;" class="small">生日:</label>
            <asp:TextBox ID="txtBirthday"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p>
         <p>
            <label for="txtPrefer" style="display:block; margin:3px 0;" class="small">爱好:</label>
            <asp:TextBox ID="txtPrefer"  runat="server" Width="200" CssClass="text"></asp:TextBox>
        </p> 
        <p>
            <asp:Button ID="btnRegister" runat="server"   Text="注册" OnClick="btnRegister_Click" CssClass="button" />
        </p>
        <p ><asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label></p>
        <p><a href="../" class="small">&laquo;返回首页</a></p>
    </div>
    <div  style="  text-align:center; padding:5px 0;" class="small">Powered by <a href="mailto:xxj050@163.com" target="_blank" >Friends</a></div>
    </form>
    <script type="text/javascript">
        document.getElementById('<%=txtUserName.ClientID %>').focus();
    </script> 
</body>
</html>
