using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using MMTDataAccess;

namespace MMTService.Controllers
{
    public class ProByCategoryController : ApiController
    {
        private MMTShopEntities en;
        public ProByCategoryController()
        {
            en = new MMTShopEntities();
        }
        [HttpGet]
        public HttpResponseMessage GetCategories(string Cname)
        {
            switch (Cname)
            {
                case "home":
                    return Request.CreateResponse(en.Products.SqlQuery("select * from Products where SKU like '1%'").ToList());
                case "garden":
                    return Request.CreateResponse(en.Products.SqlQuery("select * from Products where SKU like '2%'").ToList());
                case "electronics":
                    return Request.CreateResponse(en.Products.SqlQuery("select * from Products where SKU like '3%'").ToList());
                case "fitness":
                    return Request.CreateResponse(en.Products.SqlQuery("select * from Products where SKU like '4%'").ToList());
                case "toys":
                    return Request.CreateResponse(en.Products.SqlQuery("select * from Products where SKU like '5%'").ToList());
                default:
                    return Request.CreateResponse(HttpStatusCode.BadRequest, "Category Name" + Cname + "is Invalid.");
            }
        }
    }
}
