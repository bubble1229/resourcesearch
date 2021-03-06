﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AliCloud.com.API;
using System.Web;
using System.IO;

namespace CM.Blog.RS.Test
{
    class Program
    {
        static void Main(string[] args)
        {
            CloudsearchApi MyAPI = null;
            const String AccessKeyID = "";
            const String AccessKeySecret = "";
            MyAPI = new CloudsearchApi(AccessKeyID, AccessKeySecret, "http://opensearch-cn-hangzhou.aliyuncs.com/", 1);

            var IndexName = "dianlv";
            var MySearch = new CloudsearchSearch(MyAPI);
            MySearch.addIndex(IndexName);
            MySearch.setFormat("json");
            MySearch.setHits(10);
            var SearchKeywords = "美食";
            MySearch.setQueryString("config=start:0,hit:10&&query=title:'" + SearchKeywords + "'");
            var SearchResult = MySearch.search();
            Console.WriteLine(SearchResult);
            Console.ReadLine();
        }
    }
}
