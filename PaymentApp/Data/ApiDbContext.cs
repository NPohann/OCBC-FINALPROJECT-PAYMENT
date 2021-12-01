using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using PaymentApp.Models;
using Microsoft.AspNetCore.Identity;
using MySql.Data.MySqlClient;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace PaymentApp.Data
{
    public class ApiDbContext : IdentityDbContext
    {
        public virtual DbSet<PaymentData> Payment { get; set; }
        public virtual DbSet<RefreshToken> RefreshToken { get; set; }

        public ApiDbContext(DbContextOptions<ApiDbContext>options)
            : base(options)
        {

        }
    }   
}
