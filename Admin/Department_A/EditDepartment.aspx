﻿<%@ Page Title="Edit Department" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditDepartment.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Department_A.EditDepartment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h3><%:Page.Title %></h3>
     <hr />

    <div class ="col-md-12">
        <div class ="form-horizontal">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
            <div class ="form-group">
                <asp:Label ID="Label1" runat="server" CssClass ="control-label col-md-3">Faculty: </asp:Label>   
                <div class ="col-md-6">
                    <asp:DropDownList ID="FacultyName" runat="server" CssClass="form-control" 
                        ItemType="AttendanceMangementSystem.Model.Faculty" SelectMethod="GetFaculties" 
                        DataTextField="FacultyName" DataValueField="Id" Enabled="false"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Faculty Name is required"
                        SetFocusOnError ="true" ControlToValidate ="FacultyName" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class ="form-group">
                <asp:Label ID="Label2" runat="server" CssClass ="control-label col-md-3">Department: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="DepartmentName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Department Name is required"
                        SetFocusOnError ="true" ControlToValidate ="DepartmentName" Display="Dynamic" CssClass ="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>
            <div class ="form-group">
                 
                <div class ="col-md-6 ">
                    <asp:Button ID="EditDept" runat="server" Text="Update Department" CssClass ="btn btn-default pull-right " OnClick="EditDepartment_Click"/>
                </div>

            </div>
        </div>

    </div>
</asp:Content>
