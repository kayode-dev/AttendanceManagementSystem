<%@ Page Title="Add Lecturer" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddLecturer.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Lecturer_A.AddLecturer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%:Page.Title %></h3>
    <hr />

    <div class ="col-md-12">
        <div class ="form-horizontal">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
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
                <asp:Label ID="Label2" runat="server" CssClass ="control-label col-md-3">Title: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="LectTitle" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Title is required"
                        SetFocusOnError ="true" ControlToValidate ="LectTitle" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label3" runat="server" CssClass ="control-label col-md-3">SurName: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="SurName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="SurName is required"
                        SetFocusOnError ="true" ControlToValidate ="SurName" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

        <div class ="form-group">
                <asp:Label ID="Label4" runat="server" CssClass ="control-label col-md-3">Middle Name: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="MiddleName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Middle Name is required"
                        SetFocusOnError ="true" ControlToValidate ="MiddleName" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label5" runat="server" CssClass ="control-label col-md-3">Last Name: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="LastName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Last Name is required"
                        SetFocusOnError ="true" ControlToValidate ="LastName" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>
            <div class ="form-group">
                 
                <div class ="col-md-6 col-md-offset-3 ">
                    <asp:Button ID="CreateLecturer" runat="server" Text="Register lecturer" CssClass ="btn btn-default" OnClick="CreateLecturer_Click"/>
                </div>

            </div>
        </div>
    </div>

</asp:Content>
