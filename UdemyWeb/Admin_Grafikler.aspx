<%@ Page Title="" Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Admin_Grafikler.aspx.cs" Inherits="Admin_Grafikler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
    <form id="form1" runat="server">
        <table class="table table-bordered table-hover">
            <tr>
                <td>Öğrencilerin Cinsiyet Dağılımı<br />
                    <asp:Chart ID="Chart1" runat="server" Width="600px" PaletteCustomColors="Blue; Fuchsia">
                        <Series>
                            <asp:Series ChartType="Pie" Name="Cinsiyet">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td>
                    <br />
                    Derslere Göre Kayıtlı Öğretmen Dağılımları<br />
                    <asp:Chart ID="Chart2" Width="600px" runat="server">
                        <Series>
                            <asp:Series ChartArea="ChartArea1" ChartType="Doughnut" Name="DersAd">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
            <tr>
                <td>Derslere Göre Kayıtlı Öğrenci Dağılımı<br />
                    <asp:Chart ID="Chart3" Width="600px" runat="server">
                        <Series>
                            <asp:Series ChartArea="ChartArea1" Name="Dersler">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
                <td>Derslere Göre Sınıf Ortalamaları<br />
                    <asp:Chart ID="Chart4" Width="600px" runat="server">
                        <Series>
                            <asp:Series ChartType="Area" Name="Notlar">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                    </asp:Chart>
                </td>
            </tr>
        </table>
    </form>
</asp:Content>

