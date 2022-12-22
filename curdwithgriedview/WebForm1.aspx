﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="curdwithgriedview.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True">
            <Columns>
                <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton OnClick="LinkButton1_Click" ValidationGroup="Insert"  ID="LinkButton1" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="name" SortExpression="name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="TextBox2" ForeColor="Red" Text="*" SetFocusError="true" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is a required field"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    <asp:TextBox ID="FooterName"  runat="server"></asp:TextBox>
                         <asp:RequiredFieldValidator ValidationGroup="Insert"  ControlToValidate  ="FooterName" ForeColor="Red" Text="*" SetFocusError="true" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name is a required field"></asp:RequiredFieldValidator>
                </FooterTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="gender" SortExpression="gender">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList" runat="server" >
                        <asp:ListItem>Select Gender</asp:ListItem>
                         <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator InitialValue="Select Gender" ControlToValidate ="DropDownList" ForeColor="Red" Text="*" SetFocusError="true" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Gender is a required field"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                    <asp:DropDownList ID="FooterDdlGender" runat="server">
                        <asp:ListItem>Select Gender</asp:ListItem>
                         <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                        <asp:RequiredFieldValidator ValidationGroup="Insert" InitialValue="Select Gender" ControlToValidate ="FooterDdlGender" ForeColor="Red" Text="*" SetFocusError="true" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Gender is a required field"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                   </asp:TemplateField>
                
                <asp:TemplateField HeaderText="class" SortExpression="class">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("class") %>'></asp:TextBox>
                         <asp:RequiredFieldValidator ControlToValidate="TextBox3" ForeColor="Red" Text="*" SetFocusError="true" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Class is a required field"></asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("class") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="FooterClass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ValidationGroup="Insert" ControlToValidate="FooterClass" ForeColor="Red" Text="*" SetFocusError="true" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Class is a required field"></asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:ValidationSummary ValidationGroup="Insert" ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" Font-Size="Larger" ForeColor="Red" />
        <asp:ValidationSummary  ID="ValidationSummary2" runat="server" BackColor="#CCCCCC" Font-Size="Larger" ForeColor="Red" />
        <div>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [stu] WHERE [Id] = @Id" InsertCommand="INSERT INTO [stu] ([name], [gender], [class]) VALUES (@name, @gender, @class)" SelectCommand="SELECT * FROM [stu]" UpdateCommand="UPDATE [stu] SET [name] = @name, [gender] = @gender, [class] = @class WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="class" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="gender" Type="String" />
                    <asp:Parameter Name="class" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>


