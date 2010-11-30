using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class UI_Personal : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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

           // GooglePoint googlePoint = new GooglePoint("../Upload/image/lindan.jpg", 23.1, 113.18, "../Upload/image/golf.png");
            //StreamReader sr = new StreamReader(Server.MapPath("~/HTMLPage.htm"));
            //googlePoint.InfoHTML = sr.ReadToEnd();
            
           // sr.Close();
            //googleMapForASPNet.GoogleMapObject.Points.Add(googlePoint);
            Random Rand = new Random();
            for (int i = 1; i <= 20; i++)
            {
                //Add pushpins for map. 
                GooglePoint GP = new GooglePoint();
                GP.ID = i.ToString();
                GP.Latitude = (double)cCommon.RandomNumber(23, 40);
                GP.Longitude = (double)cCommon.RandomNumber(100, 113);
                //Specify bubble text here. You can use standard HTML tags here.
                GP.InfoHTML = "<html><head></head><body><div><br/><span>我是 第" + i.ToString() + "号</span><br/><br/><a href=\"#\">最新状态</a><br/><br/><a href=\"#\">给他/她留言</a><br/><br/><a href=\"#\">加为好友</a></div></body></html>";

                //Specify random icon image..
                GP.IconImage = "Upload/userheader/" + i + ".gif";
                googleMapForASPNet.GoogleMapObject.Points.Add(GP);
            }
            GooglePoint GP3 = new GooglePoint();
            GP3.ID = "Halifax";
            GP3.Latitude = 23.1;
            GP3.Longitude = 113.18;
            GP3.InfoHTML = "<html><head></head><body><div><br/><span>我是 xxj</span><br/><br/><a href=\"UI/UserInfoEdit.aspx\">修改用户信息</a><br/><br/><a href=\"#\">更新状态</a><br/><br/><a href=\"UI/UserNewsCommit.aspx\" title=\"news commit\" rel=\"gb_page_center[800, 480]\">发表新闻</a></div></body></html>";
            GP3.IconImage = "Upload/userheader/20101129032855.jpg";
            GP3.IconImageWidth = 40;
            GP3.IconImageHeight = 40;
            googleMapForASPNet.GoogleMapObject.Points.Add(GP3);
        }
    }
    protected void searchImageButton_Click(object sender, ImageClickEventArgs e)
    {

    }
}