using Azure;
using Azure.Storage.Blobs.Models;
using Azure.Storage.Blobs.Specialized;
using System;
using System.IO;
using System.Management.Automation;

namespace CustomPsModule
{
    [Cmdlet(VerbsCommunications.Send, "FileToBlobSasUri")]
    [OutputType(typeof(Response<BlobContentInfo>))]
    public class SendFileToBlobSasUriCmdlet : Cmdlet
    {
        [Parameter(Mandatory = true)]
        public string FilePath { get; set; }

        [Parameter(Mandatory = true)]
        public string AssetUploadUrl { get; set; }

        protected override void ProcessRecord()
        {
            var blobClient = new BlockBlobClient(new Uri(AssetUploadUrl));
            using (FileStream file = File.OpenRead(FilePath)) {
                Response<BlobContentInfo> response = blobClient.Upload(file);
                WriteObject(response);
            }
        }
    }
}
