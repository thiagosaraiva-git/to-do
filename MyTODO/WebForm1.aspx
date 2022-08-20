<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MyTODO.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>TODO mtp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="section">
                <h1 class="title">My TODO List</h1>
                <p class="subtitle">Developed by Thiago Brasil Saraiva</p>
                <asp:TextBox ID="TextAdd" runat="server"></asp:TextBox>
                <asp:Button ID="Add" runat="server" OnClick="Button1_Click" Text="Add" />
            </section>

            <section class="section">
                <asp:GridView class="table" ID="GridView1" runat="server" CellPadding="4" DataSourceID="SqlDataSource" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                        <asp:BoundField DataField="TODO" HeaderText="TODO" SortExpression="TODO" />
                        <asp:CommandField ButtonType="Button" CancelText="CANCEL" DeleteText="DONE" EditText="EDIT" HeaderText="OPERATIONS" InsertText="INSERT" NewText="NEW" SelectText="SELECT" ShowDeleteButton="True" ShowEditButton="True" UpdateText="UPDATE" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </section>
        </div>
       
        <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:todo_dbConnectionString %>" SelectCommand="SELECT * FROM [todoTable]" DeleteCommand="DELETE FROM [todoTable] WHERE [ID] = @ID" InsertCommand="INSERT INTO [todoTable] ([TODO]) VALUES (@TODO)" OnSelecting="SqlDataSource_Selecting" UpdateCommand="UPDATE [todoTable] SET [TODO] = @TODO WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="TODO" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TODO" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
