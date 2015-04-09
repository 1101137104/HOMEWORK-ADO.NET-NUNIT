using NUnit.Framework;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication1.Tests
{
    [TestFixture]
    public class AddTest
    {
        string ID = "";

        [TestFixtureSetUp]
        public void Initial()
        {
            string sql = @"INSERT INTO [dbo].[Pet_table]([Pet_name],[Pet_age],[Pet_species],[Pet_host])
                             VALUES
                               (@Pet_name
                               ,@Pet_age
                               ,@Pet_species
                               ,@Pet_host);SELECT CAST(scope_identity() AS int);";
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetConnectionString2"].ConnectionString))
            {
                cn.Open();
                using (SqlCommand cmd = cn.CreateCommand())
                {
                    cmd.CommandText = sql;
                    cmd.Parameters.Add(new SqlParameter("@Pet_name", "Kyon"));
                    cmd.Parameters.Add(new SqlParameter("@Pet_age", "17"));
                    cmd.Parameters.Add(new SqlParameter("@Pet_species", "Monkey"));
                    cmd.Parameters.Add(new SqlParameter("@Pet_host", "Yuki"));

                    ID = cmd.ExecuteScalar().ToString();

                    Console.WriteLine(ID);
                }
            }
        }

        [Test]
        public void TestAdd()
        {
            using (SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["PetConnectionString2"].ConnectionString))
            {
                cn.Open();
                using (SqlCommand cmd = cn.CreateCommand())
                {
                    cmd.CommandText = "select Max(Pet_id) from Pet_table";
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while ((dr.Read()))
                        {
                            Assert.AreEqual(ID, dr.GetSqlInt32(0).ToString());
                            break;
                        }
                        dr.Close();
                    }
                }
            }
        }
    }
}
