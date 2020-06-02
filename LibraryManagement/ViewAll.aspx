<%@ Page Title="" Language="C#" MasterPageFile="~/LibMgt_Master.Master" AutoEventWireup="true" CodeBehind="ViewAll.aspx.cs" Inherits="LibraryManagement.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
            <asp:BoundField DataField="publisher" HeaderText="publisher" SortExpression="publisher" />
            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [book] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [book] ([ISBN], [title], [author], [publisher], [year]) VALUES (@ISBN, @title, @author, @publisher, @year)" SelectCommand="SELECT * FROM [book]" UpdateCommand="UPDATE [book] SET [title] = @title, [author] = @author, [publisher] = @publisher, [year] = @year WHERE [ISBN] = @ISBN">
        <DeleteParameters>
            <asp:Parameter Name="ISBN" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ISBN" Type="Int32" />
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="year" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" Type="String" />
            <asp:Parameter Name="author" Type="String" />
            <asp:Parameter Name="publisher" Type="String" />
            <asp:Parameter Name="year" Type="String" />
            <asp:Parameter Name="ISBN" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>

</asp:Content>
