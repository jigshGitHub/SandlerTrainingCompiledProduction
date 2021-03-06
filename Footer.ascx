﻿<%@ control language="C#" autoeventwireup="true" inherits="Footer, App_Web_jdctjd1b" %>
<table width="100%">
    <tr>
        <td align="right" valign="top" style="width: 20%">
            Powered by <a style="color: White" href="http://www.minedsystems.com" target="_blank">
                Mined Systems, Inc.</a> ®
        </td>
        <td align="left" valign="top" style="width: 5%">
            <img src="<%= Page.ResolveClientUrl("~/Images/MSIPieChart.png")%>" />
        </td>
        <td align="center" style="width: 15%">
            <asp:HyperLink ID="HyperLink2" ForeColor="White" runat="server" Target="_blank" NavigateUrl="~/UserDocuments/MSIPrivacyPolicy.pdf">Privacy Policy</asp:HyperLink>
        </td>
        <td align="center" style="width: 20%">
            <asp:HyperLink ID="HyperLink1" ForeColor="White" Target="_blank" runat="server" NavigateUrl="~/UserDocuments/MSIMasterSubscriptionAgreement.pdf">Master Subscription Agreement</asp:HyperLink>
        </td>
        <td align="right" style="width: 40%">
            Copyright© 2011-2012 Mined Systems Metrics Intelligence. All rights reserved.
        </td>
    </tr>
</table>
