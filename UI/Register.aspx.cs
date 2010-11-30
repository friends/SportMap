using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SportMap.DAL;
using SportMap.Tool;

public partial class UI_Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string uid = GetFromInput(txtUserId.Text);
        string name = GetFromInput(txtUserName.Text);
        string pwd = GetFromInput(txtPassword.Text);
        string repwd = GetFromInput(txtrePassword.Text);
        string question = GetFromInput(txtQuestion.Text);
        string answer = GetFromInput(txtAnswer.Text);
        string qq = GetFromInput(txtQQ.Text);
        string msn = GetFromInput(txtMSN.Text);
        string email = GetFromInput(txtEmail.Text);
        string phone = GetFromInput(txtPhone.Text);
        string location = GetFromInput(txtAddress.Text);
        string sex = rblGender.SelectedValue;
        string birthday = GetFromInput(txtBirthday.Text);
        string prefer = GetFromInput(txtPrefer.Text);

        if (uid == null || pwd == null || repwd == null || question == null || answer == null
            || email == null || location == null)
        {
            lblMessage.Text = "必填项不能为空！";
            return;
        }
        else if (!pwd.Equals(repwd))
        {
            lblMessage.Text = "重复密码错误！";
            return;
        }
        else if (registerUser(
            new string[] { uid, name, pwd, repwd, question, answer, qq, msn, email, phone, location, sex, birthday, prefer }
            )
            )
            Response.Redirect("~/UI/Login.aspx", true);
    }

    private string GetFromInput(string input)
    {
        if (!String.IsNullOrEmpty(input))
            return input;
        else
            return null;
    }

    private bool registerUser(string[] paras)
    {
        decimal qq;
        if (!decimal.TryParse(paras[6], out qq) && paras[6] != null)
        {
            lblMessage.Text = "qq号码错误！";
            return false;
        }
        decimal phone;
        if (!decimal.TryParse(paras[9], out phone) && paras[9] != null)
        {
            lblMessage.Text = "电话号码错误！";
            return false;
        }
        //解析地址经纬度
        string strlatitude, strlongitude;
        Geo.GetLocation(paras[10], out strlongitude, out strlatitude);
        double latitude, longitude;
        latitude=double.Parse(strlongitude);
        longitude=double.Parse(strlatitude);

        bool sex;
        if(paras[11]=="female")
            sex=false;
        else
            sex=true;
        DateTime birthday;
        if (!DateTime.TryParse(paras[12], out birthday) && paras[12] != null)
        {
            lblMessage.Text = "生日格式错误！";
            return false;
        }

        string path=(string)Session["header"];
        Session["header"] = null;

        UserHandler uh=new UserHandler();
        user newUser = new user {userId=paras[0],userName=paras[1],userPwd=paras[2],pwdProtectQ=paras[4],
        pwdProtectA=paras[5],userConnectqq=qq,userConnectMsn=paras[7],userConnectEmail=paras[8],
        userConnectPhone=phone,userLatitude=latitude,userLongitude=longitude,userSex=sex,
        userBirthday=birthday,userPrefer=paras[13],
        userType=1,lastLoginOutTime=DateTime.MinValue,userLoginTimes=0,imgPath=path};
        if (uh.Insert(newUser) == ErrorMessage.ALREADY_EXIST)
        {
            lblMessage.Text = "该ID已被注册！";
            return false;
        }
        return true;
    }
}