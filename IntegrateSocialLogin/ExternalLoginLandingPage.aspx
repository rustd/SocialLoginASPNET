<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExternalLoginLandingPage.aspx.cs" Inherits="IntegrateSocialLogin.ExternalLoginLandingPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <hgroup class="title">
        <h1>Register with your <%: ProviderDisplayName %> account</h1>
        <h2><%: ProviderUserName %>.</h2>
    </hgroup>    
    <asp:ModelErrorMessage ID="ModelErrorMessage1" runat="server" ModelStateKey="Provider" CssClass="field-validation-error" />   
    <asp:PlaceHolder runat="server" ID="userNameForm">
        <fieldset>
            <legend>Association Form</legend>
            <p>
                You've authenticated with <strong><%: ProviderDisplayName %></strong> as
                <strong><%: ProviderUserName %></strong>. Please enter a user name below for the current site
                and click the Log in button.
            </p>
            <ol>
                <li class="email">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="userName">User name</asp:Label>
                    <asp:TextBox runat="server" ID="userName" />                                   
                    <asp:ModelErrorMessage ID="ModelErrorMessage2" runat="server" ModelStateKey="UserName" CssClass="field-validation-error" />                    
                </li>
            </ol>
            <asp:Button ID="Button1" runat="server" Text="Log in" ValidationGroup="NewUser" OnClick="logIn_Click" />
            <asp:Button ID="Button2" runat="server" Text="Cancel" CausesValidation="false" OnClick="cancel_Click" />
        </fieldset>
    </asp:PlaceHolder>
    </form>
</body>
</html>
