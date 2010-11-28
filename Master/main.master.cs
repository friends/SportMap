using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class main : System.Web.UI.MasterPage
{
    DataClassesDataContext dcdc = new DataClassesDataContext();
    private void searchNews(string gametype)
    {
        IEnumerable<gameNews> gn = dcdc.gameNews.Where(news => news.gameType == gametype);
        if (gn == null)
        {
            return;
        }
        foreach (gameNews g in gn)
        {
            GooglePoint googlePoint = new GooglePoint("1", g.longitude, g.latitude);
            googlePoint.InfoHTML = g.gameNewsContent;
            googleMapForASPNet.GoogleMapObject.Points.Add(googlePoint);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            googleMapForASPNet.GoogleMapObject.APIKey = "ABQIAAAAAVbsFH4Db7tiEfmAwunZsBRT3SAn1XS5DIMMB6pgAyTR7OGC3RTvGgw2q-kk9nsNxyb5VOajUvrf6g";          //定义你的Google Maps API key

            googleMapForASPNet.GoogleMapObject.APIVersion = "2";          //选择Google Maps API版本

            googleMapForASPNet.GoogleMapObject.Width = "100%";
            googleMapForASPNet.GoogleMapObject.Height = "500px";          //定义Google Map控件的大小

            googleMapForASPNet.GoogleMapObject.ZoomLevel = 10;          //定义缩放级别，默认值为3
            googleMapForASPNet.GoogleMapObject.ShowMapTypesControl = false;
            googleMapForASPNet.GoogleMapObject.ShowZoomControl = false;

            googleMapForASPNet.GoogleMapObject.CenterPoint = new GooglePoint("CenterPoint", 23.20, 113.18);     //定义地图中心位置

            string[] types = { "football", "basketball", "badminton", "video", "picture", "text" };
            foreach (string type in types)
            {
                searchNews(type);
            }
        }
    }
    protected void searchImageButton_Click(object sender, ImageClickEventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        string type = typeDropDownList.SelectedItem.Text;
        string content = contentTextBox.Text;
        IEnumerable<gameNews> gns = dcdc.gameNews.Where(gn => (gn.gameNewsContent.IndexOf(content) >= 0 || gn.gameNewsTitle.IndexOf(content) >= 0) && gn.gameType == type);
        if (gns == null)
        {
            return;
        }
        foreach (gameNews g in gns)
        {
            GooglePoint googlePoint = new GooglePoint("1", g.longitude, g.latitude);
            googlePoint.InfoHTML = g.gameNewsContent;
            googleMapForASPNet.GoogleMapObject.Points.Add(googlePoint);
        }
    }
    protected void footballLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("football");
    }
    protected void basketballLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("basketball");
    }
    protected void badmintonLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("badminton");
    }
    protected void videoLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("video");
    }
    protected void pictureLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("picture");
    }
    protected void textLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("text");
    }
    protected void betLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("bet");
    }
    protected void salesLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("sales");
    }
    protected void othersLinkBtn_Click(object sender, EventArgs e)
    {
        googleMapForASPNet.GoogleMapObject.Points.Clear();
        searchNews("others");
    }
}
