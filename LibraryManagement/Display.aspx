<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="LibraryManagement.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Library Inventory Management</title>
    <style>
* {
  box-sizing: border-box;
}
body {
  font-family: Arial;
  padding: 10px;
  background: #f1f1f1;
}

/* Header/Blog Title */
.header {
  padding: 30px;
  text-align: center;
  background: white;
}

.header h1 {
  font-size: 50px;
}


/* Add a card effect for articles */
.card {
  background-color: white;
  padding: 20px;
  margin-top: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Footer */
.footer {
  padding: 20px;
  text-align: center;
  background: #ddd;
  margin-top: 20px;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
  .leftcolumn, .rightcolumn {   
    width: 100%;
    padding: 0;
  }
}

/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
  .topnav a {
    float: none;
    width: 100%;
  }
}
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="header">
  <h1>Library Management</h1>
</div>


<div class="row">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1">
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

    </div>
    </form>
</body>
</html>
