using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace TestProject.Models
{
    public class HomeDbContext : DbContext
    {
        public HomeDbContext() : base("Home")
        {

        }

        public DbSet<Home> Homes { get; set; }
    }
}