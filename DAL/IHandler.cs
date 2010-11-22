using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SportMap.DAL
{
    enum ErrorMessage
    {
        OK
    }
    /// <summary>
    ///操作数据库中表的增删改操作
    /// </summary>
    public interface IHandler
    {
        ErrorMessage Insert(object o);
        ErrorMessage Delete(object o);
        ErrorMessage Modify(object o);
        ErrorMessage Submit(object o);
    }
}