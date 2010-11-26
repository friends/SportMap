using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Configuration;
using SportMap.DAL;


public partial class UI_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        UserHandler uh = new UserHandler();
        FormsAuthenticationConfiguration conf=new FormsAuthenticationConfiguration();
        if (uh.SetCurrentUserById(txtUserName.Text) == ErrorMessage.NOT_EXIST)
            lblMessage.Text="用户名不存在";
        else 
        {
            if (txtPassword.Text != uh.currentUserPassword)
                lblMessage.Text = "密码错误";
            else
            {
                if (chkRemember.Checked)
                {
                    TimeSpan old = conf.Timeout;
                    conf.Timeout = System.TimeSpan.FromDays(30);
                    FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, true);
                    conf.Timeout = old;
                }
                else
                    FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, true);
            }
        }
    }
}