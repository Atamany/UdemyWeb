<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="OgretmenGuncelle.aspx.cs" Inherits="OgretmenGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
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
            <asp:Label for="TxtOgrtFotograf" runat="server" Text="Fotoğraf URL" />
            <asp:TextBox ID="TxtOgrtFotograf" runat="server" CssClass="form-control" />
        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />
    </form>
</asp:Content>

