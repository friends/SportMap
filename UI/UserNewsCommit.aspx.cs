using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SportMap.Tool;
using SportMap.DAL;

public partial class UI_UserNewsCommit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
        gameNews gn = new gameNews();
        gn.gameNewsAuthor = "admin";
        gn.gameNewsContent = editor.Value;
        gn.gameNewsTitle = txtTitle.Text;
        gn.gameType = typeRadioButtonList.SelectedValue;

        //解析地址经纬度
        string strlatitude, strlongitude;
        Geo.GetLocation(locationTextBox.Text, out strlongitude, out strlatitude);
        gn.longitude = double.Parse(strlongitude);
        gn.latitude = double.Parse(strlatitude);

        gn.url = txtUrl.Text;
        gn.gameNewsHitTimes = 1;
        gn.gameNewsEditTimes = 1;
        gn.gameNewsCreatedTime = DateTime.Now;
        gn.gameNewsKeyWords = "news";
        gn.gameNewsPriority = 1;

        NewsHandler newHandler = new NewsHandler(gn);
        newHandler.Insert();
        Response.Write("<script>alert('添加成功!')</script>");
    }
}