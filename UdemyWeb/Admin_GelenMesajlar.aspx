<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_GelenMesajlar.aspx.cs" Inherits="Admin_GelenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
        <table class="table table-bordered table-hover">
    <tr>
        <th scope="col">Gönderen</th>
        <th scope="col">Başlık</th>
        <th scope="col">İçerik</th>
        <th scope="col">Tarih</th>
    </tr>
    <tbody>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:Label ID="lblGonderen" runat="server" Text='<%# GetKullaniciAdiByNumara(Eval("Gonderen")) %>' />
                    </td>
                    
                    <td><%# Eval("Baslik") %></td>
                    <td><%# Eval("Icerik") %></td>
                    <td><%# Eval("Tarih") %></td>
                    
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </tbody>
</table>
</asp:Content>

