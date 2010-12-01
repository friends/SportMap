using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using SportMap.DAL;

public partial class UI_Personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UserHandler uh = new UserHandler();
        
        if (!IsPostBack)
        {
            googleMapForASPNet.GoogleMapObject.APIKey = "ABQIAAAAAVbsFH4Db7tiEfmAwunZsBRT3SAn1XS5DIMMB6pgAyTR7OGC3RTvGgw2q-kk9nsNxyb5VOajUvrf6g";          //定义你的Google Maps API key

            googleMapForASPNet.GoogleMapObject.APIVersion = "2";          //选择Google Maps API版本

            googleMapForASPNet.GoogleMapObject.Width = "100%";
            googleMapForASPNet.GoogleMapObject.Height = "500px";          //定义Google Map控件的大小

            googleMapForASPNet.GoogleMapObject.ZoomLevel = 5;          //定义缩放级别，默认值为3
            googleMapForASPNet.GoogleMapObject.ShowMapTypesControl = false;
            googleMapForASPNet.GoogleMapObject.ShowZoomControl = false;

            googleMapForASPNet.GoogleMapObject.CenterPoint = new GooglePoint("CenterPoint", 23.20, 113.18);     //定义地图中心位置
           
            if (Request.QueryString["operator"] == "addfriend")
            {
                uh.SetCurrentUserById((string)Session["userId"]);
                uh.AddFriend(Request.QueryString["fid"]);
                Response.Write("<script>alert('添加好友成功!')</script>");
            }
            /*
             * 随机产生用户信息
             Random Rand = new Random();
            for (int i = 1; i <= 20; i++)
            {
                GooglePoint GP = new GooglePoint();
                GP.ID = i.ToString();
                GP.Latitude = (double)cCommon.RandomNumber(23, 40);
                GP.Longitude = (double)cCommon.RandomNumber(100, 113);
                GP.InfoHTML = "<html><head></head><body><div><br/><span>我是 第" + i.ToString() + "号</span><br/><br/><a href=\"#\">最新状态</a><br/><br/><a href=\"#\">给他/她留言</a><br/><br/><a href=\"#\">加为好友</a></div></body></html>";
                GP.IconImage = "Upload/userheader/" + i + ".gif";
                googleMapForASPNet.GoogleMapObject.Points.Add(GP);
            }
            */
            List<user> userlist = uh.getUserList();
            for (int i = 0; i < 20 && i < userlist.Count; i++)
            {
                user u = userlist.ElementAt(i);
                if (u.userId == (string)Session["userId"])
                {
                    continue;
                }

                GooglePoint GP = new GooglePoint();
                GP.ID = u.userId;
                GP.Latitude = u.userLatitude;
                GP.Longitude = u.userLongitude;
                GP.InfoHTML = "<html><head></head><body><div><br/><span>我是 " + u.userName + "</span><br/><br/><a href=\"UI/Error.aspx?error=notImplemented\" target=\"_blank\">最新状态</a><br/><br/><a href=\"UI/Error.aspx?error=notImplemented\" target=\"_blank\">给他/她留言</a><br/><br/><a href=\"Personal.aspx?operator=addfriend&fid=" + u.userId + "\">加为好友</a></div></body></html>";
                if (u.imgPath != null)
                {
                    GP.IconImage = u.imgPath;
                }
                else
                {
                    GP.IconImage = "Upload/userheader/" + (i + 1) + ".gif";
                }
                googleMapForASPNet.GoogleMapObject.Points.Add(GP);
            }

            GooglePoint GP3 = new GooglePoint();

            string id = (string)Session["userId"];
            uh.SetCurrentUserById(id);

            GP3.ID = uh.currentUser.userId;
            GP3.Latitude = uh.currentUser.userLatitude;
            GP3.Longitude = uh.currentUser.userLongitude;
            GP3.InfoHTML = "<html><head></head><body><div><br/><span>我是 " + uh.currentUser.userId + "</span><br/><br/><a href=\"UI/UserInfoEdit.aspx?userId=" + uh.currentUser.userId + "\">修改用户信息</a><br/><br/><a href=\"UI/Error.aspx?error=notImplemented\" target=\"_blank\">更新状态</a></div></body></html>";
            if (uh.currentUser.imgPath != null)
            {
                GP3.IconImage = uh.currentUser.imgPath;
            }
            else
            {
                GP3.IconImage = "Upload/userheader/20101129032855.jpg";
            }
            GP3.IconImageWidth = 40;
            GP3.IconImageHeight = 40;

            googleMapForASPNet.GoogleMapObject.Points.Add(GP3);
        }
    }
    protected void searchImageButton_Click(object sender, ImageClickEventArgs e)
    {

    }
}