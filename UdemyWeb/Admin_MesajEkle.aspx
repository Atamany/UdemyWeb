<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_MesajEkle.aspx.cs" Inherits="Admin_MesajEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Mesaj Ekleme Paneli</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:Label for="TxtAlici" runat="server" Text="Alıcı Numarası" />
            <asp:TextBox ID="TxtAlici" runat="server" CssClass="form-control" />
        </div>
        <br />

        <div class="form-group">
            <asp:Label for="TxtBaslik" runat="server" Text="Başlık" />
            <asp:TextBox ID="TxtBaslik" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <asp:Label for="TxtIcerik" runat="server" Text="İçerik" />
            <textarea id="TxtIcerik" cols="20" rows="6" class="form-control" runat="server"></textarea>
        </div>
        <br />
        <asp:Button ID="BtnGonder" runat="server" Text="Mesaj Gönder" CssClass="btn btn-info" OnClick="BtnGonder_Click" />
    </form>
</asp:Content>

