namespace PlayFab.Multiplayer
{
    using Runtime;
    using System;
    using System.Collections.Generic;
    using System.Net.Http;
    using System.Threading;
    using System.Threading.Tasks;


    /// <summary>A class that contains the module-common code and data.</summary>
    /// <notes>
    /// This class is where you can add things to modify the module.
    /// </notes>
    public partial class Module
    {
        partial void CustomInit()
        {
            this._pipeline.Append(AddEntityTokenAuth);
            this._pipelineWithProxy.Append(AddEntityTokenAuth);
        }

        protected async Task<HttpResponseMessage> AddEntityTokenAuth(HttpRequestMessage request, IEventListener callback, ISendAsync next)
        {
            string titleId = System.Environment.GetEnvironmentVariable("TitleId");
            string entityToken = System.Environment.GetEnvironmentVariable("EntityToken");
            string playFabApiHostName = System.Environment.GetEnvironmentVariable("PlayFabApiHostName");
            string pfDebug = System.Environment.GetEnvironmentVariable("PF_DEBUG");
            bool shouldOutputDebug = string.Equals(pfDebug, "true", StringComparison.OrdinalIgnoreCase);

            if (string.IsNullOrEmpty(titleId) || string.IsNullOrEmpty(entityToken) || string.IsNullOrEmpty(playFabApiHostName)) 
            {
                throw new InvalidOperationException("Missing authentication. Call 'Set-PfTitle' before making this request.");
            }

            // replace the TitleId in the uri
            request.RequestUri = new System.Uri(request.RequestUri.AbsoluteUri.Replace("titleid", titleId));

            // replace the hostname in the uri
            request.RequestUri = new System.Uri(request.RequestUri.AbsoluteUri.Replace("playfabapi.com", playFabApiHostName));

            // add the X-EntityToken header
            request.Headers.Add("X-EntityToken", entityToken);

            // Apparently the body gets disposed after being sent when running in Windows Powershell (but doesn't get
            // disposed in Powershell Core) so we store it now
            string requestContent = await request.Content.ReadAsStringAsync();

            // let the request go on.
            HttpResponseMessage response = await next.SendAsync(request, callback);

            if (shouldOutputDebug || !response.IsSuccessStatusCode) {
                Console.ForegroundColor = ConsoleColor.DarkGray;
                
                Console.Error.WriteLine($"{request.Method} {request.RequestUri}");
                Console.Error.WriteLine();
                foreach (KeyValuePair<string, IEnumerable<string>> header in request.Headers) {
                    string headerValue = shouldOutputDebug ? string.Join(",", header.Value) : "****";
                    Console.Error.WriteLine($"{header.Key}: {headerValue}");
                }
                Console.Error.WriteLine();
                Console.Error.WriteLine(requestContent);

                Console.Error.WriteLine();
                Console.Error.WriteLine();
                foreach (KeyValuePair<string, IEnumerable<string>> header in response.Headers) {
                    string headerValue = shouldOutputDebug ? string.Join(",", header.Value) : "****";
                    Console.Error.WriteLine($"{header.Key}: {headerValue}");
                }
                Console.Error.WriteLine();
                Console.Error.WriteLine(await response.Content.ReadAsStringAsync());

                Console.ResetColor();
            }

            return response;
        }
    }
}