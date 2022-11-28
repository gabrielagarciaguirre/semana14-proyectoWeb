using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
using System.Data.SqlClient;

namespace semana14_proyectoWeb
{
    public partial class fusuario : System.Web.UI.Page 
    {
        //Variables globales
        public string cadena_conexion = "Database=login;Data Source=localhost;User Id = admin2; Password=admin2";
        
      //Estas variables pueden ir en el boton que corresponde
      //Pero es mas efectivo que sean publicas globales
        public string usuario_modificar;
        public string usuario_eliminar;
       

        protected void Page_Load(object sender, EventArgs e)
        {
            //Desabilitar campos, se activan al crear nuevo registro
            txtusuario.Enabled = false;
            txtclave.Enabled = false;
            lstnivel.Enabled = false;

            try
            {
                string consulta = "select * from usuarios";

                SqlConnection conexion = new SqlConnection(cadena_conexion);
                SqlDataAdapter comando = new SqlDataAdapter(consulta,conexion);

                System.Data.DataSet ds = new System.Data.DataSet();
                comando.Fill(ds, "login");
                GridView1.DataSource = ds;
                GridView1.DataMember = "login";

            }
            catch (SqlException)
            {
                

            }
        }
        //El boton nuevo realmente solo habilita el formulario 
        //para agregar un nuevo registro
        protected void Button1_Click(object sender, EventArgs e)
        {
            txtusuario.Enabled = true;
            txtclave.Enabled = true;
            lstnivel.Enabled = true;
            txtusuario.Text = "";
            txtclave.Text = "";
            lstnivel.Text = "Seleccione nivel";
            txtusuario.Focus();
            Bnuevo.Visible = true;
            bguardar.Visible = true;
        }

        //Guardamos el nuevo registro con INSER INTO
        protected void bguardar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection(cadena_conexion);
                string myInsertQuery = "INSERT INTO usuarios(nombre, clave, nivel) Values(?nombre,? clave,? nivel)";
                SqlCommand myCommand = new SqlCommand(myInsertQuery);
                myCommand.Parameters.Add("?nombre", SqlDbType.VarChar,75).Value = txtusuario.Text;
                myCommand.Parameters.Add("?clave", SqlDbType.VarChar,75).Value = txtclave.Text;
                myCommand.Parameters.Add("?nivel", SqlDbType.Int, 11).Value = lstnivel.Text;
                myCommand.Connection = myConnection;
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myCommand.Connection.Close();
                

                string consulta = "select * from usuarios";
                SqlConnection conexion = new SqlConnection(cadena_conexion);
                SqlDataAdapter da = new SqlDataAdapter(consulta, conexion);
                System.Data.DataSet ds = new System.Data.DataSet();
                da.Fill(ds, "login");
                GridView1.DataSource = ds;
                GridView1.DataMember = "login";
            }
            catch (SqlException)
            {
               
            }

            Bnuevo.Visible = true;
            bguardar.Visible = false;
            //Desabilitar campos, se activan al crear nuevo registro
            txtusuario.Enabled = false;
            txtclave.Enabled = false;
            lstnivel.Enabled = false;
            Bnuevo.Focus();
        }

        //El boton nuevo solo habilita el formulario para actualizar el registro actual
        protected void bmodificar_Click(object sender, EventArgs e)
        {
            txtusuario.Enabled = true;
            txtclave.Enabled = true;
            lstnivel.Enabled = true;
            txtusuario.Focus();
            bmodificar.Visible = false;
            bactualizar.Visible = true;
            usuario_modificar = txtusuario.Text.ToString();
            //Aplica los cambios realizados al registro actual
        }

        protected void bbuscar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection(cadena_conexion);
                string myInsertQuery = "select * from usuarios Where idusuario = "+ txtbuscar.Text + "";
                SqlCommand myCommand = new SqlCommand(myInsertQuery,myConnection);
                myCommand.Connection = myConnection;
                myConnection.Open();
                SqlDataReader myReader;
                myReader = myCommand.ExecuteReader();

                if (myReader.Read())
                {
                    txtusuario.Text = (myReader.GetString(1));
                    txtclave.Text = (myReader.GetString(2));
                    lstnivel.Text = (myReader.GetString(3));
                }
                else
                {
                   
                }
                myReader.Close();
                myConnection.Close();
            }
            catch (SqlException)
            {
                
            }
            Bnuevo.Visible = true;
            bguardar.Visible = false;
            //Desabilitar campos, se activan al crear nuevo registro
            txtusuario.Enabled = false;
            txtclave.Enabled = false;
            lstnivel.Enabled = false;
            bmodificar.Focus();
            //guardamos el contenido de txtusuario.Text por si se quiere eliminar  por medio del usuario
            //usuario_eliminar = txtusuario.Text;
        }

        protected void beliminar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection myConnection = new SqlConnection(cadena_conexion);
                string myInsertQuery = "delete from usuarios Where idusuario = " + txtbuscar.Text + "";
                SqlCommand myCommand = new SqlCommand(myInsertQuery);
                myCommand.Connection = myConnection;
                myConnection.Open();
                myCommand.ExecuteNonQuery();
                myCommand.Connection.Close();
               
                string consulta = "select * from usuarios";
                SqlConnection conexion = new SqlConnection(cadena_conexion);
                SqlDataAdapter da = new SqlDataAdapter(consulta, conexion);
                System.Data.DataSet ds = new System.Data.DataSet();
                da.Fill(ds, "login");
                GridView1.DataSource = ds;
                GridView1.DataMember = "login";
            }
            catch (SqlException)
            {
                
            }
            Bnuevo.Visible = true;
            bguardar.Visible = false;
            //Desabilitar campos, se activan al crear nuevo registro
            txtusuario.Enabled = false;
            txtclave.Enabled = false;
            lstnivel.Enabled = false;
            txtusuario.Text = "";
            txtclave.Text = "";
            lstnivel.Text = "Seleccione nivel";
            txtbuscar.Focus();
        }
    }
}