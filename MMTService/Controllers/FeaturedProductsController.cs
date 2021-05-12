using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using MMTDataAccess;

namespace MMTService.Controllers
{
    public class FeaturedProductsController : ApiController
    {
        public IEnumerable<Product> Get()
        {
            using(var db = new MMTShopEntities())
            {
              return db.Products.SqlQuery("select * from Products where SKU like '1%' OR SKU like '2%' OR SKU like '3%'").ToList();

            }
        }
    }
}
