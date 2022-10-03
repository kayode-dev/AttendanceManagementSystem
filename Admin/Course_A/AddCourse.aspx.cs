using AttendanceManagemnetSystem.Services;
using AttendanceMangementSystem.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Course_A
{
    public partial class AddCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<Department> GetDepartments()
        {
            return DepartmentRepository.GetDepartments().ToList();
        }

        public IEnumerable<Level> GetLevels()
        {
            return LevelRepository.GetLevels().ToList();
        }

        public IEnumerable<Semester> GetSemesters()
        {
            return SemesterRepository.GetSemesters().ToList();
        }

        protected void CreateCourse_Click(object sender, EventArgs e)
        {
            bool CourseOk = CourseRepository.AddCourse(CourseCode.Text.Trim(), CourseTitle.Text.Trim(), DepartmentNameDD.SelectedValue,
                Convert.ToInt32(LevelDropDown.SelectedValue), Convert.ToInt32(SemesterDropDown.SelectedValue), Convert.ToInt32(NoOFLectures.Text));

            if (CourseOk)
            {
                Response.Redirect("Courses");
            }
            else
            {
                CourseCode.Focus();
            }
        }
    }
}