using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using MMTDataAccess;

namespace MMTService.Controllers
{
    public class AvailableCategoriesController : ApiController
    {
        public IEnumerable<Category> Get()
        {         
            using(var ct = new MMTShopEntities())
            {
                return ct.Categories.SqlQuery("select * from category").ToList();
            }
        }
    }
}
