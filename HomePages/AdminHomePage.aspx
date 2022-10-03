<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHomePage.aspx.cs" Inherits="AttendanceManagementSystem.HomePages.AdminHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="amsstylesheet.css" rel="stylesheet" />
    <h1>Welcome to ACU's Attendance Management System</h1>
    <hr />
    <div class="card-container">

        <div class="card">
            <a href="../Admin/Faculy/Faculties">
                <img src="Images/IMG_1731.PNG" />
                <div class="containerr">
                    <h4><b>Faculties &raquo;</b></h4>
                </div>
            </a>
        </div>

        <div class="card">
            <a href="../Admin/Department_A/Departments">
                <img src="Images/IMG_1732.PNG" />
                <div class="containerr">
                    <h4><b>Departments &raquo;</b></h4>
                </div>
            </a>
        </div>

        <div class="card">
            <a href="../Admin/Course_A/Courses">
                <img src="Images/IMG_1734.PNG" />
                <div class="containerr">
                    <h4><b>Courses &raquo;</b></h4>
                </div>
            </a>
        </div>


        <div class="card">
            <a href="../Admin/Lecturer_A/Lecturers">
                <img src="Images/IMG_1735.PNG" />
                <div class="containerr">
                    <h4><b>Lecturers &raquo;</b></h4>
                </div>
            </a>
        </div>


        <div class="card">
            <a href="../Admin/Student_A/Students">
                <img src="Images/IMG_1733.PNG" />
                <div class="containerr">
                    <h4><b>Faculty &raquo;</b></h4>
                </div>
            </a>
        </div>

    </div>
</asp:Content>
