using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace projectfilm
{
    internal class SqlHelper
    {
        private SqlConnection sqlConnection = null;
        public SqlHelper(string sqlConnectionString)
        {
            sqlConnection = new SqlConnection(sqlConnectionString.ToString());
        }
        public void ExecuteNonQuery(string commnadText, Dictionary<string, object> parameters = null)
        {
            SqlCommand sqlCommand = CreateCommand(commnadText, parameters);
            using (sqlCommand.Connection)
            {
                sqlCommand.Connection.Open();
                sqlCommand.ExecuteNonQuery();
                sqlCommand.Connection.Close();
                sqlCommand.Connection.Dispose();
            }
        }
        public DataTable GetTable(string commnadText, Dictionary<string, object> parameters = null)
        {
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand = CreateCommand(commnadText, parameters);
            using (sqlCommand.Connection)
            {
                sqlCommand.Connection.Open();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = sqlCommand;
                da.Fill(dataTable);
                sqlCommand.Connection.Close();
                sqlCommand.Connection.Dispose();
                return dataTable;
            }
        }
        public object ExecuteScalar(string commnadText, Dictionary<string, object> parameters = null)
        {
            SqlCommand sqlCommand = CreateCommand(commnadText, parameters);
            object value;
            using (sqlCommand.Connection)
            {
                sqlCommand.Connection.Open();
                value = sqlCommand.ExecuteScalar();
                sqlCommand.Connection.Close();
                sqlCommand.Connection.Dispose();
                return value;
            }
        }
        private SqlCommand CreateCommand(string commnadText, Dictionary<string, object> parameters = null)
        {
            SqlCommand sqlCommand = sqlConnection.CreateCommand();
            sqlCommand.CommandText = commnadText;
            sqlCommand.CommandType = CommandType.StoredProcedure;
            AddParametersCommand(sqlCommand, parameters);
            return sqlCommand;
        }
        private void AddParametersCommand(SqlCommand sqlCommand, Dictionary<string, object> parameters = null)
        {
            if (parameters != null)
            {
                foreach (var parameter in parameters)
                {
                    if (parameter.Value != null && parameter.Value.GetType().Name == "String" && parameter.Value.ToString().Length > 0)
                    {
                        var parameterValue = parameter.Value.ToString().Trim().Length > 0 ? parameter.Value.ToString().Trim() : null;
                        sqlCommand.Parameters.AddWithValue(parameter.Key, parameterValue);
                        //sqlCommand.Parameters.AddWithValue(parameter.Key, parameter.Value.ToString().Trim());//Sıkıntı olması durumunda buraya dönülecek.
                    }
                    else
                    {
                        sqlCommand.Parameters.AddWithValue(parameter.Key, parameter.Value);
                    }
                }
            }
        }
    }
}
