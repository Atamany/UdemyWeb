<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_DersGuncelle.aspx.cs" Inherits="Admin_DersGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Ders Güncelleme Paneli</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:Label for="TxtDersAd" runat="server" Text="Ders Adı" />
            <asp:TextBox ID="TxtDersAd" runat="server" CssClass="form-control" />
        </div>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </form>
</asp:Content>

