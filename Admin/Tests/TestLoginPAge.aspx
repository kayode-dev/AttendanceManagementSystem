<%@ Page Title="Admin Login Page" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="TestLoginPAge.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Tests.TestLoginPAge" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3><%:Page.Title %></h3>
    <hr />
    <div class="col-md-12">
        <div class="form-horizontal">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="text-danger" />

            <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="control-label col-md-3">User Name: </asp:Label>
                <div class="col-md-6">
                    <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="User Name is required"
                        SetFocusOnError="true" ControlToValidate="UserName" Display="Dynamic" CssClass="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="control-label col-md-3">Password: </asp:Label>
                <div class="col-md-6">
                    <input id="Password" type="password"  class="form-control" runat="server" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Password is required"
                        SetFocusOnError="true" ControlToValidate="Password"  Display="Dynamic" CssClass="text-danger">
                    </asp:RequiredFieldValidator>
                </div>

            </div>

             <div class="form-group">

                <div class="col-md-6">
                    <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="btn btn-default pull-right" />
                </div>

            </div>
            

        </div>
    </div>
    <hr />

</asp:Content>
