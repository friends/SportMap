﻿using System;
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
        if (uh.SetCurrentUserById(txtUserName.Text) == ErrorMessage.NOT_EXIST)
            lblMessage.Text="用户ID不存在";
        else 
        {
            if (txtPassword.Text != uh.currentUser.userPwd)
                lblMessage.Text = "密码错误";
            else
            {
                Session["userId"] = uh.currentUser.userId;
                if (chkRemember.Checked)
                {
                    FormsAuthenticationConfiguration conf = new FormsAuthenticationConfiguration();
                    TimeSpan old = conf.Timeout;
                    conf.Timeout = System.TimeSpan.FromDays(30);
                    if (uh.currentUser.userType == 1)
                    {
                        Response.Redirect("../Personal.aspx");
                    }
                    else if (uh.currentUser.userType == 0)
                    {
                        Response.Redirect("NewsEdit.aspx");
                    }

                    conf.Timeout = old;
                }
                else
                {
                    if (uh.currentUser.userType == 1)
                    {
                        Response.Redirect("../Personal.aspx");
                    }
                    else if (uh.currentUser.userType == 0)
                    {
                        Response.Redirect("NewsEdit.aspx");
                    }
                }
            }
        }
    }
}