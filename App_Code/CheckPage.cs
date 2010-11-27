using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
//using SportMap.DAL;

/// <summary>
///实现了IsUserInType方法的Page的子类
/// </summary>
public class CheckPage : System.Web.UI.Page
{
     /*public bool IsUserInType(decimal typeId)
    {
       if (!User.Identity.IsAuthenticated)
            return false;
        UserHandler uh = new UserHandler();
        if(uh.SetCurrentUserById(User.Identity.Name)==ErrorMessage.NOT_EXIST)
            return false;
        if (uh.currentUserType == typeId)
            return true;
        else
            return false;
    }*/
}