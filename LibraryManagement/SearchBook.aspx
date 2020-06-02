<%@ Page Title="" Language="C#" MasterPageFile="~/LibMgt_Master.Master" AutoEventWireup="true" CodeBehind="SearchBook.aspx.cs" Inherits="LibraryManagement.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
<div class="row">
 
    <div><asp:Panel ID="Panel2" runat="server">
            Search By: <asp:DropDownList ID="Search" runat="server" AutoPostBack="True" OnSelectedIndexChanged="Search_SelectedIndexChanged">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Title</asp:ListItem>
                <asp:ListItem>Author</asp:ListItem>
                <asp:ListItem>ISBN</asp:ListItem>
            </asp:DropDownList>
            <table id="table2" runat="server" class="auto-style1">
                <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Title:"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="txtsearchtitle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Author:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="txtsearchauth" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="ISBN:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtisbn" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                    <td colspan="2" class="auto-style2">
                        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel1" runat="server" Visible="false">
             <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <h4 class="auto-style2">Book Fields</h4>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">ISBN:</td>
                <td>
                    <asp:Label ID="lblisbn" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Title:</td>
                <td>
                    <asp:Label ID="lbltitle" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Author:</td>
                <td>
                    <asp:Label ID="lblauthor" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Publisher:</td>
                <td>
                    <asp:Label ID="lblpub" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Year:</td>
                <td>
                    <asp:Label ID="lblyear" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
        </asp:Panel>
        </div>
    </div></form>
</asp:Content>
