using AttendanceManagemnetSystem.Services;
using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Department_A
{
    public partial class EditDepartment : System.Web.UI.Page
    {
        public static string DepartmentId;

        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    DepartmentId = Request.QueryString["Id"];
                    var Dept = DepartmentRepository.GetDepartment(DepartmentId);
                    FacultyName.SelectedValue = Dept.FacultyId.ToString();
                    DepartmentName.Text = Dept.DepartmentName;
                }

                else
                {
                    Response.Write("The department Requested is not in our records");
                }
            }
        }

        public IEnumerable<Faculty> GetFaculties()
        {
            return FacultyRepository.GetFaculties().ToList();
        }

        protected void EditDepartment_Click(object sender, EventArgs e)
        {

        }
    }
}