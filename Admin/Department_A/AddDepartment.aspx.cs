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
    public partial class AddDepartment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<Faculty> GetFaculties()
        {
            return FacultyRepository.GetFaculties().ToList();
        }

        protected void CreateDepartment_Click(object sender, EventArgs e)
        {
                        
                bool DepartmentOK = DepartmentRepository.AddDepartment(Convert.ToInt32(FacultyName.SelectedValue),
                    DepartmentName.Text.Trim());

                if (DepartmentOK)
                {
                    Response.Redirect("Departments");
                }
                else
                {
                    FacultyName.Focus();
                }
            
        }
    }
}