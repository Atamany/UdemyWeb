<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgretmen.master" AutoEventWireup="true" CodeFile="Ogretmen_NotGuncelle.aspx.cs" Inherits="Ogretmen_NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Not Güncelleme Paneli</h1>
        <br />
        <br />

        <div class="form-group">
            <asp:Label for="TxtSinav1" runat="server" Text="Sınav1" />
            <asp:TextBox ID="TxtSinav1" runat="server" CssClass="form-control" />
        </div>
        <br />

        <div class="form-group">
            <asp:Label for="TxtSinav2" runat="server" Text="Sınav2" />
            <asp:TextBox ID="TxtSinav2" runat="server" CssClass="form-control" />
        </div>
        <br />

        <div class="form-group">
            <asp:Label for="TxtSinav3" runat="server" Text="Sınav3" />
            <asp:TextBox ID="TxtSinav3" runat="server" CssClass="form-control" />
        </div>
        <br />

        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click"/>

    </form>
</asp:Content>

