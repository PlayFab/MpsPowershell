namespace Sample.API
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

            if (string.IsNullOrEmpty(titleId) || string.IsNullOrEmpty(entityToken) || string.IsNullOrEmpty(playFabApiHostName)) 
            {
                throw new InvalidOperationException("Missing authentication. Call 'Set-TitleEntityToken' before making this request.");
            }

            // replace the TitleId in the uri
            request.RequestUri = new System.Uri(request.RequestUri.AbsoluteUri.Replace("titleid", titleId));

            // replace the hostname in the uri
            request.RequestUri = new System.Uri(request.RequestUri.AbsoluteUri.Replace("playfabapi.com", playFabApiHostName));

            // add the X-EntityToken header
            request.Headers.Add("X-EntityToken", entityToken);

            // let the request go on.
            return await next.SendAsync(request, callback);
        }
    }
}