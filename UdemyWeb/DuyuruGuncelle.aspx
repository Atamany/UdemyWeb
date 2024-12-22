<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="DuyuruGuncelle.aspx.cs" Inherits="DuyuruGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
        <form id="Form1" runat="server">
    <h1>Duyuru Güncelleme Paneli</h1><br /><br />
    
    <div class="form-group">
        <asp:Label for="TxtDuyuruBaslik" runat="server" Text="Başlık" />
        <asp:TextBox ID="TxtDuyuruBaslik" runat="server" CssClass="form-control" />
    </div>
    <br />

    <div class="form-group">
        <asp:Label for="TxtDuyuruIcerik" runat="server" Text="İçerik" />
        <textarea id="TxtDuyuruIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
    </div>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
</form>
</asp:Content>

