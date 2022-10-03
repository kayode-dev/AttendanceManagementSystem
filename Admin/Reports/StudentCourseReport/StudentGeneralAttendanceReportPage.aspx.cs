using AttendanceManagementSystem.ViewModels.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Reports.StudentCourseReport
{
    public partial class StudentGeneralAttendanceReportPage : System.Web.UI.Page
    {
        public static string StudentId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    StudentId = Request.QueryString["Id"];
                    StudentReportViewer.ToolPanelView = CrystalDecisions.Web.ToolPanelViewType.None;
                    StudentGeneralAttendance sga = new StudentGeneralAttendance();
                    sga.SetDataSource(ReportData.GetStudentAttendanceForAllCourses(StudentId));
                    StudentReportViewer.ReportSource = sga;
                    StudentReportViewer.RefreshReport();
                }

            }
        }
    }
}