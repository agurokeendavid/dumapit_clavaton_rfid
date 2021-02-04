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
    public class ProductsRepository
    {
        public static async Task<int> InsertProductsAsync(ProductsModels model)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "insert into products (Item, ItemName, ItemNumber, Stock, Price) values (upper(@Item), upper(@ItemName),  @ItemNumber, @Stock, @Price)";
                var parameters = new DynamicParameters();
                parameters.Add("Item", model.Item, DbType.String);
                parameters.Add("ItemName", model.ItemName, DbType.String);
                parameters.Add("ItemNumber", model.ItemNumber, DbType.String);
                parameters.Add("Stock", model.Stock, DbType.String);
                parameters.Add("Price", model.Price, DbType.String);
                return await connection.ExecuteAsync(query, parameters);
            }
        }

        public static async Task<ProductsModels> GetProductAsync(int id)
        {
            using (IDbConnection connection = new MySqlConnection(DBConnectionString.GetConnectionString()))
            {
                string query = "SELECT * FROM products where id = @id";
                var parameters = new DynamicParameters();
                parameters.Add("id", id, DbType.Int32);
                return await connection.QuerySingleOrDefaultAsync<ProductsModels>(query, parameters);
            }
        }
    }
}
