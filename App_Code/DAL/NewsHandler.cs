﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportMap.DAL
{
    /// <summary>
    ///UserHandler 的摘要说明
    /// </summary>
    public class NewsHandler : IHandler
    {
        private DataClassesDataContext db;

        public gameNews currentNews { get;set; }

        public NewsHandler(gameNews gamenews)
        {
            db = new DataClassesDataContext();
            currentNews = gamenews;
        }
        public NewsHandler()
        {
            db = new DataClassesDataContext();
            currentNews = null;
        }

        //接口IHandler的实现
        public ErrorMessage Insert(object o)
        {
            gameNews n = (gameNews)o;
            if (n == null)
                return ErrorMessage.ERROR;
            else if (SetCurrentNewsById(n.gameNewsId) == ErrorMessage.NOT_EXIST)
            {
                db.gameNews.InsertOnSubmit(n);
                Submit();
                SetCurrentNewsById(n.gameNewsId);
                return ErrorMessage.OK;
            }
            else
                return ErrorMessage.ALREADY_EXIST;
        }

        public ErrorMessage Insert()
        {
            if (currentNews == null)
            {
                return ErrorMessage.ERROR;
            }
            else
            {
                db.gameNews.InsertOnSubmit(currentNews);
                Submit();
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
        //self

        /// <summary>
        ///根据gameNewsId找到对应存在于表中的gameNews,存在则将其赋值给currentNews,若不存在返回ErrorMessage.NOT_EXIST,currentNews置为null
        /// </summary>
        public ErrorMessage SetCurrentNewsById(int nid)
        {
            var queryNews = from news in db.gameNews
                             where news.gameNewsId== nid
                             select news;
            if (!queryNews.Any())
            {
                currentNews = null;
                return ErrorMessage.NOT_EXIST;
            }
            else
            {
                currentNews = queryNews.First();
                return ErrorMessage.OK;
            }

        }

        public List<gameNews> getNewsList()
        {
            return db.gameNews.ToList();
        }
    }
}