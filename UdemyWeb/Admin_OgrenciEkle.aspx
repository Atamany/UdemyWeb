<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_OgrenciEkle.aspx.cs" Inherits="Admin_OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>Öğrenci Ekleme Paneli</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:Label for="TxtOgrTC" runat="server" Text="TC" />
            <asp:TextBox ID="TxtOgrTC" runat="server" CssClass="form-control" />
        </div>
        <br />
        <div class="form-group">
            <asp:Label for="TxtOgrAd" runat="server" Text="Ad" />
            <asp:TextBox ID="TxtOgrAd" runat="server" CssClass="form-control" />
        </div>
        <br />

        <div class="form-group">
            <asp:Label for="TxtOgrSoyad" runat="server" Text="Soyad" />
            <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control" />
        </div>
        <br />

        <div class="form-group">
            <asp:Label runat="server" Text="Cinsiyet" CssClass="form-label"></asp:Label>
            <div>
                <asp:RadioButton ID="TxtOgrCinsiyetE" runat="server" Text="Erkek" GroupName="Cinsiyet" CssClass="form-control" />
                <asp:RadioButton ID="TxtOgrCinsiyetK" runat="server" Text="Kız" GroupName="Cinsiyet" CssClass="form-control" />
            </div>
        </div>
        <br />

        <div class="form-group">
            <asp:Label for="TxtOgrTelefon" runat="server" Text="Telefon" />
            <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control" />
        </div>
        <br />

        <div class="form-group">
            <asp:Label for="TxtOgrMail" runat="server" Text="E-Posta" />
            <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control" />
        </div>
        <br />

        <div class="form-group">
            <asp:Label for="TxtOgrSifre" runat="server" Text="Şifre" />
            <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control" />
        </div>
        <br />
        <div class="form-group">
            <asp:Label for="DDLBolum" runat="server" Text="Bölüm" />
            <asp:DropDownList ID="DDLBolum" CssClass="form-control" runat="server"></asp:DropDownList>
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button1_Click"/>
    </form>
</asp:Content>

