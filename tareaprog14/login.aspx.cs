﻿using System;
using MySql.Data.MySqlClient;
using System.Data;


namespace tareaprog14
{
    public partial class _default : System.Web.UI.Page
    {
         MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=proyecto;User Id=root;password=''");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void enviar_Click(object sender, EventArgs e)
        {
            con.Open();
            MySqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from usuarios where usuario='" + usuario.Text + "' and contraseña='" + password.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                Session["usuario"] = dr["usuario"].ToString();
                Response.Redirect("Registros.aspx");

            }

            con.Close();
            Label1.Text = "Usuario o contraseña inválidos";

        }
    }
}