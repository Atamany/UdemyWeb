<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_BolumGuncelle.aspx.cs" Inherits="Admin_BolumGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Bölüm Güncelleme Paneli</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:Label for="TxtBolumAd" runat="server" Text="Bölüm" />
            <asp:TextBox ID="TxtBolumAd" runat="server" CssClass="form-control" />
        </div>
        <div class="form-group">
            <asp:Label for="DDLFakulte" runat="server" Text="Fakülte" />
            <asp:DropDownList ID="DDLFakulte" runat="server" CssClass="form-control"></asp:DropDownList>

        </div>

        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-primary" OnClick="Button1_Click"/>
    </form>
</asp:Content>

