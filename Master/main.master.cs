using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            googleMapForASPNet.GoogleMapObject.APIKey = "ABQIAAAAAVbsFH4Db7tiEfmAwunZsBRT3SAn1XS5DIMMB6pgAyTR7OGC3RTvGgw2q-kk9nsNxyb5VOajUvrf6g";          //定义你的Google Maps API key

            googleMapForASPNet.GoogleMapObject.APIVersion = "2";          //选择Google Maps API版本

            googleMapForASPNet.GoogleMapObject.Width = "100%";
            googleMapForASPNet.GoogleMapObject.Height = "500px";          //定义Google Map控件的大小

            googleMapForASPNet.GoogleMapObject.ZoomLevel = 14;          //定义缩放级别，默认值为3
            googleMapForASPNet.GoogleMapObject.ShowMapTypesControl = false;
            googleMapForASPNet.GoogleMapObject.ShowZoomControl = false;

            googleMapForASPNet.GoogleMapObject.CenterPoint = new GooglePoint("CenterPoint", 31.19, 120.37);     //定义地图中心位置

            googleMapForASPNet.GoogleMapObject.Points.Add(new GooglePoint("1", 31.19, 120.37));          //在指定经纬度定义新的地图标注点

        }
    }
    protected void searchImageButton_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void footballLinkBtn_Click(object sender, EventArgs e)
    {
        //DataClassesDataContext dcdc = new DataClassesDataContext();
        //gameNews gn = dcdc.gameNews.Single(P => P.gameType == "football");
    }
    protected void basketballLinkBtn_Click(object sender, EventArgs e)
    {

    }
    protected void badmintonLinkBtn_Click(object sender, EventArgs e)
    {

    }
    protected void videoLinkBtn_Click(object sender, EventArgs e)
    {

    }
    protected void pictureLinkBtn_Click(object sender, EventArgs e)
    {

    }
    protected void textLinkBtn_Click(object sender, EventArgs e)
    {

    }
    protected void betLinkBtn_Click(object sender, EventArgs e)
    {

    }
    protected void salesLinkBtn_Click(object sender, EventArgs e)
    {

    }
    protected void othersLinkBtn_Click(object sender, EventArgs e)
    {

    }
}
