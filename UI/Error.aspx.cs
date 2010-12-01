using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_error : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string error = Request.Params["error"];
        if (error == "notImplemented")
        {
            errorLabel.Text = "本功能尚未实现！";
        }

    }
}