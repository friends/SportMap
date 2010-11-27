using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace SportMap.DAL
{
    /// <summary>
    ///UserHandler 的摘要说明
    /// </summary>
    public class UserHandler : IHandler
    {
        private DataClassesDataContext db;
        private user currentUser;
        public UserHandler()
        {
            db = new DataClassesDataContext();
            currentUser = null;
        }
        //接口IHandler的实现
        public ErrorMessage Insert(user u)
        {
            if (SetCurrentUserById(u.userId) == ErrorMessage.NOT_EXIST)
            {
                db.user.InsertOnSubmit(u);
                Submit();
                SetCurrentUserById(u.userId);
                return ErrorMessage.OK;
            }
            else
                return ErrorMessage.ALREADY_EXIST;
        }
        public ErrorMessage Delete()
        {
            if (currentUser == null)
                return ErrorMessage.NOT_EXIST;
            else
            {
                db.user.DeleteOnSubmit(currentUser);
                Submit();
                currentUser = null;
                return ErrorMessage.OK;
            }
        }
        public ErrorMessage Submit()
        {
            db.SubmitChanges();
            return ErrorMessage.OK;
        }

        //类UserHandler自己的方法

        /// <summary>
        ///根据userId找到对应存在于表中的user,存在则将其赋值给currentUser,若不存在返回ErrorMessage.NOT_EXIST
        /// </summary>
        public ErrorMessage SetCurrentUserById(string uid)
        {
            user queryUser = (from users in db.user
                              where users.userId == uid
                              select users).First();
            if (queryUser != null)
            {
                currentUser = queryUser;
                return ErrorMessage.OK;
            }
            else
                return ErrorMessage.NOT_EXIST;
        }

        //访问currentUser的属性

        public string currentUserPassword
        {
            get
            {
                if(currentUser==null)
                    return null;
                else
                    return currentUser.userPwd;
            }
            set
            {
                if(currentUser!=null)
                    currentUser.userPwd=value;
            }
        }

        public decimal currentUserType
        {
            get
            {
                if (currentUser == null)
                    return -1;
                else
                    return currentUser.userType;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userType = value;
            }
        }

        public string currentUserSign
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userSign;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userSign = value;
            }
        }

        public System.Nullable<bool> currentUserSex
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userSex;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userSex = value;
            }
        }

        public string currentUserPrefer
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userPrefer;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userPrefer = value;
            }
        }

        public string currentUserName
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userName;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userName = value;
            }
        }

        public int currentUserLoginTimes
        {
            get
            {
                if (currentUser == null)
                    return 0;
                else
                    return currentUser.userLoginTimes;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userLoginTimes = value;
            }
        }

        public string currentUserId
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userId;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userId = value;
            }
        }

        public System.Nullable<decimal> currentUserConnectqq
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userConnectqq;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userConnectqq = value;
            }
        }

        public System.Nullable<decimal> currentUserConnectPhone
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userConnectPhone;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userConnectPhone = value;
            }
        }

        public string currentUserConnectMsn
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userConnectMsn;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userConnectMsn = value;
            }
        }

        public string currentUserConnectEmail
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userConnectEmail;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userConnectEmail = value;
            }
        }

        public System.Nullable<System.DateTime> currentUserBirthday
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.userBirthday;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userBirthday = value;
            }
        }

        public string currentUserpwdProtectQ
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.pwdProtectQ;
            }
            set
            {
                if (currentUser != null)
                    currentUser.pwdProtectQ = value;
            }
        }

        public string currentUserpwdProtectA
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.pwdProtectA;
            }
            set
            {
                if (currentUser != null)
                    currentUser.pwdProtectA = value;
            }
        }

        public System.Nullable<int> currentUserpictureId
        {
            get
            {
                if (currentUser == null)
                    return null;
                else
                    return currentUser.pictureId;
            }
            set
            {
                if (currentUser != null)
                    currentUser.pictureId = value;
            }
        }

        public System.DateTime currentUserlastLoginOutTime
        {
            get
            {
                if (currentUser == null)
                    return DateTime.MinValue;
                else
                    return currentUser.lastLoginOutTime;
            }
            set
            {
                if (currentUser != null)
                    currentUser.lastLoginOutTime = value;
            }
        }

        public double currentUserLongitude
        {
            get
            {
                if (currentUser == null)
                    return 0;
                else
                    return currentUser.userLongitude;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userLongitude = value;
            }
        }

        public double currentUserLatitude
        {
            get
            {
                if (currentUser == null)
                    return 0;
                else
                    return currentUser.userLatitude;
            }
            set
            {
                if (currentUser != null)
                    currentUser.userLatitude = value;
            }
        }

    }
}