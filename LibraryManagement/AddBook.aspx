<%@ Page Title="" Language="C#" MasterPageFile="~/LibMgt_Master.Master" AutoEventWireup="true" CodeBehind="AddBook.aspx.cs" Inherits="LibraryManagement.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <form id="form1" runat="server">
    <div class="row">
    <div>
        <hr />
        
        Select Operation: <asp:DropDownList ID="Operation" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Operation_SelectedIndexChanged">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem>Add Book</asp:ListItem>
            <asp:ListItem>Search Book</asp:ListItem>
        </asp:DropDownList>
        
        <hr />


        <asp:Panel ID="Panel1" runat="server">
        <table id="table1" runat="server" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">
                    <h4>Book Fields</h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Title:</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Author:</td>
                <td>
                    <asp:TextBox ID="txtAuthor" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">ISBN:</td>
                <td>
                    <asp:Label ID="lblISBN" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Publisher:</td>
                <td>
                    <asp:TextBox ID="txtPub" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Year</td>
                <td>
                    <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" colspan="2">
                    <asp:Button ID="AddBook" runat="server" Text="Add Book" OnClick="AddBook_Click" />
                </td>
            </tr>
            
        </table></asp:Panel>
        </div>
        </div>
        </form>
    
        


</asp:Content>
