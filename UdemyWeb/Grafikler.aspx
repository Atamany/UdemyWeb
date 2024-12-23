<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.master" AutoEventWireup="true" CodeFile="Grafikler.aspx.cs" Inherits="Grafikler" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="form1" runat="server">
    <table class="table table-bordered table-hover">
            <tr>
                <td>
                    Öğrencilerin Cinsiyet Dağılımı<br />
                    <asp:Chart ID="Chart1" runat="server" Width="600px" BackImageTransparentColor="White" Palette="None" PaletteCustomColors="DodgerBlue; 255, 128, 255">
                        <series>
                            <asp:Series Name="Cinsiyet" ChartType="Pie">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
                <td>
                    Derslere Göre Kayıtlı Öğretmen Dağılımı<br />
                    <asp:Chart ID="Chart2" runat="server" Width="600px" BackImageTransparentColor="White">
                        <series>
                            <asp:Series Name="DersAd" ChartType="Doughnut">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>
                    Derslere Göre Kayıtlı Öğrenci Dağılımı<br />
                    <asp:Chart ID="Chart5" runat="server" Width="600px">
                        <series>
                            <asp:Series Name="Dersler">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                </td>
                <td>
                    Derslere Göre Sınıf Ortalamaları<br />
                    <asp:Chart ID="Chart4" runat="server" Width="600px">
                        <series>
                            <asp:Series Name="Notlar" ChartType="Area">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>

</asp:Content>

