using AliCloud.com.API;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CM.Blog.RS.DWeb
{
    /// <summary>
    /// RS 的摘要说明
    /// </summary>
    public class RS : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            var Keywords = context.Request.QueryString["Keywords"];

            CloudsearchApi MyAPI = null;
            const String AccessKeyID = "";
            const String AccessKeySecret = "";
            MyAPI = new CloudsearchApi(AccessKeyID, AccessKeySecret, "http://opensearch-cn-hangzhou.aliyuncs.com/", 1);

            var IndexName = "dianlv";
            var MySearch = new CloudsearchSearch(MyAPI);
            MySearch.addIndex(IndexName);
            MySearch.setFormat("json");
            MySearch.setHits(10);
            var SearchKeywords = Keywords;
            MySearch.setQueryString("config=start:0,hit:10&&query=title:'" + SearchKeywords + "'");
            var SearchResult = MySearch.search();
            context.Response.ContentType = "text/plain";
            context.Response.Write(SearchResult);
        }

        public bool IsReusable => false;
    }
}