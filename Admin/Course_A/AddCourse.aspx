<%@ Page Title="Add Course" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddCourse.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Course_A.AddCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%:Page.Title %></h3>
    <hr />

    <div class ="col-md-12">
        <div class ="form-horizontal">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
   
            <div class ="form-group">
                <asp:Label ID="Label2" runat="server" CssClass ="control-label col-md-3">Course Code: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="CourseCode" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Title is required"
                        SetFocusOnError ="true" ControlToValidate ="CourseCode" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label3" runat="server" CssClass ="control-label col-md-3">Course Title: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="CourseTitle" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="SurName is required"
                        SetFocusOnError ="true" ControlToValidate ="CourseTitle" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label1" runat="server" CssClass ="control-label col-md-3">Department: </asp:Label>   
                <div class ="col-md-6">
                    <asp:DropDownList ID="DepartmentNameDD" runat="server" CssClass="form-control"
                        ItemType="AttendanceMangementSystem.Model.Department" 
                        SelectMethod="GetDepartments" 
                        DataTextField="DepartmentName" DataValueField="Id"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Department Name is required"
                        SetFocusOnError ="true" ControlToValidate ="DepartmentNameDD" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>
            
            <div class ="form-group">
                <asp:Label ID="Label6" runat="server" CssClass ="control-label col-md-3">Level: </asp:Label>   
                <div class ="col-md-6">
                    <asp:DropDownList ID="LevelDropDown" runat="server" CssClass="form-control"
                        ItemType="AttendanceMangementSystem.Model.Level" 
                        SelectMethod="GetLevels" 
                        DataTextField="LevelNo" DataValueField="Id"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Level is required"
                        SetFocusOnError ="true" ControlToValidate ="LevelDropDown" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label7" runat="server" CssClass ="control-label col-md-3">Semester: </asp:Label>   
                <div class ="col-md-6">
                    <asp:DropDownList ID="SemesterDropDown" runat="server" CssClass="form-control"
                        ItemType="AttendanceMangementSystem.Model.Semester" 
                        SelectMethod="GetSemesters" 
                        DataTextField="semesterName" DataValueField="Id"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Semester  is required"
                        SetFocusOnError ="true" ControlToValidate ="SemesterdropDown" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label4" runat="server" CssClass ="control-label col-md-3">No of Lectures: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="NoOFLectures" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="No of Lectures is required"
                        SetFocusOnError ="true" ControlToValidate ="CourseCode" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            </div>
            <div class ="form-group">
                 
                <div class ="col-md-6 ">
                    <asp:Button ID="CreateCourse" runat="server" Text="Register course" CssClass ="btn btn-default pull-right" OnClick="CreateCourse_Click"/>
                </div>

            </div>
    </div>

</asp:Content>
