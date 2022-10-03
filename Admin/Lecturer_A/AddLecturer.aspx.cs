using AttendanceManagemnetSystem.Services;
using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Lecturer_A
{
    public partial class AddLecturer : System.Web.UI.Page
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

        protected void CreateLecturer_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                bool LecturerOk = LecturerRepository.AddLecturer(LectTitle.Text.Trim(), SurName.Text.Trim(), MiddleName.Text.Trim(),
               LastName.Text.Trim(), DepartmentNameDD.SelectedValue, null, null);

                if (LecturerOk)
                {
                    Response.Redirect("Lecturers");
                }
                else
                {
                    LectTitle.Focus();
                }
            }
           
        }
    }
}