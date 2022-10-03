<%@ Page Title="Add Students" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Student_A.AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%:Page.Title %></h3>
    <hr />

    <div class="col-md-12">
        <div class="form-horizontal">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="control-label col-md-3">Department: </asp:Label>
                <div class="col-md-6">
                    <asp:DropDownList ID="DepartmentNameDD" runat="server" CssClass="form-control"
                        ItemType="AttendanceMangementSystem.Model.Department"
                        SelectMethod="GetDepartments"
                        DataTextField="DepartmentName" DataValueField="Id">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Department Name is required"
                        SetFocusOnError="true" ControlToValidate="DepartmentNameDD" Display="Dynamic" CssClass="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-3">First Name: </asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="FirstName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="First Name is required"
                        SetFocusOnError="true" ControlToValidate="FirstName" Display="Dynamic" CssClass="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="control-label col-md-3">Middle Name: </asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="MiddleName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Middle Name is required"
                        SetFocusOnError="true" ControlToValidate="MiddleName" Display="Dynamic" CssClass="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label5" runat="server" CssClass="control-label col-md-3">Last Name: </asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="LastName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Last Name is required"
                        SetFocusOnError="true" ControlToValidate="LastName" Display="Dynamic" CssClass="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>
            <div class="form-group">

                <div class="col-md-6 ">
                    <asp:Button ID="CreateStudent" runat="server" Text="Register Student" CssClass="btn btn-default pull-right" OnClick="CreateStudent_Click" />
                </div>

            </div>
        </div>
    </div>
</asp:Content>
