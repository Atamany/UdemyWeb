<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgrenci.master" AutoEventWireup="true" CodeFile="Ogrenci_OgrenciProfil.aspx.cs" Inherits="Ogrenci_OgrenciProfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Profilim</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:TextBox ID="TxtOgrId" runat="server" CssClass="form-control" Enabled="false">Numara: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrTC" runat="server" CssClass="form-control" Enabled="false">TC: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control" Enabled="false">Ad-Soyad: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrFakulte" runat="server" CssClass="form-control" Enabled="false">Fakülte/MYO: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrBolum" runat="server" CssClass="form-control" Enabled="false">Bölüm: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrDurum" runat="server" CssClass="form-control" Enabled="false">Öğrencilik Durumu: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrCinsiyet" runat="server" CssClass="form-control" Enabled="false">Cinsiyet: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control" Enabled="false">Telefon: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control" Enabled="false">E-Posta: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control" Enabled="false">Şifre: </asp:TextBox>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Şifre Değiştir..." CssClass="btn btn-primary" OnClick="Button1_Click" />


    </form>
</asp:Content>

