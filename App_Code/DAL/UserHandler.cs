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
        public user currentUser;
        //public user currentUser
        //{
        //    get
        //    {
        //        return currentUser;
        //    }
        //    set
        //    {
        //        currentUser=value;
        //    }
        //}
        public UserHandler()
        {
            db = new DataClassesDataContext();
            currentUser = null;
        }
        //接口IHandler的实现
        public ErrorMessage Insert(object o)
        {
            user u = (user)o;
            if (u == null)
                return ErrorMessage.ERROR;
            else if (SetCurrentUserById(u.userId) == ErrorMessage.NOT_EXIST)
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
                return ErrorMessage.ERROR;
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
        ///根据userId找到对应存在于表中的user,存在则将其赋值给currentUser,若不存在返回ErrorMessage.NOT_EXIST,currentUser置为null
        /// </summary>
        public ErrorMessage SetCurrentUserById(string uid)
        {
            var queryUsers = from users in db.user
                             where users.userId == uid
                             select users;
            if (!queryUsers.Any())
            {
                currentUser = null;
                return ErrorMessage.NOT_EXIST;
            }
            else
            {
                currentUser = queryUsers.First();
                return ErrorMessage.OK;
            }
        }

        public ErrorMessage AddFriend(string userBid)
        {
            if (currentUser == null)
                return ErrorMessage.ERROR;
            if (userBid == currentUser.userId)
                return ErrorMessage.ERROR;
            UserHandler BHandler = new UserHandler();
            if (BHandler.SetCurrentUserById(userBid) == ErrorMessage.NOT_EXIST)
                return ErrorMessage.NOT_EXIST;
            if (currentUser.friend.Any() || currentUser.friend1.Any())
                return ErrorMessage.ALREADY_EXIST;

            friend newRecord=new friend { userA=currentUser.userId,userB=userBid};
            currentUser.friend.Add(newRecord);
            return ErrorMessage.OK;
        }
        //使用AddFriend的例子：
        //string userAid,userBid;
        //UserHandler uh=new UserHandler();
        //uh.SetUserById(userAid);
        //uh.AddFriend(userBid);
        //返回ErrorMessage,其中，NOT_EXIST标示没有找到userBid对应的user，ALERADY_EXIST表示已经由此关系，ERROR表示加出现其他异常，OK表示操作成功。
        //uh.Submit();
    }
}