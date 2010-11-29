using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_UploadPhoto : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) return;
        if (!string.IsNullOrEmpty(Request.QueryString["Picurl"]))
        {
            ImageDrag.ImageUrl = Request.QueryString["Picurl"];
            ImageIcon.ImageUrl = Request.QueryString["Picurl"];
            Page.ClientScript.RegisterStartupScript(typeof(UI_UploadPhoto), "step2", "<script type='text/javascript'>Step2();</script>");
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(typeof(UI_UploadPhoto), "step1", "<script type='text/javascript'>Step1();</script>");
        }
    }
    private const string savepath = "~/Upload/userheader" + "/";

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (fuPhoto.PostedFile != null && fuPhoto.PostedFile.ContentLength > 0)
        {

            string ext = System.IO.Path.GetExtension(fuPhoto.PostedFile.FileName).ToLower();
            if (ext != ".jpg" && ext != ".jepg" && ext != ".bmp" && ext != ".gif")
            {
                return;
            }
            string filename = "sportmap_" + DateTime.Now.ToString("yyyyMMddHHmmss") + ext;
            string path = "~/Upload/image/" + filename;
            fuPhoto.PostedFile.SaveAs(Server.MapPath(path));
            Response.Redirect("~/UI/UpLoadPhoto.aspx?Picurl=" + Server.UrlEncode(path));
        }
        else
        {
            //do some thing;
        }
    }

    protected void btn_Image_Click(object sender, EventArgs e)
    {
        int imageWidth = Int32.Parse(txt_width.Text);
        int imageHeight = Int32.Parse(txt_height.Text);
        int cutTop = Int32.Parse(txt_top.Text);
        int cutLeft = Int32.Parse(txt_left.Text);
        int dropWidth = Int32.Parse(txt_DropWidth.Text);
        int dropHeight = Int32.Parse(txt_DropHeight.Text);

        string filename = CutPhotoHelp.SaveCutPic(Server.MapPath(ImageIcon.ImageUrl), Server.MapPath(savepath), 0, 0, dropWidth,
                                dropHeight, cutLeft, cutTop, imageWidth, imageHeight);

        this.imgphoto.ImageUrl = savepath + filename;
        Page.ClientScript.RegisterStartupScript(typeof(UI_UploadPhoto), "step3", "<script type='text/javascript'>Step3();</script>");

    }
}