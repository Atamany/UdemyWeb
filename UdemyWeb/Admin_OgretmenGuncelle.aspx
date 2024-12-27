<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_OgretmenGuncelle.aspx.cs" Inherits="Admin_OgretmenGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
    <h1>Öğretmen Güncelleme Paneli</h1>
    <br />
    <br />

    <div class="form-group">
        <asp:Label for="TxtOgrt" runat="server" Text="Ad - Soyad" />
        <asp:TextBox ID="TxtOgrt" runat="server" CssClass="form-control" />
    </div>
    <br />

    <div class="form-group">
        <asp:Label for="TxtOgrtDers" runat="server" Text="Branş Dersi" />
        <asp:DropDownList ID="TxtOgrtDers" runat="server" CssClass="form-control" DataTextField="OgrtAdSoyad" DataValueField="OgrtBrans"></asp:DropDownList>
    </div>
    <br />

    <div class="form-group">
        <asp:Label for="TxtOgrtSifre" runat="server" Text="Şifre" />
        <asp:TextBox ID="TxtOgrtSifre" runat="server" CssClass="form-control" />
    </div>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />
</form>
</asp:Content>

