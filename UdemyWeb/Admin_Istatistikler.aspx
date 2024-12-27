<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_Istatistikler.aspx.cs" Inherits="Admin_Istatistikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="Form1" runat="server">
        <h1>İstatistikler</h1>
        <br />
        <br />
        <div class="form-group">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="false">Toplam Öğrenci Sayısı: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Enabled="false">Toplam Öğretmen Sayısı: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Enabled="false">Toplam Ders Sayısı: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Enabled="false">En Başarılı Ders: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="false">Toplam Atılan Mesaj: </asp:TextBox>
        </div>
        <div class="form-group">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" Enabled="false">Sistemdeki Duyuru Sayısı: </asp:TextBox>
        </div>
        <br />

    </form>
</asp:Content>

