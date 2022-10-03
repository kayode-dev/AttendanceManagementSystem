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
    public partial class AttendancePage : System.Web.UI.Page
    {
        private static string CourseId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    CourseId = Request.QueryString["Id"];

                    //var courses = CourseAllocationRepository.GetStudentsByCourseId(CourseId);
                    //if (courses != null)
                    //{

                    //}

                    StudentGridView.DataSource = CourseAllocationRepository.GetStudentsByCourseId(CourseId);
                    StudentGridView.DataBind();
                }
            }
        }

        protected void ConfirmButton_Click(object sender, EventArgs e)
        {
            List<Attendance> AttendanceMarked = new List<Attendance>();

            foreach (GridViewRow row in StudentGridView.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    CheckBox AttendanceStatus = row.FindControl("AttendanceStatusCheckBox") as CheckBox;


                    Attendance a = new Attendance
                    {
                        CourseId = CourseId,
                        StudentId = StudentGridView.DataKeys[row.RowIndex].Value.ToString(),
                        AttendanceStatus = AttendanceStatus != null && AttendanceStatus.Checked ? true:false
                    };

                    AttendanceMarked.Add(a);

                }
            }
            AttendanceRepository.AddAttendanceList(AttendanceMarked);
            CourseRepository.EditCourseNoOfLecturesTaken(CourseId);
            Response.Redirect("Lecturers");
        }
    }
}