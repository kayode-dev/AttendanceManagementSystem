<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="StudentHomePage.aspx.cs" Inherits="AttendanceManagementSystem.HomePages.StudentHomePage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="amsstylesheet.css" rel="stylesheet" />
    <h1>Welcome to ACU's Attendance Management System</h1>
    <hr />
    <div class="card-container">

        <div class="card">
            <a href="../Admin/Faculy/Faculties">
                <img src="Images/IMG_1734.PNG" />
                <div class="containerr">
                <h4><b>Register Courses &raquo;</b></h4>
                </div>
            </a>
        </div>

        <div class="card">
            <a href="../Admin/Department_A/Departments">
                <img src="Images/IMG_1951.PNG" />
                <div class="containerr">
                    <h4><b>Check Attendance History &raquo;</b></h4>
                </div>
            </a>
        </div>


    </div>
</asp:Content>
