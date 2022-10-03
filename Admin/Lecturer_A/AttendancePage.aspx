<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AttendancePage.aspx.cs" Inherits="AttendanceManagementSystem.Admin.Lecturer_A.AttendancePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h3 runat="server" id="CourseAllocationHeader"></h3>
    <hr />
    <div class="col-md-12">

        <div class="form-horizontal">

            <div class="table-responsive col-md-12">
                 <h4>Mark Attendance</h4>
                <asp:GridView ID="StudentGridView" DataKeyNames="Id" runat="server" CssClass="table table-condensed table-bordered adjust-grid" 
                    AutoGenerateColumns="false" HeaderStyle-BackColor="#666666" HeaderStyle-ForeColor="#ffffff" EmptyDataRowStyle-BackColor="#ff3300" EmptyDataRowStyle-ForeColor="#ffffff">
                    <Columns>
                       
                        <asp:BoundField HeaderText="Id" DataField="Id" Visible="false" />
                        <asp:BoundField HeaderText="First Name" DataField="FirstName" />
                        <asp:BoundField HeaderText="Middle Name" DataField="MiddleName" />
                        <asp:BoundField HeaderText="Last Name" DataField="LastName" />
                        <asp:TemplateField HeaderText="Present" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center" >
                            <ItemTemplate>
                                <asp:CheckBox ID="AttendanceStatusCheckBox" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                    <EmptyDataTemplate>
                      <span>None at the moment</span>
                    </EmptyDataTemplate>
                    
                </asp:GridView>
                <div>
                    <asp:Button ID="ConfirmButton" runat="server" Text="Done" 
                        CssClass="btn btn-default btn-block" OnClick="ConfirmButton_Click" />
                </div>
            </div>

            <%--<div class="table-responsive col-md-6">
                 <h4 runat="server" id="CoursesAllocatedHeader"></h4>
                <asp:GridView ID="AllocatedCoursesGridView" runat="server" CssClass="table table-condensed table-bordered adjust-grid" 
                    AutoGenerateColumns="false" HeaderStyle-BackColor="#666666" DataKeyNames="Id"
                    HeaderStyle-ForeColor="#ffffff" EmptyDataRowStyle-BackColor="#ff3300" EmptyDataRowStyle-ForeColor="#ffffff" >
                    <Columns>
                        <asp:BoundField HeaderText="Id" DataField="Id" Visible="false" />
                        <asp:BoundField HeaderText="Student Id" DataField="StudentId" Visible="false" />
                        <asp:BoundField HeaderText="Course Id" DataField="CourseId" Visible="false" />
                        <asp:BoundField HeaderText="Course Title" DataField="CourseTitle" />
                        <asp:BoundField HeaderText="Course Code" DataField="CourseCode" />
                        <asp:TemplateField HeaderText="Remove" HeaderStyle-CssClass="text-center" ItemStyle-CssClass="text-center">
                            <ItemTemplate>
                                <asp:Button ID="RemoveCourseButton" runat="server" Text="Remove" 
                                    OnClientClick="Confirm()"
                                    OnClick="RemoveCourseButton_Click" CssClass="btn btn-danger btn-sm" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EmptyDataTemplate>
                      <span>None at the moment</span>
                    </EmptyDataTemplate>
                </asp:GridView>
                <div>
                    <asp:Button ID="ReturnToStudentList" runat="server" Text="Done" 
                        CssClass="btn btn-default btn-block" OnClick="ReturnToStudentList_Click" />
                </div>
            </div>--%>
        </div>

    </div>

</asp:Content>
