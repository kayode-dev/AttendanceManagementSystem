using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AttendanceManagementSystem.ViewModels
{
    public class LEcturerCoursesViewModel
    {
        public string CourseId { get; set; }

        public string CourseCode { get; set; }

        public string CourseTitle { get; set; }

        public string StudentId { get; set; }

        public string StudentFullName { get; set; }
 
        public int NoOfTimesAbsent { get; set; }

        public int NoOfLecturesTaken { get; set; }

        public int NoOfTimesPresent { get; set; }


    }
}