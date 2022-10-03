<%@ Page Title="Allocate Lecturer" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AllocateLecturer.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Course_A.AllocateLecturer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%:Page.Title %></h3>
     <hr />

    <div class ="col-md-12">
        <div class ="form-horizontal">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />

             <div class ="form-group">
                <asp:Label ID="Label2" runat="server" CssClass ="control-label col-md-3">Course Code: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="CourseCode" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label3" runat="server" CssClass ="control-label col-md-3">Course Title: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="CourseTitle" CssClass="form-control" Enabled="false" runat="server"></asp:TextBox>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label1" runat="server" CssClass ="control-label col-md-3">Lecturer: </asp:Label>   
                <div class ="col-md-6">
                    <asp:DropDownList ID="LecturerName" runat="server" CssClass="form-control" 
                        ItemType="AttendanceMangementSystem.Model.Lecturer" SelectMethod="GetLecturersbyDepartmentId" 
                        DataTextField="MiddleName" DataValueField="Id"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="A lecturer should be selected"
                        SetFocusOnError ="true" ControlToValidate ="LecturerName" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

           
            <div class ="form-group">
                 
                <div class ="col-md-6">
                    <asp:Button ID="AllocateLect" runat="server" Text="Allocate Lecturer to Course" CssClass ="btn btn-default pull-right " OnClick="AllocateLect_Click"/>
                </div>

            </div>
        </div>

    </div>

</asp:Content>
