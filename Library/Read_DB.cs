using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Text;

namespace Library
{
    public class Read_DB
    {
        public string cnstr;
        public string get_infor()
        {
            string json = "";
            try
            {

                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_API";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "get_infor";
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi\"}";
            }

            return json;
        }

        public string add_phim(string MaPhim, string TenPhim, string LoaiPhim,string NgayChieu, int ThoiLuong)
        {
            string json = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_API";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "add_phim";
                        cmd.Parameters.Add("@MaPhim", SqlDbType.VarChar, 50).Value = MaPhim;
                        cmd.Parameters.Add("@TenPhim", SqlDbType.NVarChar, 255).Value = TenPhim;
                        cmd.Parameters.Add("@LoaiPhim", SqlDbType.NVarChar, 100).Value = LoaiPhim;
                        cmd.Parameters.Add("@NgayChieu", SqlDbType.DateTime).Value = DateTime.TryParse(NgayChieu, out var end) ? (object)end : DBNull.Value;
                        cmd.Parameters.Add("@ThoiLuong", SqlDbType.Int).Value = ThoiLuong;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch (Exception ex)
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi: " + ex.Message + "\"}";
            }

            return json;
        }
        public string add_ve(string MaVe, string NgayBan, int GiaVe , string MaPhim)
        {
            string json = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_API";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "add_ve";
                        cmd.Parameters.Add("@MaVe", SqlDbType.VarChar, 50).Value = MaVe;
                        cmd.Parameters.Add("@NgayBan", SqlDbType.Date).Value = DateTime.TryParse(NgayBan, out var end) ? (object)end : DBNull.Value;
                        cmd.Parameters.Add("@GiaVe", SqlDbType.Int).Value = GiaVe;
                        cmd.Parameters.Add("@MaPhim", SqlDbType.VarChar, 50).Value = MaPhim;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch (Exception ex)
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi: " + ex.Message + "\"}";
            }
            return json;
        }

        public string update_phim(string MaPhim, string TenPhim, string LoaiPhim, string NgayChieu, int ThoiLuong)
        {
            string json = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_API";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "update_phim";
                        cmd.Parameters.Add("@MaPhim", SqlDbType.VarChar, 50).Value = MaPhim;
                        cmd.Parameters.Add("@TenPhim", SqlDbType.NVarChar, 255).Value = TenPhim;
                        cmd.Parameters.Add("@LoaiPhim", SqlDbType.NVarChar, 100).Value = LoaiPhim;
                        cmd.Parameters.Add("@NgayChieu", SqlDbType.DateTime).Value = DateTime.TryParse(NgayChieu, out var end) ? (object)end : DBNull.Value;
                        cmd.Parameters.Add("@ThoiLuong", SqlDbType.Int).Value = ThoiLuong;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch (Exception ex)
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi: " + ex.Message + "\"}";
            }

            return json;
        }
        public string update_ve(string MaVe, string NgayBan, int GiaVe, string MaPhim)
        {
            string json = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_API";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "update_ve";
                        cmd.Parameters.Add("@MaVe", SqlDbType.VarChar, 50).Value = MaVe;
                        cmd.Parameters.Add("@NgayBan", SqlDbType.Date).Value = DateTime.TryParse(NgayBan, out var end) ? (object)end : DBNull.Value;
                        cmd.Parameters.Add("@GiaVe", SqlDbType.Int).Value = GiaVe;
                        cmd.Parameters.Add("@MaPhim", SqlDbType.VarChar, 50).Value = MaPhim;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch (Exception ex)
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi: " + ex.Message + "\"}";
            }
            return json;
        }
                
        public string delete_phim(string MaPhim)
        {
            string json = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_API";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "delete_phim";
                        cmd.Parameters.Add("@MaPhim", SqlDbType.VarChar, 50).Value = MaPhim;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch (Exception ex)
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi: " + ex.Message + "\"}";
            }

            return json;
        }
        public string delete_ve(string MaVe)
        {
            string json = "";

            try
            {
                using (SqlConnection conn = new SqlConnection(cnstr))
                {
                    conn.Open();
                    using (SqlCommand cmd = conn.CreateCommand())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SP_API";
                        cmd.Parameters.Add("@action", SqlDbType.VarChar, 50).Value = "delete_ve";
                        cmd.Parameters.Add("@MaPhim", SqlDbType.VarChar, 50).Value = MaVe;
                        object result = cmd.ExecuteScalar();
                        json = (string)result;
                    }
                }
            }
            catch (Exception ex)
            {
                json = "{\"ok\":0,\"msg\":\"Lỗi rồi: " + ex.Message + "\"}";
            }

            return json;
        }
    }
}
