<%@ Page Title="" Language="C#" MasterPageFile="~/MasterOgretmen.master" AutoEventWireup="true" CodeFile="Ogretmen_SifreDegistir.aspx.cs" Inherits="Ogretmen_SifreDegistir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
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

