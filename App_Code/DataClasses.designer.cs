﻿#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     此代码由工具生成。
//     运行时版本:4.0.30319.1
//
//     对此文件的更改可能会导致不正确的行为，并且如果
//     重新生成代码，这些更改将会丢失。
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;



[global::System.Data.Linq.Mapping.DatabaseAttribute(Name="SportMapDB")]
public partial class DataClassesDataContext : System.Data.Linq.DataContext
{
	
	private static System.Data.Linq.Mapping.MappingSource mappingSource = new AttributeMappingSource();
	
  #region 可扩展性方法定义
  partial void OnCreated();
  partial void Insertuser(user instance);
  partial void Updateuser(user instance);
  partial void Deleteuser(user instance);
  #endregion
	
	public DataClassesDataContext() : 
			base(global::System.Configuration.ConfigurationManager.ConnectionStrings["SportMapDBConnectionString"].ConnectionString, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(string connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public DataClassesDataContext(System.Data.IDbConnection connection, System.Data.Linq.Mapping.MappingSource mappingSource) : 
			base(connection, mappingSource)
	{
		OnCreated();
	}
	
	public System.Data.Linq.Table<user> user
	{
		get
		{
			return this.GetTable<user>();
		}
	}
}

[global::System.Data.Linq.Mapping.TableAttribute(Name="dbo.[user]")]
public partial class user : INotifyPropertyChanging, INotifyPropertyChanged
{
	
	private static PropertyChangingEventArgs emptyChangingEventArgs = new PropertyChangingEventArgs(String.Empty);
	
	private string _userId;
	
	private System.Nullable<int> _pictureId;
	
	private string _userName;
	
	private string _userPwd;
	
	private decimal _userType;
	
	private string _pwdProtectA;
	
	private string _pwdProtectQ;
	
	private System.Nullable<bool> _userSex;
	
	private string _userLocation;
	
	private System.Nullable<System.DateTime> _userBirthday;
	
	private string _userConnectMsn;
	
	private System.Nullable<decimal> _userConnectqq;
	
	private string _userConnectAdd;
	
	private string _userPrefer;
	
	private int _userLoginTimes;
	
	private System.Nullable<decimal> _userConnectPhone;
	
	private string _userSign;
	
	private string _userConnectEmail;
	
	private System.DateTime _lastLoginOutTime;
	
	private double _userLatitude;
	
	private double _userLongitude;
	
    #region 可扩展性方法定义
    partial void OnLoaded();
    partial void OnValidate(System.Data.Linq.ChangeAction action);
    partial void OnCreated();
    partial void OnuserIdChanging(string value);
    partial void OnuserIdChanged();
    partial void OnpictureIdChanging(System.Nullable<int> value);
    partial void OnpictureIdChanged();
    partial void OnuserNameChanging(string value);
    partial void OnuserNameChanged();
    partial void OnuserPwdChanging(string value);
    partial void OnuserPwdChanged();
    partial void OnuserTypeChanging(decimal value);
    partial void OnuserTypeChanged();
    partial void OnpwdProtectAChanging(string value);
    partial void OnpwdProtectAChanged();
    partial void OnpwdProtectQChanging(string value);
    partial void OnpwdProtectQChanged();
    partial void OnuserSexChanging(System.Nullable<bool> value);
    partial void OnuserSexChanged();
    partial void OnuserLocationChanging(string value);
    partial void OnuserLocationChanged();
    partial void OnuserBirthdayChanging(System.Nullable<System.DateTime> value);
    partial void OnuserBirthdayChanged();
    partial void OnuserConnectMsnChanging(string value);
    partial void OnuserConnectMsnChanged();
    partial void OnuserConnectqqChanging(System.Nullable<decimal> value);
    partial void OnuserConnectqqChanged();
    partial void OnuserConnectAddChanging(string value);
    partial void OnuserConnectAddChanged();
    partial void OnuserPreferChanging(string value);
    partial void OnuserPreferChanged();
    partial void OnuserLoginTimesChanging(int value);
    partial void OnuserLoginTimesChanged();
    partial void OnuserConnectPhoneChanging(System.Nullable<decimal> value);
    partial void OnuserConnectPhoneChanged();
    partial void OnuserSignChanging(string value);
    partial void OnuserSignChanged();
    partial void OnuserConnectEmailChanging(string value);
    partial void OnuserConnectEmailChanged();
    partial void OnlastLoginOutTimeChanging(System.DateTime value);
    partial void OnlastLoginOutTimeChanged();
    partial void OnuserLatitudeChanging(double value);
    partial void OnuserLatitudeChanged();
    partial void OnuserLongitudeChanging(double value);
    partial void OnuserLongitudeChanged();
    #endregion
	
	public user()
	{
		OnCreated();
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userId", DbType="VarChar(16) NOT NULL", CanBeNull=false, IsPrimaryKey=true)]
	public string userId
	{
		get
		{
			return this._userId;
		}
		set
		{
			if ((this._userId != value))
			{
				this.OnuserIdChanging(value);
				this.SendPropertyChanging();
				this._userId = value;
				this.SendPropertyChanged("userId");
				this.OnuserIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_pictureId", DbType="Int")]
	public System.Nullable<int> pictureId
	{
		get
		{
			return this._pictureId;
		}
		set
		{
			if ((this._pictureId != value))
			{
				this.OnpictureIdChanging(value);
				this.SendPropertyChanging();
				this._pictureId = value;
				this.SendPropertyChanged("pictureId");
				this.OnpictureIdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userName", DbType="VarChar(16)")]
	public string userName
	{
		get
		{
			return this._userName;
		}
		set
		{
			if ((this._userName != value))
			{
				this.OnuserNameChanging(value);
				this.SendPropertyChanging();
				this._userName = value;
				this.SendPropertyChanged("userName");
				this.OnuserNameChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userPwd", DbType="VarChar(16) NOT NULL", CanBeNull=false)]
	public string userPwd
	{
		get
		{
			return this._userPwd;
		}
		set
		{
			if ((this._userPwd != value))
			{
				this.OnuserPwdChanging(value);
				this.SendPropertyChanging();
				this._userPwd = value;
				this.SendPropertyChanged("userPwd");
				this.OnuserPwdChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userType", DbType="Decimal(1,0) NOT NULL")]
	public decimal userType
	{
		get
		{
			return this._userType;
		}
		set
		{
			if ((this._userType != value))
			{
				this.OnuserTypeChanging(value);
				this.SendPropertyChanging();
				this._userType = value;
				this.SendPropertyChanged("userType");
				this.OnuserTypeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_pwdProtectA", DbType="Text NOT NULL", CanBeNull=false, UpdateCheck=UpdateCheck.Never)]
	public string pwdProtectA
	{
		get
		{
			return this._pwdProtectA;
		}
		set
		{
			if ((this._pwdProtectA != value))
			{
				this.OnpwdProtectAChanging(value);
				this.SendPropertyChanging();
				this._pwdProtectA = value;
				this.SendPropertyChanged("pwdProtectA");
				this.OnpwdProtectAChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_pwdProtectQ", DbType="Text NOT NULL", CanBeNull=false, UpdateCheck=UpdateCheck.Never)]
	public string pwdProtectQ
	{
		get
		{
			return this._pwdProtectQ;
		}
		set
		{
			if ((this._pwdProtectQ != value))
			{
				this.OnpwdProtectQChanging(value);
				this.SendPropertyChanging();
				this._pwdProtectQ = value;
				this.SendPropertyChanged("pwdProtectQ");
				this.OnpwdProtectQChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userSex", DbType="Bit")]
	public System.Nullable<bool> userSex
	{
		get
		{
			return this._userSex;
		}
		set
		{
			if ((this._userSex != value))
			{
				this.OnuserSexChanging(value);
				this.SendPropertyChanging();
				this._userSex = value;
				this.SendPropertyChanged("userSex");
				this.OnuserSexChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userLocation", DbType="Text", UpdateCheck=UpdateCheck.Never)]
	public string userLocation
	{
		get
		{
			return this._userLocation;
		}
		set
		{
			if ((this._userLocation != value))
			{
				this.OnuserLocationChanging(value);
				this.SendPropertyChanging();
				this._userLocation = value;
				this.SendPropertyChanged("userLocation");
				this.OnuserLocationChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userBirthday", DbType="DateTime")]
	public System.Nullable<System.DateTime> userBirthday
	{
		get
		{
			return this._userBirthday;
		}
		set
		{
			if ((this._userBirthday != value))
			{
				this.OnuserBirthdayChanging(value);
				this.SendPropertyChanging();
				this._userBirthday = value;
				this.SendPropertyChanged("userBirthday");
				this.OnuserBirthdayChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userConnectMsn", DbType="VarChar(255)")]
	public string userConnectMsn
	{
		get
		{
			return this._userConnectMsn;
		}
		set
		{
			if ((this._userConnectMsn != value))
			{
				this.OnuserConnectMsnChanging(value);
				this.SendPropertyChanging();
				this._userConnectMsn = value;
				this.SendPropertyChanged("userConnectMsn");
				this.OnuserConnectMsnChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userConnectqq", DbType="Decimal(12,0)")]
	public System.Nullable<decimal> userConnectqq
	{
		get
		{
			return this._userConnectqq;
		}
		set
		{
			if ((this._userConnectqq != value))
			{
				this.OnuserConnectqqChanging(value);
				this.SendPropertyChanging();
				this._userConnectqq = value;
				this.SendPropertyChanged("userConnectqq");
				this.OnuserConnectqqChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userConnectAdd", DbType="Text", UpdateCheck=UpdateCheck.Never)]
	public string userConnectAdd
	{
		get
		{
			return this._userConnectAdd;
		}
		set
		{
			if ((this._userConnectAdd != value))
			{
				this.OnuserConnectAddChanging(value);
				this.SendPropertyChanging();
				this._userConnectAdd = value;
				this.SendPropertyChanged("userConnectAdd");
				this.OnuserConnectAddChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userPrefer", DbType="Text", UpdateCheck=UpdateCheck.Never)]
	public string userPrefer
	{
		get
		{
			return this._userPrefer;
		}
		set
		{
			if ((this._userPrefer != value))
			{
				this.OnuserPreferChanging(value);
				this.SendPropertyChanging();
				this._userPrefer = value;
				this.SendPropertyChanged("userPrefer");
				this.OnuserPreferChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userLoginTimes", DbType="Int NOT NULL")]
	public int userLoginTimes
	{
		get
		{
			return this._userLoginTimes;
		}
		set
		{
			if ((this._userLoginTimes != value))
			{
				this.OnuserLoginTimesChanging(value);
				this.SendPropertyChanging();
				this._userLoginTimes = value;
				this.SendPropertyChanged("userLoginTimes");
				this.OnuserLoginTimesChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userConnectPhone", DbType="Decimal(11,0)")]
	public System.Nullable<decimal> userConnectPhone
	{
		get
		{
			return this._userConnectPhone;
		}
		set
		{
			if ((this._userConnectPhone != value))
			{
				this.OnuserConnectPhoneChanging(value);
				this.SendPropertyChanging();
				this._userConnectPhone = value;
				this.SendPropertyChanged("userConnectPhone");
				this.OnuserConnectPhoneChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userSign", DbType="Text", UpdateCheck=UpdateCheck.Never)]
	public string userSign
	{
		get
		{
			return this._userSign;
		}
		set
		{
			if ((this._userSign != value))
			{
				this.OnuserSignChanging(value);
				this.SendPropertyChanging();
				this._userSign = value;
				this.SendPropertyChanged("userSign");
				this.OnuserSignChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userConnectEmail", DbType="VarChar(255) NOT NULL", CanBeNull=false)]
	public string userConnectEmail
	{
		get
		{
			return this._userConnectEmail;
		}
		set
		{
			if ((this._userConnectEmail != value))
			{
				this.OnuserConnectEmailChanging(value);
				this.SendPropertyChanging();
				this._userConnectEmail = value;
				this.SendPropertyChanged("userConnectEmail");
				this.OnuserConnectEmailChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_lastLoginOutTime", DbType="DateTime NOT NULL")]
	public System.DateTime lastLoginOutTime
	{
		get
		{
			return this._lastLoginOutTime;
		}
		set
		{
			if ((this._lastLoginOutTime != value))
			{
				this.OnlastLoginOutTimeChanging(value);
				this.SendPropertyChanging();
				this._lastLoginOutTime = value;
				this.SendPropertyChanged("lastLoginOutTime");
				this.OnlastLoginOutTimeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userLatitude", DbType="Float NOT NULL")]
	public double userLatitude
	{
		get
		{
			return this._userLatitude;
		}
		set
		{
			if ((this._userLatitude != value))
			{
				this.OnuserLatitudeChanging(value);
				this.SendPropertyChanging();
				this._userLatitude = value;
				this.SendPropertyChanged("userLatitude");
				this.OnuserLatitudeChanged();
			}
		}
	}
	
	[global::System.Data.Linq.Mapping.ColumnAttribute(Storage="_userLongitude", DbType="Float NOT NULL")]
	public double userLongitude
	{
		get
		{
			return this._userLongitude;
		}
		set
		{
			if ((this._userLongitude != value))
			{
				this.OnuserLongitudeChanging(value);
				this.SendPropertyChanging();
				this._userLongitude = value;
				this.SendPropertyChanged("userLongitude");
				this.OnuserLongitudeChanged();
			}
		}
	}
	
	public event PropertyChangingEventHandler PropertyChanging;
	
	public event PropertyChangedEventHandler PropertyChanged;
	
	protected virtual void SendPropertyChanging()
	{
		if ((this.PropertyChanging != null))
		{
			this.PropertyChanging(this, emptyChangingEventArgs);
		}
	}
	
	protected virtual void SendPropertyChanged(String propertyName)
	{
		if ((this.PropertyChanged != null))
		{
			this.PropertyChanged(this, new PropertyChangedEventArgs(propertyName));
		}
	}
}
#pragma warning restore 1591
