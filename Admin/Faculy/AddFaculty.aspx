<%@ Page Title="Add Faculty" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddFaculty.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Faculy.AddFaculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <h3><%:Page.Title %></h3>
     <hr />

    <div class ="col-md-12">
        <div class ="form-horizontal">
            <div class ="form-group">
                <asp:Label ID="Label1" runat="server" CssClass ="control-label col-md-3">Faculty Name: </asp:Label>   
                <div class ="col-md-6">
                    <asp:TextBox ID="FacultyName" runat="server" CssClass ="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Faculty Name is Required" SetFocusOnError ="true" ControlToValidate ="FacultyName" Display="Dynamic" CssClass ="text-danger"></asp:RequiredFieldValidator>
                </div>

            </div>
            <div class ="form-group">
                 
                <div class ="col-md-6">
                    <asp:Button ID="CreateFaculty" runat="server" Text="Register Faculty" CssClass ="btn btn-default pull-right " OnClick="CreateFaculty_Click" />
                </div>

            </div>
        </div>

    </div>
</asp:Content>
