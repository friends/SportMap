using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportMap.DAL
{
    /// <summary>
    ///UserHandler 的摘要说明
    /// </summary>
    public class NewsHandler
    {
        private DataClassesDataContext db;

        public gameNews currentNews
        {
            get
            {
                return currentNews;
            }
            set
            {
                currentNews = value;
            }
        }
        public NewsHandler(int gameNewsId)
        {
            db = new DataClassesDataContext();
            currentNews = db.gameNews.First(news => news.gameNewsId == gameNewsId);
        }
        public NewsHandler(gameNews gamenews)
        {
            db = new DataClassesDataContext();
            currentNews = gamenews;
        }

        //接口IHandler的实现
        public ErrorMessage Insert()
        {
            if (currentNews == null)
            {
                return ErrorMessage.ERROR;
            }
            var n = db.gameNews.First(news => news.gameNewsId == currentNews.gameNewsId);
            if (n != null)
            {
                return ErrorMessage.ALREADY_EXIST;
            }
            else
            {
                db.gameNews.InsertOnSubmit(currentNews);
                return ErrorMessage.OK;
            }
        }
        public ErrorMessage Delete()
        {
            if (currentNews == null)
            {
                return ErrorMessage.ERROR;
            }
            else
            {
                db.gameNews.DeleteOnSubmit(currentNews);
                Submit();
                currentNews = null;
                return ErrorMessage.OK;
            }
        }
        public ErrorMessage Submit()
        {
            db.SubmitChanges();
            return ErrorMessage.OK;
        }
    }
}