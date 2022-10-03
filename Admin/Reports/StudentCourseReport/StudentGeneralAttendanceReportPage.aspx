<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="StudentGeneralAttendanceReportPage.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Reports.StudentCourseReport.StudentGeneralAttendanceReportPage" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <h3><%:Page.Title %></h3>
    <hr />
    <div class="col-md-12">
        <CR:CrystalReportViewer ID="StudentReportViewer" runat="server" AutoDataBind="true" />
        
    </div>
</asp:Content>
