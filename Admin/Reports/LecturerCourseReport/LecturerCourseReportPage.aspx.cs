using AttendanceManagementSystem.ViewModels.Logic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AttendanceManagementSystem.Admin.Reports.LecturerCourseReport
{
    public partial class LecturerCourseReportPage : System.Web.UI.Page
    {
        public static string CourseId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] != null)
                {
                    CourseId = Request.QueryString["Id"];
                    LecturerCourseReportViewer.ToolPanelView = CrystalDecisions.Web.ToolPanelViewType.None;
                    LecturerCourseReport lcr = new LecturerCourseReport();
                    lcr.SetDataSource(ReportData.GetLEcturerCourseViewModelsByCourseId(CourseId));
                LecturerCourseReportViewer.ReportSource = lcr;
                    LecturerCourseReportViewer.RefreshReport();
                }
               
            }
        }
    }
}