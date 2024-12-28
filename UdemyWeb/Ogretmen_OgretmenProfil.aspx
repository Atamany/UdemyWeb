<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgretmen.master" AutoEventWireup="true" CodeFile="Ogretmen_OgretmenProfil.aspx.cs" Inherits="Ogretmen_OgretmenProfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Profilim</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:TextBox ID="TxtOgrtId" runat="server" CssClass="form-control" Enabled="false">Numara: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrtAdSoyad" runat="server" CssClass="form-control" Enabled="false">Ad-Soyad: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrtBrans" runat="server" CssClass="form-control" Enabled="false">Branş: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrtSifre" runat="server" CssClass="form-control" Enabled="false">Şifre: </asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir..." CssClass="btn btn-primary" OnClick="Button1_Click"/>


    </form>
</asp:Content>

