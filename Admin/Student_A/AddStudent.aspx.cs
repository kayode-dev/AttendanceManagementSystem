using AttendanceManagemnetSystem.Services;
using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Student_A
{
    public partial class AddStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem lst = new ListItem("Select Category", "-1");
                DepartmentNameDD.Items.Insert(0, lst);
            }
        }

        public IEnumerable<Department> GetDepartments()
        {
            return DepartmentRepository.GetDepartments().ToList();
        }

        protected void CreateStudent_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                bool StudentOk = StudentDetailRepository.AddStudent( FirstName.Text.Trim(), MiddleName.Text.Trim(),
               LastName.Text.Trim(), DepartmentNameDD.SelectedValue);

                if (StudentOk)
                {
                    Response.Redirect("Students");
                }
                else
                {
                    FirstName.Focus();
                }
            }
        }
    }
}