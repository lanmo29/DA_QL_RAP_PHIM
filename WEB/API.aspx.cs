using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WEB
{
    public partial class API : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string action = this.Request["action"];

            switch (action)
            {
                case "get_infor":
                    get_infor();
                    break;

                case "delete_phim":
                    delete_phim();
                    break;
                case "update_phim":
                    update_phim();
                    break;

               
                default:
                    thong_bao_loi();
                    break;
            }
        }
        void thong_bao_loi()
        {
            string rep = "{\"ok\":false,\"msg\":\"Lỗi rồi nhé, ko có action này!\"}";
            this.Response.Write(rep);
        }
        Library.Read_DB get_db()
        {
            Library.Read_DB db = new Library.Read_DB();
            db.cnstr = "Data Source=LAPTOPCUALANMOO;Initial Catalog=Ql_rap_phim;Integrated Security=True;";
            return db;
        }


        void get_infor()
        {
            Library.Read_DB db = get_db();
            string json = db.get_infor();
            this.Response.Write(json);
        }

        void delete_phim()
        {
            string maPhim = this.Request["maPhim"];
            Library.Read_DB db = get_db();
            string json = db.delete_phim(maPhim);
            this.Response.Write(json);
        }

        public void update_phim()
        {
            string maphim = this.Request["maphim"];
            string tenphim = this.Request["tenphim"];
            string loaiPhim = this.Request["loaiPhim"];
            string ngayChieu = this.Request["ngayChieu"];
            int thoiLuong = int.Parse(this.Request["thoiLuong"]);

            Library.Read_DB db = get_db();
            string json = db.update_phim(maphim, tenphim, loaiPhim, ngayChieu, thoiLuong);
            this.Response.Write(json);
        }

        
        
    }
}