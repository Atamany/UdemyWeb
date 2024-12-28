<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgretmen.master" AutoEventWireup="true" CodeFile="Ogretmen_NotEkle.aspx.cs" Inherits="Ogretmen_NotEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Not Ekleme Paneli</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:Label for="TxtOgrenciId" runat="server" Text="Öğrenci ID" />
            <asp:TextBox ID="TxtOgrenciId" runat="server" CssClass="form-control" />
        </div>
        <br />
        
        <div class="form-group">
            <asp:Label for="TxtSinav1" runat="server" Text="1. Sınav" />
            <asp:TextBox ID="TxtSinav1" runat="server" CssClass="form-control" />
        </div>
        <br />
        
        <div class="form-group">
            <asp:Label for="TxtSinav2" runat="server" Text="2. Sınav" />
            <asp:TextBox ID="TxtSinav2" runat="server" CssClass="form-control" />
        </div>
        <br /><div class="form-group">
            <asp:Label for="TxtSinav3" runat="server" Text="3. Sınav" />
            <asp:TextBox ID="TxtSinav3" runat="server" CssClass="form-control" />
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click"/>
    </form>
</asp:Content>

