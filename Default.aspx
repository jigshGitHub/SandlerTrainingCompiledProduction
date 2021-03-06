﻿<%@ page title="Dashboard" language="C#" masterpagefile="~/Site.master" autoeventwireup="true" inherits="_Default, App_Web_w34l0ys3" %>

<%@ Register Assembly="SandlerControls" Namespace="SandlerControls" TagPrefix="SandlerChart" %>
<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
    <table width="100%">
        <tr>
            <td width="33%">
                <SandlerChart:ChartLiteral ID="NewAppointmentsBySourceMonth" runat="server" Width="100%"
                    Height="250"></SandlerChart:ChartLiteral>
            </td>
            <td width="34%">
                <SandlerChart:ChartLiteral ID="NewClientsByProductTypeMonth" runat="server" Width="100%"
                    Height="250">
                </SandlerChart:ChartLiteral>
            </td>
            <td width="33%">
                <SandlerChart:ChartLiteral ID="NewClientQuantityAverageContractPriceByMonth" runat="server"
                    Width="100%" Height="250">
                </SandlerChart:ChartLiteral>
            </td>
        </tr>
        <tr>
            <td width="33%">
                <SandlerChart:ChartLiteral ID="ClassHeadcountByCourseIndustryMonth" runat="server"
                    Width="100%" Height="250">
                </SandlerChart:ChartLiteral>
            </td>
            <td width="33%">
                <SandlerChart:ChartLiteral ID="AverageLengthTimeActiveClientsByIndustry" runat="server"
                    Width="100%" Height="250">
                </SandlerChart:ChartLiteral>
            </td>
            <td width="34%">
                <SandlerChart:ChartLiteral ID="ActualDollarsBookedComparisonGoal" runat="server"
                    Width="100%" Height="250">
                </SandlerChart:ChartLiteral>
            </td>
        </tr>
    </table>
    
</asp:Content>
