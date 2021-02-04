using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using MySql.Data.MySqlClient;
using ReloadableRFID.Library.Models;

namespace ReloadableRFID.Library.Repositories
{
    public class CashierRepository
    {
        public static async Task<int> InsertCashierAsync(CashierModel model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into cashiers (UserId, CashierNo, FirstName, MiddleName, LastName, Dob, Gender, Address, ContactNumber, Photo) values (@UserId, @CashierNo, upper(@FirstName), upper(@MiddleName), upper(@LastName), @Dob, @Gender, upper(@Address), @ContactNumber, @Photo)";
                var parameters = new DynamicParameters();
                parameters.Add("UserId", model.UserId, DbType.Int32);
                parameters.Add("CashierNo", model.CashierNo, DbType.String);
                parameters.Add("FirstName", model.FirstName, DbType.String);
                parameters.Add("MiddleName", model.MiddleName, DbType.String);
                parameters.Add("LastName", model.LastName, DbType.String);
                parameters.Add("Dob", model.Dob, DbType.Date);
                parameters.Add("Gender", model.Gender, DbType.String);
                parameters.Add("Address", model.Address, DbType.String);
                parameters.Add("ContactNumber", model.ContatNumber, DbType.String);
                parameters.Add("Photo", model.Photo, DbType.Binary);
                return await connection.ExecuteAsync(query, parameters);
            }
        }
    }
}
