<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_FakulteGuncelle.aspx.cs" Inherits="Admin_FakulteGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
        <h1>Fakülte Güncelleme Paneli</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:Label for="TxtFakulteAd" runat="server" Text="Fakülte Adı" />
            <asp:TextBox ID="TxtFakulteAd" runat="server" CssClass="form-control" />
        </div>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </form>
</asp:Content>

