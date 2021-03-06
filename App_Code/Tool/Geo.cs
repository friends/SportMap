﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.IO;
using System.Text.RegularExpressions;

namespace SportMap.Tool
{
    /// <summary>
    ///Geo 的摘要说明
    /// </summary>
    public class Geo
    {
        public struct geo
        {
            public string Latitude;
            public string Longitude;
        }

        public static geo Getgeo(
        string location)
        {

            string geo = "";
            geo mygeo = new geo();
            string results = String.Empty;
            HttpWebRequest searchRequest =
            (HttpWebRequest)WebRequest.Create(@"http://maps.google.com/maps?f=q&geocode=&q=" + location + "&output=js");
            WebResponse myresponse = searchRequest.GetResponse();
            Stream responseStream = myresponse.GetResponseStream();
            byte[] buffer = new byte[9999];
            responseStream.Read(buffer, 0, (int)9999);
            results = System.Text.Encoding.ASCII.GetString(buffer);
            System.Text.RegularExpressions.Regex myregex = new Regex(@"center..lat\:[^,]+,lng\:.{0,1}[0-9]+.[0-9]+");
            MatchCollection mc = myregex.Matches(results);

            foreach (Match mymatch in mc)
            {
                geo = mymatch.Value;
                string latitude = geo.Substring(geo.IndexOf("lat:") + 4, 5);
                string Longitude = geo.Substring(geo.IndexOf("lng:") + 4, 5);

                mygeo.Latitude = latitude;
                mygeo.Longitude = Longitude;
            }
            myresponse.Close();

            responseStream.Close();

            return mygeo;
        }

        public static bool GetLocation(
        string location, out string Longitude, out string Latitude)
        {

            geo mygeo = Getgeo(location);
            if (mygeo.Longitude == null || mygeo.Latitude == null)
            {
                Longitude = "113";
                Latitude = "24";
                return false;
            }
            else
            {
                Longitude = mygeo.Longitude;
                Latitude = mygeo.Latitude;
                return true;
            }
         }
    }
}