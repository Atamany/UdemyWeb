<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgrenci.master" AutoEventWireup="true" CodeFile="Ogrenci_SifreDegistir.aspx.cs" Inherits="Ogrenci_SifreDegistir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="Form1" runat="server">
    <h1>Profilim</h1>
    <br />
    <br />
    <div class="form-group">
        Şifre: 
    <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="true"> </asp:TextBox>
    </div>
    <div class="form-group">
        Şifre (Tekrar): 
    <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="true"> </asp:TextBox>
    </div>

    <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click" />


</form>
</asp:Content>

