using Microsoft.AspNet.Membership.OpenAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntegrateSocialLogin
{
    public partial class Default : System.Web.UI.Page
    {
        public string ReturnUrl { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //Make a request to the OAuth provider
                var provider = Request.Form["provider"];
                if (provider == null)
                {
                    return;
                }

                var redirectUrl = "~/ExternalLoginLandingPage.aspx";
                if (!String.IsNullOrEmpty(ReturnUrl))
                {
                    var resolvedReturnUrl = ResolveUrl(ReturnUrl);
                    redirectUrl += "?ReturnUrl=" + HttpUtility.UrlEncode(resolvedReturnUrl);
                }

                OpenAuth.RequestAuthentication(provider, redirectUrl);
            }        
        }
        
        public IEnumerable<ProviderDetails> GetProviderNames()
        {
            return OpenAuth.AuthenticationClients.GetAll();
        }
        
        
    }
}