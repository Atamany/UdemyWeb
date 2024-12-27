<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_GidenMesajlar.aspx.cs" Inherits="Admin_GidenMesajlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">Alıcı</th>
            <th scope="col">Başlık</th>
            <th scope="col">İçerik</th>
            <th scope="col">Tarih</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <itemtemplate>
                    <tr>
                        <td>
                            <asp:Label ID="lblAlici" runat="server" Text='<%# GetKullaniciAdiByNumara(Eval("Alici")) %>' />
                        </td>

                        <td><%# Eval("Baslik") %></td>
                        <td><%# Eval("Icerik") %></td>
                        <td><%# Eval("Tarih") %></td>
                        

                    </tr>
                </itemtemplate>
            </asp:Repeater>
        </tbody>
    </table>
</asp:Content>

