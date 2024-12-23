<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="MesajGuncelle.aspx.cs" Inherits="MesajGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Mesaj Güncelleme Paneli</h1>
        <br />
        <br />

        <div class="form-group">
            <asp:Label for="TxtBaslik" runat="server" Text="Başlık" />
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control" />
        </div>
        <br />

        <div class="form-group">
            <asp:Label for="TxtIcerik" runat="server" Text="İçerik" />
            <textarea id="TxtIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </form>
</asp:Content>

