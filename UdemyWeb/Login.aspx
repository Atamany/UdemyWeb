<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Bootstrap/bootstrap-3.3.7/dist/css/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #FFFFFF;
        }
    </style>
</head>
<body style="background-image: url('Uzay.jpg')">
    <form id="form1" runat="server">
        <div style="width: 400px; margin: auto auto auto auto">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <h1 class="auto-style1">UdemyWeb Giriş Ekranı</h1>
            <br />
            <asp:Image ID="Image1" runat="server" Height="200px" Width="360px" src="UdemyWeb.jpg" />
            <br />
            <br />
            <div>
                <asp:Label for="TxtNumara" runat="server" Text="Kullanıcı Adı" Style="color: #FFFFFF" />
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Width="360px" />
            </div>
            <br />
            <div class="form-group">
                <asp:Label for="TxtSifre" runat="server" Text="Şifre" />
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Width="360px" TextMode="Password" />
            </div>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Giriş Yap (Öğrenci)" CssClass="btn btn-warning" Width="360px" OnClick="Button1_Click"/>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Giriş Yap (Akademisyen)" CssClass="btn btn-warning" Width="360px" OnClick="Button2_Click"/>
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Giriş Yap (Admin)" CssClass="btn btn-warning" Width="360px" OnClick="Button3_Click"/>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

