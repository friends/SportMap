using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using SportMap.DAL;

/// <summary>
///实现了IsUserInType方法的Page的子类
/// </summary>
public class CheckPage
{
     public bool IsUserInType(string User,decimal typeId)
    {
        UserHandler uh = new UserHandler();
        if(uh.SetCurrentUserById(User)==ErrorMessage.NOT_EXIST)
            return false;
        if (uh.currentUser.userType == typeId)
            return true;
        else
            return false;
    }
}