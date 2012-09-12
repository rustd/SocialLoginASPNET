<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="IntegrateSocialLogin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>          
            <asp:LoginView ID="LoginView1" runat="server" ViewStateMode="Disabled">
                <AnonymousTemplate>
                    <ul>
                        No One is Logged In
                    </ul>
                </AnonymousTemplate>
                <LoggedInTemplate>
                    <p>
                        Hello, 
                                    <asp:LoginName ID="LoginName1" runat="server" />
                        </a>!
                                <asp:LoginStatus ID="LoginStatus1" runat="server" 
                                    LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/" />
                    </p>
                </LoggedInTemplate>
            </asp:LoginView>
            <asp:ModelErrorMessage ID="ModelErrorMessage1" runat="server" ModelStateKey="Provider" CssClass="field-validation-error" />   
         Following is a list of providers you can login by <br />
         <asp:ListView runat="server" ID="providerDetails" ItemType="Microsoft.AspNet.Membership.OpenAuth.ProviderDetails"
             SelectMethod="GetProviderNames" ViewStateMode="Disabled">
             <ItemTemplate>
                 <button type="submit" name="provider" value="<%#: Item.ProviderName %>"
                     title="Log in using your <%#: Item.ProviderDisplayName %> account.">
                     <%#: Item.ProviderDisplayName %>
                 </button>
             </ItemTemplate>
             <EmptyDataTemplate>
                 <p>There are no external authentication services configured. </p>

             </EmptyDataTemplate>
         </asp:ListView>


        </div>
    </form>
</body>
</html>
