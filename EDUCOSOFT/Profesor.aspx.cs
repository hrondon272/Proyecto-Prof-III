using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EDUCOSOFT
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            String conexion = "Data Source=HANS-PC\\SQLEXPRESS2; Initial Catalog=universidad; integrated security=True";
            SqlConnection cn = new SqlConnection(conexion);
            String consulta = "select a.nombre, c.grupo from asignatura a, curso c, profesor p where a.Id_asignatura = c.asignatura_id_asignatura and c.profesor_id_profesor = p.Id_profesor";
            SqlDataAdapter da = new SqlDataAdapter(consulta, cn);
            DataTable dt = new DataTable();
            cn.Open();
            int registro = da.Fill(dt);
            cn.Close();
            
            
            GridCursos.DataSource = dt;
            GridCursos.DataBind();
        }
      
        protected void GridCursos_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblNoReg.Visible = false;
            txtAsignatura.Text = GridCursos.SelectedRow.Cells[1].Text;
            txtGrupo.Text = GridCursos.SelectedRow.Cells[2].Text;
        }

        protected void btnSelecCurso_Click(object sender, EventArgs e)
        {
            String asignatura = "";
            String grupo = "";
            asignatura = txtAsignatura.Text;
            grupo = txtGrupo.Text;

            String conexion = "Data Source=HANS-PC\\SQLEXPRESS2; Initial Catalog=universidad; integrated security=True";
            SqlConnection cn = new SqlConnection(conexion);
            String consulta = "select e.nombre_estudiante, e.apellido from estudiante e, matricula m, curso c, asignatura a where e.Id_estudiante = m.estudiante_id_estudiante and m.curso_id_curso = c.Id_curso and c.asignatura_id_asignatura=a.Id_asignatura and a.nombre='"+ asignatura +"' and c.grupo='"+ grupo +"'";
            SqlDataAdapter da = new SqlDataAdapter(consulta, cn);
            
            DataTable dt = new DataTable();
            cn.Open();
            int registros=da.Fill(dt);
            cn.Close();

            if (registros == 0)
            {
                lblNoReg.Visible = true;
            }
            else {
                lblNoReg.Visible = false;
            }
            GridEstudiantes.Visible = true;
            GridEstudiantes.DataSource = dt;
            GridEstudiantes.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String nombre = txtNombre.Text;
            String apellido = txtApellido.Text;
            int idEstudiante = 0;
            int idMatricula = 0;
           
            String conexion = "Data Source=HANS-PC\\SQLEXPRESS2; Initial Catalog=universidad; integrated security=True";
            SqlConnection cn = new SqlConnection(conexion);
            String idConsulta = "select e.Id_estudiante, m.Id_matricula from estudiante e, matricula m where e.Id_estudiante = m.estudiante_id_estudiante and e.nombre_estudiante = @nombre and e.apellido = @apellido";
          
            SqlCommand command = new SqlCommand(idConsulta, cn);
            command.Parameters.AddWithValue("@nombre", nombre);
            command.Parameters.AddWithValue("@apellido", apellido);
            cn.Open();
            SqlDataReader reg = command.ExecuteReader();

            if (reg.Read()) {
                idEstudiante = Convert.ToInt32(reg["Id_estudiante"]);
                idMatricula = Convert.ToInt32(reg["Id_matricula"]);
                
            }

            cn.Close();

            insertarnota(idEstudiante, idMatricula);
            //Ahora Cargamos los datos de las notas de todos los estudiantes

            cargartablanotas();

        }

        private void insertarnota(int idEstudiante, int idMatricula)
        {
                     

            String conexion = "Data Source=HANS-PC\\SQLEXPRESS2; Initial Catalog=universidad; integrated security=True";
            SqlConnection cn = new SqlConnection(conexion);
            String insertNota = "Insert into Nota (Nota,Id_matricula,Id_estudiante) values ('" + txtNota.Text + "','" + idMatricula + "','" + idEstudiante + "')";
            SqlCommand cmInsert = new SqlCommand(insertNota, cn);
            cn.Open();

            cmInsert.ExecuteNonQuery();
            cn.Close();

        }

        protected void GridEstudiantes_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtNombre.Text = GridEstudiantes.SelectedRow.Cells[1].Text;
            txtApellido.Text = GridEstudiantes.SelectedRow.Cells[2].Text;
        }

        protected void GridNotas_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtIdEst.Text = GridNotas.SelectedRow.Cells[3].Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int idEstudiante = int.Parse(txtIdEst.Text);
            String nota = txtnewNota.Text;

            String conexion = "Data Source=HANS-PC\\SQLEXPRESS2; Initial Catalog=universidad; integrated security=True";
            SqlConnection sq = new SqlConnection(conexion);
            String consulta = "Update Nota set Nota= '" + nota + "' where Id_estudiante='" + idEstudiante + "' ";
            SqlCommand comando = new SqlCommand(consulta, sq);
            sq.Open();
            comando.ExecuteNonQuery();
            sq.Close();

            cargartablanotas();
        }

        private void cargartablanotas()
        {
            String conexion = "Data Source=HANS-PC\\SQLEXPRESS2; Initial Catalog=universidad; integrated security=True";
            SqlConnection cn = new SqlConnection(conexion);
            String consulta = "select Distinct e.nombre_estudiante, e.apellido, e.Id_estudiante, n.Nota, a.nombre, c.grupo from asignatura a, curso c, matricula m, estudiante e, Nota n where e.Id_estudiante=m.estudiante_id_estudiante and m.curso_id_curso=c.Id_curso and c.asignatura_id_asignatura=a.Id_asignatura and e.Id_estudiante=n.Id_estudiante";
            SqlDataAdapter da = new SqlDataAdapter(consulta, cn);
            DataTable dt = new DataTable();
            cn.Open();
            int registro = da.Fill(dt);
            cn.Close();

            GridNotas.DataSource = dt;
            GridNotas.DataBind();
        }

        protected void btnNotas_Click(object sender, EventArgs e)
        {
            cargartablanotas();
        }
    }
}
